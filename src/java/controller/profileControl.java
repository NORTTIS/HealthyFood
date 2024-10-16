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
@WebServlet(name = "profileControl", urlPatterns = {"/cus_profile"})
public class profileControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Chuyển hướng tới trang cus_profile.jsp khi người dùng truy cập GET
        request.getRequestDispatcher("cus_profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy thông tin từ form được gửi qua POST
        String id = request.getParameter("id");
        String displayname = request.getParameter("displayname");
        String description = request.getParameter("desc"); // Đồng bộ tên tham số với form HTML
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String filename = "";  // Biến để lưu tên file avatar nếu có

        try {
            // Xử lý việc tải lên file avatar (nếu có)
            Part part = request.getPart("file");
            if (part != null && part.getSize() > 0) {
                // Lấy đường dẫn thư mục gốc của ứng dụng
                String appPath = request.getServletContext().getRealPath("/");
                // Đường dẫn lưu file (ví dụ: /uploads)
                String path = "uploads"; // Thư mục lưu file, có thể thay đổi tùy ý
                Path uploadDir = Paths.get(appPath).resolve(path);

                // Tạo thư mục nếu chưa tồn tại
                if (!Files.exists(uploadDir)) {
                    Files.createDirectories(uploadDir);
                }

                // Lấy tên file và đường dẫn file đầy đủ
                filename = "id" + id + "_" + Path.of(part.getSubmittedFileName()).getFileName().toString();
                Path filePath = uploadDir.resolve(filename);

                // Ghi file (ghi đè nếu file đã tồn tại)
                Files.copy(part.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
            }

            // Lấy tài khoản hiện tại từ session
            HttpSession session = request.getSession();
            User acc = (User) session.getAttribute("acc");

            // Nếu không có file mới, giữ nguyên avatar cũ
            if (filename.isEmpty()) {
                filename = acc.getAvatar();  // Sử dụng avatar cũ nếu không có file mới
            }

            // Cập nhật thông tin tài khoản người dùng
            AccountsDAO dao = new AccountsDAO();
            dao.updateUser(id, displayname, filename, description, address);
            Accounts account = dao.getAccountByid(id);  // Lấy lại thông tin tài khoản sau khi cập nhật

            // Cập nhật lại session với thông tin mới
            session.setAttribute("acc", account);

            // Chuyển hướng lại trang profile sau khi cập nhật thành công
            request.getRequestDispatcher("cus_profile.jsp").forward(request, response);

        } catch (IOException | ServletException e) {
            // Xử lý lỗi nếu có vấn đề xảy ra trong quá trình xử lý file hoặc cập nhật dữ liệu
            e.printStackTrace();
            request.setAttribute("errorMessage", "Cập nhật thông tin không thành công, vui lòng thử lại.");
            request.getRequestDispatcher("cus_profile.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Profile Control Servlet";
    }
}
