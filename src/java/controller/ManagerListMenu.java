/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.NutriDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;
import model.Accounts;
import model.Menu;

/**
 *
 * @author Gosu
 */
@WebServlet(name="ManagerListMenu", urlPatterns={"/listMenu"})
public class ManagerListMenu extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ManagerListMenu</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ManagerListMenu at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        //lấy dữ liệu tài khoản đăng nhập
        Accounts ac = (Accounts) session.getAttribute("acc");
        if (ac == null) {
            response.sendRedirect("login.jsp");
        } else {
            String search = request.getParameter("search");
            NutriDAO ndb = new NutriDAO();
            if (search == null || search.equals("All")) {
                //lấy id của nutri đăng nhập để có thể tìm menu tạo bởi nutri đó
                Map<String, Map<String, List<Menu>>> mList = ndb.seeAllMenu();
                request.setAttribute("historyList", mList);
            } else {
                Map<String, Map<String, List<Menu>>> mList = ndb.allMenuStatus(search);
                request.setAttribute("historyList", mList);
            }
            request.getRequestDispatcher("managerMenuList.jsp").forward(request, response);
        }
    }  

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}