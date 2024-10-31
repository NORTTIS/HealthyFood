package controller;

import dao.AccountsDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Accounts;

@WebServlet(name = "Signup", urlPatterns = {"/signup"})
public class Signup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String comfirmpassword = request.getParameter("comfirmpassword");

        try {
            boolean isValidForm = true;

            // Kiểm tra tên người dùng
            boolean isNotValidUsername = !checkUsername(userName);
            Accounts acc = new AccountsDAO().getAccountByUserName(userName);
            if (isNotValidUsername) {
                request.setAttribute("messU", "Username must have at least 5 characters");
                isValidForm = false;
            }
            if (acc != null) {
                request.setAttribute("messU", "User already exists");
                isValidForm = false;
            }

            // Kiểm tra mật khẩu
            boolean isNotValidPassword = !checkPassword(password);
            if (isNotValidPassword) {
                request.setAttribute("messP", "Password must have at least 6 characters, "
                        + "including uppercase letters, lowercase letters, numbers, and special characters.");
                isValidForm = false;
            }

            // Kiểm tra email
            Accounts accByEmail = new AccountsDAO().getAccountByEmail(email);
            if (accByEmail != null) {
                request.setAttribute("messEmail", "Email already exists");
                isValidForm = false;
            }

            // Kiểm tra xác nhận mật khẩu
            if (!password.equals(comfirmpassword)) {
                request.setAttribute("messCp", "Passwords do not match");
                isValidForm = false;
            }

            // Nếu có lỗi, quay lại trang signup.jsp
            if (!isValidForm) {
                request.setAttribute("username", userName);
                request.setAttribute("pass", password);
                request.setAttribute("cpass", comfirmpassword);
                request.setAttribute("email", email);
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            } else {
                // Tạo tài khoản mới
                new AccountsDAO().createAccount(userName, password, userName, email, "Customer");
                response.sendRedirect("login");
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    private boolean checkPassword(String password) {
        if (password.length() < 6) {
            return false; // Mật khẩu phải có ít nhất 6 ký tự
        }

        boolean hasUpperCase = false;
        boolean hasLowerCase = false;
        boolean hasDigit = false;
        boolean hasSpecialChar = false;
        String specialCharacters = "!@#$%^&*()-+";

        for (char c : password.toCharArray()) {
            if (Character.isUpperCase(c)) {
                hasUpperCase = true;
            } else if (Character.isLowerCase(c)) {
                hasLowerCase = true;
            } else if (Character.isDigit(c)) {
                hasDigit = true;
            } else if (specialCharacters.contains(String.valueOf(c))) {
                hasSpecialChar = true;
            }
        }

        return hasUpperCase && hasLowerCase && hasDigit && hasSpecialChar;
    }

    private boolean checkUsername(String username) {
        return username != null && username.length() >= 5;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
