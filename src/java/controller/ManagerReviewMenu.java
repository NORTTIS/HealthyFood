/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.NutriDAO;
import dao.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.Accounts;
import model.Menu;


@WebServlet(name = "ManagerReviewMenu", urlPatterns = {"/reviewMenu"})
public class ManagerReviewMenu extends HttpServlet {

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

            out.println("<title>Servlet ManagerReviewMenu</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ManagerReviewMenu at " + request.getContextPath() + "</h1>");
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
            Map<String, Map<String, List<Menu>>> allMenu = ndb.seeAllMenu();
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
                    request.getRequestDispatcher("managerReviewMenu.jsp").forward(request, response);
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
        String descrip = request.getParameter("description");
        //đếm số lượng dish để xóa
        int firstId = Integer.parseInt(request.getParameter("firstId"));
        int lastId = Integer.parseInt(request.getParameter("lastId"));
        System.out.println(firstId + "  " + lastId);
        if (action.equals("Reject")) {
            ndb.menuDecide(firstId, lastId, descrip, "Reject");
            response.sendRedirect("listMenu");
        }
        
        if(action.equals("Accept")){
            String totalMenuId = "";
            List<Menu> mList = new ArrayList<>();
            for(int i = firstId; i <= lastId; i++){
                Menu m = ndb.getMenuByID(i);
                if(!m.getMenu_name().equals(ndb.getMenuByID(i++).getName())){
                    mList.add(m);
                    totalMenuId += i;
                    if(i < lastId){
                        totalMenuId += "-";
                    }
                }
            }
            ndb.menuDecide(firstId, lastId, descrip, "Accept");
            ProductDao pd = new ProductDao();
            Map<Integer, String> cate = pd.getAllProductCategory();
            request.setAttribute("cate", cate);
            request.setAttribute("list", mList);
            request.setAttribute("totalMenuId", totalMenuId);
            request.getRequestDispatcher("managerSetProduct.jsp").forward(request, response);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
