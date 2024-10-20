package controller;

import dao.AccountsDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Accounts;

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
        String avatar = request.getParameter("avatar");
        String phone_number = request.getParameter("phone_number");
        String password = request.getParameter("password");
        String account_id = request.getParameter("accountId");

        AccountsDAO adb = new AccountsDAO();
        Accounts username_exist = null;
        Accounts email_exist = null;

        if (!oldUsername.equals(username)) {
            username_exist = adb.getAccountByUserName(username);
        }

        if (!oldEmail.equals(email)) {
            email_exist = adb.getUserEmail(email);
        }

        if ((username_exist != null && !oldUsername.equals(username)) || (email_exist != null && !oldEmail.equals(email))) {
            Accounts old = adb.getAccountByUserName(oldUsername);
            request.setAttribute("user", old);
            request.setAttribute("error", "Username hoặc email đã tồn tại");
            request.getRequestDispatcher("chinhsuaprofile.jsp").forward(request, response);
        } else {
            try {
                adb.updateUser(username, password, displayname, address, description, email, phone_number, avatar, account_id);
            } catch (Exception e) {
                e.printStackTrace();
            }
            response.sendRedirect("detail?username=" + username);
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet for editing user profile information";
    }
}
