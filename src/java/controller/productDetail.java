/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AccountsDAO;
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
import model.Accounts;
import model.Products;
import model.Reviews;

/**
 *
 * @author Norttie
 */
@WebServlet(name = "productDetail", urlPatterns = {"/productDetail"})
public class productDetail extends HttpServlet {

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
            out.println("<title>Servlet productDetail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet productDetail at " + request.getContextPath() + "</h1>");
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
        String ac = request.getParameter("ac");
        String productId = request.getParameter("productId");
        String page = request.getParameter("page");
        String star = request.getParameter("star");

        int indexPage = 1;
        int totalPage = 3;

        ProductDao prodDao = new ProductDao();
        AccountsDAO accDao = new AccountsDAO();
        int totalReview = 0;
        int star5 = 0;
        int star4 = 0;
        int star3 = 0;
        int star2 = 0;
        int star1 = 0;
        double starAverage = 0;
        int starNum = 0;
        if (page != null && !page.equals("")) {
            indexPage = Integer.parseInt(page);
        }
        if (star != null && !star.equals("")) {
            starNum = Integer.parseInt(star);
        }
        if (ac != null && ac.equals("show")) {

            Products prod = prodDao.getProductsById(productId);
            Map<Integer, String> cate = prodDao.getAllProductCategory();
            List<Reviews> listR = prodDao.getReviewByProdId(indexPage, starNum, productId);
            List<Reviews> listTotal = prodDao.getReviewByProdId(0, productId);
            List<Accounts> accList = new ArrayList<>();
            if (listR != null) {
                for (Reviews review : listR) {
                    accList.add(accDao.getAccountByid(review.getAuthor()));
                }
                totalPage = prodDao.calNumPageReview(listTotal);
                totalReview = listTotal.size();
                star5 = prodDao.getReviewByProdId(5, productId).size();
                star4 = prodDao.getReviewByProdId(4, productId).size();
                star3 = prodDao.getReviewByProdId(3, productId).size();
                star2 = prodDao.getReviewByProdId(2, productId).size();
                star1 = prodDao.getReviewByProdId(1, productId).size();
                starAverage = 1.0*(star5 * 5 + star4 * 4 + star3 * 3 + star2 * 2 + star1 * 1) / totalReview;
                request.setAttribute("star5R", star5);
                request.setAttribute("star4R", star4);
                request.setAttribute("star3R", star3);
                request.setAttribute("star2R", star2);
                request.setAttribute("star1R", star1);
                request.setAttribute("starAverage", starAverage);
                request.setAttribute("totalReview", totalReview);
                request.setAttribute("accList", accList);
                request.setAttribute("listR", listR);
                request.setAttribute("currentPage", indexPage);
                request.setAttribute("totalPages", totalPage);
                request.setAttribute("prod", prod);
                request.setAttribute("cate", cate);
            }
            request.getRequestDispatcher("productDetail.jsp").forward(request, response);
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
