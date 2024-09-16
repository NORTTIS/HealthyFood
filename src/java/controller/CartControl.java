/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.LineItem;
import model.Products;

/**
 *
 * @author Norttie
 */
public class CartControl extends HttpServlet {

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
            out.println("<title>Servlet CartControl</title>");
            out.println("</head>");
            out.println("<body>");
//            for (LineItem item : cart.getItems()) {
//               out.println("<h1> " + item.getProduct().toString() + "</h1>");
//
//            }
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
        String action = request.getParameter("ac");
        String productid = request.getParameter("productid");
        Products prod = new ProductDao().getProductsById(productid);

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }
        if (action.equals("addtocart") && prod != null) {

            LineItem lineItem = new LineItem(prod, 1);
            cart.addItem(lineItem);
            int totalprice = 0;
            int totalcal = 0;
            for (LineItem item : cart.getItems()) {
                totalprice += item.getTotal();
                totalcal += item.getTotalCal();
            }
            session.setAttribute("totalcal", totalcal);
            session.setAttribute("totalcart", totalprice);
            session.setAttribute("cart", cart);
            response.sendRedirect("home");

        }
        if (action.equals("show")) {
            
            request.getRequestDispatcher("shopping-cart.jsp").forward(request, response);
        }
        if (action.equals("del") && prod != null) {
            LineItem lineItem = new LineItem();
            for (LineItem item : cart.getItems()) {
                if (item.getProduct().getProductId() == Integer.parseInt(productid)) {
                    lineItem = item;
                }
            }
            cart.getItems().remove(lineItem);
            session.setAttribute("totalcal", 0);
            session.setAttribute("totalcart", 0);
            response.sendRedirect("cart?ac=show");
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
        String action = request.getParameter("ac");
        String productid = request.getParameter("productid");
        HttpSession session = request.getSession();

        if (action.equals("change")) {
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }
            Products prod = new ProductDao().getProductsById(productid);
            if (prod.getQuantityInStock() < quantity) {
                request.setAttribute("alert", "Sorry that the item is already in the largest quantity");

            } else {
                for (LineItem item : cart.getItems()) {
                    if (item.getProduct().getProductId() == Integer.parseInt(productid)) {
                        item.setQuantity(quantity);
                    }
                }

            }
            int totalprice = 0;
            int totalcal = 0;
            for (LineItem item : cart.getItems()) {
                totalprice += item.getTotal();
                totalcal += item.getTotalCal();
            }
            session.setAttribute("totalcal", totalcal);
            session.setAttribute("totalcart", totalprice);
            session.setAttribute("totalcart", totalprice);
            request.getRequestDispatcher("shopping-cart.jsp").forward(request, response);
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
