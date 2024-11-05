/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AccountsDAO;
import dao.BlogDao;
import dao.NutriDAO;

import dao.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.Accounts;
import model.Blog;
import model.Cart;
import model.Menu;

import model.Products;
import model.Reviews;

/**
 *
 * @author Norttie
 */
public class HomeControl extends HttpServlet {

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

            out.println("<title>Servlet HomeControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeControl at " + request.getContextPath() + "</h1>");

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
        BlogDao blogDao = new BlogDao();
        HttpSession session = request.getSession();
        String bmirange = "1";
        if (session.getAttribute("bmiR") != null) {
            bmirange = blogDao.getBMICategory(session.getAttribute("bmiR") + "");
        }
        List<Blog> bListByPageIndex = blogDao.getAllBlogs("", "", "", bmirange);

        AccountsDAO accDao = new AccountsDAO();
        List<Accounts> accList = new ArrayList<>();
        Accounts acc = (Accounts) session.getAttribute("acc");
        Cart cart = new Cart();
        if (acc != null) {
            String accountId = acc.getAccount_id() + "";
            cart = new ProductDao().getWishCartByAccountId(accountId);
        }
        if (bListByPageIndex != null) {
            for (Blog blog : bListByPageIndex) {
                accList.add(accDao.getAccountByid(blog.getAuthor()));
            }
            session.setAttribute("totalWish", cart.getCount());
            request.setAttribute("accList", accList);
            request.setAttribute("bList", bListByPageIndex);
        }

        ProductDao prodDao = new ProductDao();
//        lProduct menu combo
        List<Products> lProduct = prodDao.getAllProduct();
        Map<Integer, String> cates = prodDao.getAllProductCategory();
        for (Products products : lProduct) {
            int star5 = 0;
            int star4 = 0;
            int star3 = 0;
            int star2 = 0;
            int star1 = 0;
            double starAverage = 0;
             List<Reviews> listTotal = prodDao.getReviewByProdId(0, products.getProductId()+"");
             int  totalReview = listTotal.size();
             star5 = prodDao.getReviewByProdId(5, products.getProductId()+"").size();
                star4 = prodDao.getReviewByProdId(4, products.getProductId()+"").size();
                star3 = prodDao.getReviewByProdId(3, products.getProductId()+"").size();
                star2 = prodDao.getReviewByProdId(2, products.getProductId()+"").size();
                star1 = prodDao.getReviewByProdId(1, products.getProductId()+"").size();
                starAverage = 1.0*(star5 * 5 + star4 * 4 + star3 * 3 + star2 * 2 + star1 * 1) / totalReview;
                starAverage = Math.round(starAverage * 10.0) / 10.0;
                products.setRate(starAverage);
        }

        request.setAttribute("lProd", lProduct);
        request.setAttribute("cates", cates);
        NutriDAO nutriDao = new NutriDAO();
        Map<String, Map<String, List<Menu>>> mList = nutriDao.getMenuByType(Integer.parseInt(bmirange));
        if (!mList.isEmpty()) {
            Map<String, Map<String, List<Products>>> productMap = new HashMap<>();
            for (String key : mList.keySet()) {
                Map<String, List<Menu>> innerMap = mList.get(key);
                Map<String, List<Products>> innerProductMap = new HashMap<>();
                for (String innerKey : innerMap.keySet()) {
                    List<Products> products = new ArrayList<>();
                    for (Menu menu : innerMap.get(innerKey)) {
                        products.addAll(prodDao.getMenuProduct(menu.getMenu_id())); // Lấy sản phẩm từ từng menu
                    }
                    innerProductMap.put(innerKey, products);
                }
                productMap.put(key, innerProductMap);
            }
            request.setAttribute("menuList", productMap);
//            request.setAttribute("menuList", mList);
            
        } else {
            request.setAttribute("error", "Sorry for the inconvenient are on the ways to prepared more menu for you !!!");
        }

        request.getRequestDispatcher("index.jsp").forward(request, response);
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
