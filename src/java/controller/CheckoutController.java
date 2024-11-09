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
import model.Accounts;
import model.Cart;
import model.DeliveryDetail;

/**
 *
 * @author Minh
 */
@WebServlet(name = "CheckoutController", urlPatterns = {"/checkout"})
public class CheckoutController extends HttpServlet {

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
            out.println("<title>Servlet CheckoutController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckoutController at " + request.getContextPath() + "</h1>");
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
        Cart cart = (Cart) session.getAttribute("cart");
        Accounts acc = (Accounts) session.getAttribute("acc");
        if (acc != null) {
            request.setAttribute("acc", acc);
        }
        request.setAttribute("cart", cart);
        request.setAttribute("totalPrice", (int) cart.getTotalPrice());
        request.setAttribute("totalCal", cart.getTotalCal());
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
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
        String fullName = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        String voucherCode = request.getParameter("voucher");
        String action = request.getParameter("ac");

        if (action != null && action.equals("cashon")) {
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            Accounts acc = (Accounts) session.getAttribute("acc");
            ProductDao prod = new ProductDao();
            DeliveryDetail deDetail = (DeliveryDetail) session.getAttribute("deDetail");

            if (deDetail != null) {
                if (acc != null) {
                    String orderId = prod.createOrder(cart, acc.getAccount_id() + "", "cashon");
                    if (orderId.equals("outofstock")) {
                        request.setAttribute("error", "It looks like a certain product is out of stock, please edit your cart!");
                        request.getRequestDispatcher("checkout").forward(request, response);
                        return;
                    } else {
                        deDetail.setOrderId(orderId);
                        prod.saveDeliveryDetail(deDetail);
                    }

                } else {
                    String orderId = prod.createOrder(cart, "5", "cashon");
                    if (orderId.equals("outofstock")) {
                        request.setAttribute("error", "It looks like a certain product is out of stock, please edit your cart!");
                        request.setAttribute("cart", cart);
                        request.getRequestDispatcher("checkout").forward(request, response);
                        return;
                    } else {
                        deDetail.setOrderId(orderId);
                        prod.saveDeliveryDetail(deDetail);
                    }

                }
                session.setAttribute("cart", null);
                session.setAttribute("totalitem", null);
                session.setAttribute("totalcart", null);
                session.setAttribute("totalCal", null);
            }
            request.setAttribute("result", "Succesful");
            request.getRequestDispatcher("vnpay_return.jsp").forward(request, response);
        }
        if (action != null && action.equals("upd")) {

            if (note == null) {
                note = "";
            }
            DeliveryDetail deDetail = new DeliveryDetail("5", fullName, email, phone, address, note);
            HttpSession session = request.getSession();
            session.setAttribute("deDetail", deDetail);
            Cart cart = (Cart) session.getAttribute("cart");
            Accounts acc = (Accounts) session.getAttribute("acc");
            if (acc != null) {
                request.setAttribute("acc", acc);
            }
            ProductDao prodDao = new ProductDao();

            if (!prodDao.CheckvalidStockOrderItem(cart)) {
                request.setAttribute("error", "It looks like a certain product is out of stock, please edit your cart!");
            }
            int discountValue = 0;
            if (voucherCode != null) {
                discountValue = new ProductDao().getVoucherValueByVouderCode(voucherCode);
            }
            request.setAttribute("discount",cart.getTotalPrice()*discountValue/100 );

            request.setAttribute("cart", cart);
            request.setAttribute("totalPrice", (int) (cart.getTotalPrice()-cart.getTotalPrice()*discountValue/100));
            request.setAttribute("totalCal", cart.getTotalCal());
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
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
