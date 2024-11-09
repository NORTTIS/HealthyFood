/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.ArrayList;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import model.Category;

import model.Products;

/**
 *
 * @author Norttie
 */
@WebServlet(name = "ShopController", urlPatterns = {"/shop"})
public class ShopController extends HttpServlet {

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
            out.println("<title>Servlet ShopController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ShopController at " + request.getContextPath() + "</h1>");
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

        ProductDao dao = new ProductDao();

        // Lấy tất cả danh mục
        List<Category> listC = dao.getAllCategory();
        request.setAttribute("listC", listC);
        Map<Integer, String> cates = dao.getAllProductCategory();

        // Lấy các tham số từ request
        String categoryId = request.getParameter("category");
        String sortType = request.getParameter("sortType");
        request.setAttribute("tag", categoryId);
        request.setAttribute("sortType", sortType);
        String fromPrice = request.getParameter("fromPrice");
        String toPrice = request.getParameter("toPrice");
        int currentPage = 1;
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            currentPage = Integer.parseInt(pageParam);
        }

        // Khởi tạo danh sách sản phẩm
        List<Products> listP;

        // Lọc theo danh mục nếu có categoryId
        if (categoryId != null) {
            listP = dao.getProductsByCateId(categoryId);
        } else if (fromPrice != null && toPrice != null) { // Lọc theo khoảng giá nếu có fromPrice và toPrice
            listP = dao.getProductsByPrice(fromPrice, toPrice);
        } else { // Lấy tất cả sản phẩm nếu không có tham số nào
            listP = dao.getAllProduct();
        }

        // Sắp xếp theo giá hoặc calo nếu có sortType
        if (sortType != null) {
            if (sortType.equals("priceAsc") || sortType.equals("priceDesc")) {
                listP = dao.sortProductsByPrice(sortType.equals("priceAsc") ? "asc" : "desc");
            } else if (sortType.equals("caloriesAsc") || sortType.equals("caloriesDesc")) {
                listP = dao.sortProductsByCalories(sortType.equals("caloriesAsc") ? "asc" : "desc");
            }
        }

        // Lấy tổng số trang
        int totalPages = dao.getTotalPage(listP); // Sử dụng hàm getTotalPage

        // Phân trang danh sách sản phẩm
        int pageSize = 8; // Số sản phẩm mỗi trang
        int totalProducts = listP.size();
        listP = listP.stream()
                .skip((currentPage - 1) * pageSize)
                .limit(pageSize)
                .collect(Collectors.toList());

        // Thiết lập thuộc tính cho JSP
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("listP", listP);
        request.setAttribute("cates", cates);
        // Chuyển tiếp tới trang category-grid.jsp
        request.getRequestDispatcher("category-grid.jsp").forward(request, response);
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
        processRequest(request, response);
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
