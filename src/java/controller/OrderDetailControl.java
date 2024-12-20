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
import model.Accounts;
import model.Cart;
import model.DeliveryDetail;
import model.Order;

/**
 *
 * @author Norttie
 */
@WebServlet(name = "OrderDetailControl", urlPatterns = {"/OrderDetail"})
public class OrderDetailControl extends HttpServlet {

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
            out.println("<title>Servlet OrderDetail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderDetail at " + request.getContextPath() + "</h1>");
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
        String orderId = request.getParameter("orderId");
       
        ProductDao prodDao = new ProductDao();
        Order order = prodDao.getOrderById(orderId);
        AccountsDAO accDao = new AccountsDAO();
        Accounts acc = accDao.getAccountByid(order.getAuthor());
        DeliveryDetail deDetail = prodDao.getDeliveryDetailByOrderId(orderId);
        int discountValue = 0;
        if (deDetail.getVoucher() != null) {
                discountValue = new ProductDao().getVoucherValueByVouderCode(deDetail.getVoucher());
            }
        Cart cartOrder = prodDao.getOrderDetailById(orderId);
        request.setAttribute("discount",cartOrder.getTotalPrice()*discountValue/100 );
        request.setAttribute("deDetail", deDetail);
        request.setAttribute("order", order);
        request.setAttribute("cart", cartOrder);
        request.setAttribute("customer", acc);
        request.getRequestDispatcher("orderDetail.jsp").forward(request, response);
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
       String status = request.getParameter("status");
       String orderId = request.getParameter("orderId");
       new ProductDao().updateOrderStatusById(orderId, status);
       response.sendRedirect("orderlist");
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
