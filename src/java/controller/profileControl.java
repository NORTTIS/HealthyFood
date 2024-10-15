package controller;

import dao.AccountsDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import model.Accounts;
import model.User;

@MultipartConfig
@WebServlet(name = "profileControl", urlPatterns = {"/profile"})
public class profileControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String displayname = request.getParameter("displayname");
        String description = request.getParameter("description"); // Sửa đúng tên tham số
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String filename = "";

        try {
            // Lấy phần file từ request
            Part part = request.getPart("file");
            if (part != null && part.getSize() > 0) {
                // Lấy đường dẫn thư mục gốc của ứng dụng
                String appPath = request.getServletContext().getRealPath("/");
                // Đường dẫn tới thư mục mong muốn (cùng cấp với thư mục chứa servlet)
                String path = "web/assets/images";
                Path uploadDir = Paths.get(appPath).getParent().getParent().resolve(path);

                // Kiểm tra và tạo thư mục nếu chưa tồn tại
                if (!Files.exists(uploadDir)) {
                    Files.createDirectories(uploadDir);
                }

                // Lấy tên file và đường dẫn file đầy đủ
                filename = "id" + id + "_" + Path.of(part.getSubmittedFileName()).getFileName().toString();
                Path filePath = uploadDir.resolve(filename);

                // In ra đường dẫn để kiểm tra
                System.out.println("Đường dẫn file: " + filePath.toString());

                // Kiểm tra nếu file đã tồn tại, thì ghi đè lên file đó
                if (Files.exists(filePath)) {
                    Files.copy(part.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
                } else {
                    part.write(filePath.toString()); // Nếu file chưa tồn tại, ghi file mới vào
                }
            }

            HttpSession session = request.getSession();
            User acc = (User) session.getAttribute("acc");

            if (filename.isEmpty()) {
                filename = acc.getAvatar(); // Nếu không có file, giữ nguyên avatar cũ
            }

            // Cập nhật thông tin người dùng
            AccountsDAO dao = new AccountsDAO();
            dao.updateUser(id, displayname, filename, description, address);
            Accounts account = dao.getAccountByid(id);
            session.setAttribute("acc", account); // Cập nhật lại session

            request.getRequestDispatcher("profile.jsp").forward(request, response);

        } catch (IOException | ServletException e) {
            // Xử lý ngoại lệ
            e.printStackTrace();
            request.setAttribute("errorMessage", "Cập nhật thông tin không thành công, vui lòng thử lại.");
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Profile Control Servlet";
    }
}
