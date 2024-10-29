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
import java.util.List;
import model.Products;

/**
 *
 * @author Gosu
 */
@WebServlet(name = "Revenue", urlPatterns = {"/Revenue"})
public class Revenue extends HttpServlet {

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
            out.println("<title>Servlet Revenue</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Revenue at " + request.getContextPath() + "</h1>");
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao prodDao = new ProductDao();
        String monthParam = request.getParameter("month");
        String yearParam = request.getParameter("year");

        if (monthParam != null && yearParam != null) {
            int month = Integer.parseInt(monthParam);
            int year = Integer.parseInt(yearParam);

            List<Products> revenueList = prodDao.getMonthlyRevenue(String.valueOf(month));
            double totalRevenue = prodDao.getTotalMonthlyRevenue(month, year);

            StringBuilder htmlResponse = new StringBuilder();
            htmlResponse.append("<h2>Revenue Report for ").append(month).append(" / ").append(year).append("</h2>");
            htmlResponse.append("<h3>Total Revenue: $").append(totalRevenue).append("</h3>");
            htmlResponse.append("<table border='1'>");
            htmlResponse.append("<tr><th>Product ID</th><th>Total Quantity Sold</th><th>Total Revenue</th></tr>");

            for (Products product : revenueList) {
                htmlResponse.append("<tr>");
                htmlResponse.append("<td>").append(product.getProductId()).append("</td>");
                htmlResponse.append("<td>").append(product.getQuantityInStock()).append("</td>");
                htmlResponse.append("<td>").append(product.getPrice()).append("</td>");
                htmlResponse.append("</tr>");
            }
            htmlResponse.append("</table>");

            response.setContentType("text/html");
            response.getWriter().write(htmlResponse.toString());
        } else {
            response.sendRedirect("revenueInput.jsp");
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
