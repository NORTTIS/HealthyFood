/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AccountsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Accounts;

/**
 *
 * @author Norttie
 */
@WebServlet(name = "Signup", urlPatterns = {"/signup"})
public class Signup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String comfirmpassword = request.getParameter("comfirmpassword");
        String role = request.getParameter("permission");
        try {
            boolean isValidForm = true;
            boolean isNotValidUsername = !validator.Validator.checkUsername(userName);
            boolean isNotValidPassword = !validator.Validator.checkPassWord(password);
            Accounts acc = new AccountsDAO().getAccountByUserName(userName);
            Accounts accByEmail = new  AccountsDAO().getAccountByEmail(email);
            if (isNotValidUsername) {
                request.setAttribute("messU", "Username must have at least 5 characters");
                isValidForm = false;
            }
            if (acc != null) {
                request.setAttribute("messU", "User already exists ");
                isValidForm = false;
            }
            if (isNotValidPassword) {
                request.setAttribute("messP", "Password must have at least 8 characters"
                        + "including uppercase and lowercase letters and number");
                isValidForm = false;
            }
             if(accByEmail!=null){
                 request.setAttribute("messEmail", "Email already exists");
                isValidForm = false;
            }
            if (!password.equals(comfirmpassword)) {
                request.setAttribute("messCp",
                        "passwords do not match ");
                isValidForm = false;
            }

            if (!isValidForm) {
                request.setAttribute("username", userName);
                request.setAttribute("pass", password);
                request.setAttribute("cpass", comfirmpassword);
                 request.setAttribute("email", email);
                request.getRequestDispatcher("signup.jsp").forward(request, response);

            } else {
             new AccountsDAO().createAccount(userName, password, userName, email, role);
                response.sendRedirect("login");
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
