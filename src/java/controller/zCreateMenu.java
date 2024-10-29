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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.Accounts;

/**
 *
 * @author Minh
 */
@WebServlet(name = "zCreateMenu", urlPatterns = {"/createMenu"})
public class zCreateMenu extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet zCreateMenu</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet zCreateMenu at " + request.getAttribute("lst") + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        HttpSession session = request.getSession();
        Accounts ac = (Accounts) session.getAttribute("acc");
        if (ac == null) {
            response.sendRedirect("login.jsp");
        } else {
            NutriDAO ndb = new NutriDAO();
            List<String> typeList = ndb.getTypeList();
            request.setAttribute("typeList", typeList);
            request.getRequestDispatcher("zNutriCreateMenu.jsp").forward(request, response);
        }
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
        HttpSession session = request.getSession();
        Accounts ac = (Accounts) session.getAttribute("acc");
        if (ac == null) {
            response.sendRedirect("login.jsp");
        }
        NutriDAO ndb = new NutriDAO();
        // lấy giá trị chỉ xuất hiện 1 lần
        String menuTitle = request.getParameter("menuTitle");
        String descrip = request.getParameter("description");
        String type = request.getParameter("type");
        String lst = request.getParameter("lstMeal");
        String meal = request.getParameter("getMeals");
        Map<String, String> menuMap = new HashMap<>();
//        request.setAttribute("lst", lst);
//        processRequest(request, response);
        if (lst.isEmpty()) {
            List<String> typeList = ndb.getTypeList();
            request.setAttribute("typeList", typeList);
            request.setAttribute("createMenuCaution", "Failed to create new Menu");
            System.out.println("lỗi này");
            request.getRequestDispatcher("zNutriCreateMenu.jsp").forward(request, response);
        } else {
            String[] mealsName = lst.split("-");
            String[] getMeals = meal.split("-");
            for(int i =0; i < mealsName.length; i++){
                menuMap.put(mealsName[i], getMeals[i]);
            }
            int nutriId = Integer.parseInt(request.getParameter("nutriId"));
            int type_id = 0;
            //switch với mỗi giá trị type sẽ trả về 1 type_id
            switch (type) {
                case "Underweight":
                    type_id = 1;
                case "Overweight":
                    type_id = 2;
            }
            for (String meals : mealsName) {
                String menuValues = "menuName" + meals;
                String caloValues = "calories" + meals;
                String[] menu_detail = request.getParameterValues(menuValues);
                String[] calo = request.getParameterValues(caloValues);
                if (menu_detail != null && calo != null) {
                    for (int i = 0; i < menu_detail.length; i++) {
                        float caloFloat = Float.parseFloat(calo[i]);
                        ndb.insertNewMenu(menuTitle, type_id, menuMap.get(meals), descrip, nutriId, menu_detail[i], caloFloat);
                    }
                }
            }
            request.getRequestDispatcher("menuList").forward(request, response);
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
