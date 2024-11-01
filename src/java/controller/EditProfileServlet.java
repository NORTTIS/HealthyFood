package controller;

import dao.AccountsDAO;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.nio.file.StandardCopyOption;
import model.Accounts;

@MultipartConfig
public class EditProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        AccountsDAO adb = new AccountsDAO();
        Accounts user = adb.getAccountByUserName(username);
        request.setAttribute("user", user);
        request.getRequestDispatcher("chinhsuaprofile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String oldUsername = request.getParameter("oldusername");
        String oldEmail = request.getParameter("oldemail");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String displayname = request.getParameter("displayname");
        String address = request.getParameter("address");
        String description = request.getParameter("description");
        String avatar = request.getParameter("file"); // Existing avatar path
        String phone_number = request.getParameter("phone_number");
        String password = request.getParameter("password");
        String account_id = request.getParameter("accountId");

        AccountsDAO adb = new AccountsDAO();
        Accounts username_exist = null;
        Accounts email_exist = null;
        // Check for username and email uniqueness
        if (!oldUsername.equals(username)) {
            username_exist = adb.getAccountByUserName(username);
        }

        if (!oldEmail.equals(email)) {
            email_exist = adb.getUserEmail(email);
        }

        // Handle potential conflicts with username or email
        if ((username_exist != null && !oldUsername.equals(username))
                || (email_exist != null && !oldEmail.equals(email))) {
            Accounts old = adb.getAccountByUserName(oldUsername);
            request.setAttribute("user", old);
            request.setAttribute("error", "Username hoặc email đã tồn tại");
            request.getRequestDispatcher("chinhsuaprofile.jsp").forward(request, response);
            return;
        }

        // Handle file upload for avatar
        String filename = avatar; // Use existing avatar path as default
        try {
            // Lấy phần file từ request
            Part part = request.getPart("file");
            if (part != null && part.getSize() > 0) {
                // Lấy đường dẫn thư mục gốc của ứng dụng
                String appPath = request.getServletContext().getRealPath("/");
                // Đường dẫn tới thư mục mong muốn (cùng cấp với thư mục chứa servlet)
                String path = "web/assets/image";
                Path uploadDir = Paths.get(appPath).getParent().getParent().resolve(path);

                // Kiểm tra và tạo thư mục nếu chưa tồn tại
                if (!Files.exists(uploadDir)) {
                    Files.createDirectories(uploadDir);
                }

                // Lấy tên file và đường dẫn file đầy đủ
                filename = "id" + account_id + "_" + Path.of(part.getSubmittedFileName()).getFileName().toString();
                Path filePath = uploadDir.resolve(filename);

                // Kiểm tra nếu file đã tồn tại, thì ghi đè lên file đó
                if (Files.exists(filePath)) {
                    Files.copy(part.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
                } else {
                    // Nếu file chưa tồn tại, ghi file mới vào
                    part.write(filePath.toString());
                }
            } else {
                request.setAttribute("errorMessage", "Không có file nào được chọn để upload.");
            }

            Accounts acc = adb.getAccountByid(account_id);

            if (filename.isEmpty()) {
                filename = acc.getAvatar(); // Giữ avatar cũ nếu không có file mới
            }
        } catch (IOException | ServletException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error occurred during file upload.");
            request.getRequestDispatcher("chinhsuaprofile.jsp").forward(request, response);
            return;
        }

        // Attempt to update the user's information
        try {
            adb.updateUser(username, password, displayname, address, description, email, phone_number, filename, account_id);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Redirect to the detail page with updated username
        response.sendRedirect("detail?username=" + username);
    }

    @Override
    public String getServletInfo() {
        return "Servlet for editing user profile information";
    }
}
