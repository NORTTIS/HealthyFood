package controller;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Bắt đầu phiên làm việc
        HttpSession session = request.getSession();
        
        // Lấy thông tin mật khẩu từ yêu cầu
        String newPassword = request.getParameter("password");
        String confPassword = request.getParameter("confPassword");
        RequestDispatcher dispatcher = null;

        // Kiểm tra xem mật khẩu mới và xác nhận có khớp không
        if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {
            Connection con = null;
            PreparedStatement pst = null;
            try {
                // Tải driver JDBC cho SQL Server
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                // Thiết lập kết nối tới cơ sở dữ liệu SQL Server
                String url = "jdbc:sqlserver://localhost:1433;databaseName=HealthyFood"; // Địa chỉ kết nối
                con = DriverManager.getConnection(url, "your_username", "your_password"); // Thay thế username và password

                // Chuẩn bị câu lệnh SQL
                pst = con.prepareStatement("UPDATE users SET upwd = ? WHERE uemail = ?");
                pst.setString(1, newPassword); // Cập nhật mật khẩu mới
                pst.setString(2, (String) session.getAttribute("email")); // Sử dụng email từ phiên làm việc

                // Thực thi câu lệnh cập nhật
                int rowCount = pst.executeUpdate();
                if (rowCount > 0) {
                    request.setAttribute("status", "resetSuccess"); // Cập nhật thành công
                } else {
                    request.setAttribute("status", "resetFailed"); // Cập nhật không thành công
                }
            } catch (Exception e) {
                e.printStackTrace(); // In ra lỗi
                request.setAttribute("status", "resetFailed"); // Cập nhật không thành công
            } finally {
                // Đóng tài nguyên
                try {
                    if (pst != null) pst.close(); // Đóng PreparedStatement
                    if (con != null) con.close(); // Đóng Connection
                } catch (Exception e) {
                    e.printStackTrace(); // In ra lỗi
                }
            }

            // Chuyển hướng đến trang login
            dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        } else {
            // Xử lý trường hợp mật khẩu không khớp
            request.setAttribute("status", "passwordsDoNotMatch");
            dispatcher = request.getRequestDispatcher("newPassword.jsp"); // Quay lại trang nhập mật khẩu mới
            dispatcher.forward(request, response);
        }
    }
}
