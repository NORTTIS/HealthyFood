/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Nutri;

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
import model.Menu;

/**
 *
 * @author Minh
 */
@WebServlet(name = "zMenuDetail", urlPatterns = {"/viewDetail"})
public class zMenuDetail extends HttpServlet {

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
            out.println("<title>Servlet zMenuDetail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet zMenuDetail at " + request.getAttribute("lst") + "</h1>");
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
        //lấy dữ liệu tài khoản đăng nhập
        Accounts ac = (Accounts) session.getAttribute("acc");
        if (ac == null) {
            response.sendRedirect("login.jsp");
        } else {
            NutriDAO ndb = new NutriDAO();
            Map<String, Map<String, List<Menu>>> allMenu = ndb.getAllMenu(ac.getAccount_id());
            String menuTitle = request.getParameter("theMenu");
            String[] title = menuTitle.split("-");
            for (Map.Entry<String, Map<String, List<Menu>>> entry : allMenu.entrySet()) {
                if (entry.getKey().equals(menuTitle)) {
                    Map<String, List<Menu>> foundMenu = entry.getValue();
                    request.setAttribute("status", title[1]);
                    request.setAttribute("menuTitle", title[0]);
                    request.setAttribute("detailMenu", foundMenu);
                    foundMenu.entrySet().forEach(type -> {
                        List<Menu> menuList = type.getValue();
                        // Lặp qua từng đối tượng Menu trong List
                        menuList.forEach(menu -> {
                            String typeC = ndb.getTypeByTypeID(menu.getType_id());
                            request.setAttribute("typeC", typeC);
                        });
                    });
                    List<String> typeList = ndb.getTypeList();
                    request.setAttribute("typeList", typeList);
                    request.getRequestDispatcher("zNutriMenuDetail.jsp").forward(request, response);
                    return;
                }
            }
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
        String action = request.getParameter("action");
        NutriDAO ndb = new NutriDAO();
        // lấy giá trị chỉ xuất hiện 1 lần
        String menuTitle = request.getParameter("menuTitle");
        String descrip = request.getParameter("description");
        String type = request.getParameter("type");
        //đếm số lượng dish để xóa
        int firstId = Integer.parseInt(request.getParameter("firstId"));
        int lastId = Integer.parseInt(request.getParameter("lastId"));
        System.out.println(firstId + "  " + lastId);
        if (action.equals("Delete")) {
            ndb.deleteMenu(firstId, lastId);
            response.sendRedirect("menuHistory");
            return;
        }
        //lấy toàn bộ giá trị name của meals
        String lst = request.getParameter("lstMeal");
        //lấy toàn bộ giá trị nhập vào của meals
        String meal = request.getParameter("getMeals");
        System.out.println("lstMeal: " + lst); // Kiểm tra dữ liệu từ JSP
        System.out.println("getMeals: " + meal);
        Map<String, String> menuMap = new HashMap<>();
        if (lst.isEmpty()) {
            List<String> typeList = ndb.getTypeList();
            request.setAttribute("typeList", typeList);
            request.setAttribute("updateCaution", "Failed to update Menu");
            request.getRequestDispatcher("menuHistory").forward(request, response);
        } else {
            String[] mealsName = lst.split("-");
            String[] getMeals = meal.split("-");
            for (int i = 0; i < mealsName.length; i++) {
                menuMap.put(mealsName[i], getMeals[i]);
            }
            int type_id = ndb.getTypeIdByName(type);
            for (String meals : mealsName) {
                String menuValues = "menuName" + meals;
                String caloValues = "calories" + meals;
                String[] menu_detail = request.getParameterValues(menuValues);
                String[] calo = request.getParameterValues(caloValues);
                if (menu_detail != null && calo != null) {
                    System.out.println("is it here???");
                    for (int i = 0; i <= (lastId - firstId); i++) {
                        float caloFloat = Float.parseFloat(calo[i]);
                        ndb.updateMenuById(firstId, type_id, menuMap.get(meals), descrip, menu_detail[i], caloFloat, menuTitle);
                        firstId++;
                        System.out.println("somethings is wrong");
                    }
                } else {
                    request.setAttribute("updateCaution", "Failed to update Menu");
                    System.out.println("errorr");
                    processRequest(request, response);
                }
            }
            response.sendRedirect("menuHistory");
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
