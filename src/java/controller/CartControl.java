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
        if (action.equals("show")) {
            request.getRequestDispatcher("shopping-cart.jsp").forward(request, response);
        }
        Products prod = new ProductDao().getProductsById(productid);

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }
        if (action.equals("addtocart") && prod != null) {

            LineItem lineItem = new LineItem(prod, 1);
            cart.addItem(lineItem);
            double totalprice = 0;
            double totalcal = 0;
            int totalitem = 0;
            for (LineItem item : cart.getItems()) {
                totalprice += item.getTotal();
                totalcal += item.getTotalCal();
                totalitem++;
            }
            session.setAttribute("totalcal", totalcal);
            session.setAttribute("totalcart", totalprice);
            session.setAttribute("totalitem", totalitem);
            session.setAttribute("cart", cart);

            String previousURL = request.getHeader("Referer");
            String currentURL = request.getRequestURL().toString();

// Kiểm tra nếu previousURL không null và không trùng với currentURL
            if (previousURL != null && !previousURL.equals(currentURL)) {
                // Kiểm tra nếu previousURL chứa từ khóa "cart"
                if (previousURL.contains("cart")) {
                    // Chuyển hướng đến trang cart?ac=show
                    response.sendRedirect("cart?ac=show");
                } else {
                    // Chuyển hướng lại trang trước đó nếu không chứa "cart"
                    response.sendRedirect(previousURL);
                }
            } else {
                // Nếu không có "Referer" hoặc "Referer" trùng với URL hiện tại, chuyển đến trang mặc định
                response.sendRedirect("home");
            }

        }

        if (action.equals("del") && prod != null) {
            LineItem lineItem = new LineItem();
            for (LineItem item : cart.getItems()) {
                if (item.getProduct().getProductId() == Integer.parseInt(productid)) {
                    lineItem = item;
                }
            }
            cart.getItems().remove(lineItem);
            double totalprice = 0;
            double totalcal = 0;
            int totalitem = 0;
            for (LineItem item : cart.getItems()) {
                totalprice += item.getTotal();
                totalcal += item.getTotalCal();
                totalitem++;
            }
            session.setAttribute("totalcal", totalcal);
            session.setAttribute("totalcart", totalprice);
            session.setAttribute("totalitem", totalitem);
            session.setAttribute("cart", cart);
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
        String[] productid = request.getParameterValues("productid[]");
        String[] product_qty = request.getParameterValues("product_qty[]");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }
        String outStock = "";
        try{
            if (action.equals("upd")) {
            for (int i = 0; i < productid.length; i++) {
                int productId = Integer.parseInt(productid[i]);
                int quantity = Integer.parseInt(product_qty[i]);
                for (LineItem item : cart.getItems()) {
                    Products prod = new ProductDao().getProductsById(productid[i]);
                    if (prod.getQuantityInStock() < quantity) {
                        outStock += prod.getName() + ", ";
                    } else {
                        if (item.getProduct().getProductId() == productId) {
                            item.setQuantity(quantity);
                        }
                    }
                }

                double totalprice = 0;
                double totalcal = 0;
                for (LineItem item : cart.getItems()) {
                    totalprice += item.getTotal();
                    totalcal += item.getTotalCal();
                }
                request.setAttribute("alert", "Sorry that the" + outStock + "is already in the largest quantity");
                session.setAttribute("totalcal", totalcal);
                session.setAttribute("totalcart", totalprice);
                session.setAttribute("cart", cart);
            }

        }
        }catch(Exception e){
            
        }
        
        request.getRequestDispatcher("shopping-cart.jsp").forward(request, response);

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
