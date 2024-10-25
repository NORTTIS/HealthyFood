/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AccountsDAO;
import dao.ProductDao;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import model.Accounts;

import model.Cart;
import model.GoogleAccount;

/**
 *
 * @author Norttie
 *
 */
@WebServlet(name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String code = request.getParameter("code");
        String error = request.getParameter("error");
        String ac = request.getParameter("ac");
        if (ac != null && ac.equals("logout")) {
            HttpSession session = request.getSession();
            session.invalidate();
            
        }
        // Nếu người dùng hủy ủy quyền
        if (error != null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // Kiểm tra xem có mã xác thực từ Google không
        if (code != null) {
            GoogleLogin gg = new GoogleLogin();
            String accessToken = gg.getToken(code);
            GoogleAccount googleAccount = gg.getUserInfo(accessToken);

            if (googleAccount != null) {
                // Tạo một đối tượng Accounts mới từ GoogleAccount
                Accounts accounts = new Accounts();
                accounts.setUsername(googleAccount.getName()); // Sử dụng tên thay vì email
                accounts.setRole("user"); // Gán vai trò nếu cần, có thể thay đổi theo yêu cầu

                HttpSession session = request.getSession();
                session.setAttribute("acc", accounts); // Lưu đối tượng Accounts vào session

                // Chuyển hướng người dùng đến trang home
                response.sendRedirect("home");
            } else {
                // Xử lý lỗi trong quá trình lấy thông tin người dùng

                request.setAttribute("mess", "Error during Google login");

                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            // Xử lý đăng nhập thông thường (username/password)
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            Accounts acc = new AccountsDAO().login(username, password);
            try {
                if (username != null && password != null) {
                    if (acc == null) {
                        request.setAttribute("mess", "wrong username or password1");

                    } else {
                        HttpSession session = request.getSession();
                        session.setAttribute("acc", acc);
                        if (!acc.getRole().equals("Admin")) {
                            response.sendRedirect("home");
                        } else {
                            response.sendRedirect("userlist");
                        }
                    }
                } else {
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }

            } catch (IOException e) {
                System.out.println("Error occurred while logging in");
            }
        }
    }

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ac = request.getParameter("ac");

        // Kiểm tra nếu 'ac' không phải là null và có giá trị là 'logout'
        if (ac != null && ac.equals("logout")) {
            HttpSession session = request.getSession();
            session.removeAttribute("acc");
            session.removeAttribute("mess"); // Xóa thông báo lỗi

        }
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
