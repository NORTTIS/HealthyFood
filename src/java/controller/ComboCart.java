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
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.LineItem;
import model.Products;

/**
 *
 * @author Minh
 */
@WebServlet(name = "ComboCart", urlPatterns = {"/comboCart"})
public class ComboCart extends HttpServlet {

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
            out.println("<title>Servlet ComboCart</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ComboCart at " + request.getContextPath() + "</h1>");
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
        String productid = request.getParameter("productId");
        String quantity = request.getParameter("qty");
        int qty = 1;
        if (quantity != null && !quantity.equals("")) {
            qty = Integer.parseInt(quantity);
        }
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }
        double totalprice = 0;
        double totalcal = 0;
        int totalitem = 0;
        String[] eachId = productid.split("-");
        for (String id : eachId) {
            Products prod = new ProductDao().getProductsById(id);
            LineItem lineItem = new LineItem(prod, qty);
            cart.addItem(lineItem);
        }
        for (LineItem item : cart.getItems()) {
            totalprice += item.getTotal();
            totalcal += item.getTotalCal();
            totalitem++;
        }
        session.setAttribute("totalcal", totalcal);
        session.setAttribute("totalcart", totalprice);
        session.setAttribute("totalitem", totalitem);
        session.setAttribute("cart", cart);
        PrintWriter out = response.getWriter();
        for (LineItem item : cart.getItems()) {
            out.print(item.getProduct());
        }

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
