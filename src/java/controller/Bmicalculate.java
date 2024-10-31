/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

/**
 *
 * @author Norttie
 */
@WebServlet(name = "Bmicalculate", urlPatterns = {"/bmical"})
public class Bmicalculate extends HttpServlet {

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
            out.println("<title>Servlet Bmicalculate</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Bmicalculate at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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

        String heightStr = request.getParameter("height");
        String weightStr = request.getParameter("weight");
//        String bmiRByCaulator = request.getParameter("bmi");
        if (heightStr != null && weightStr != null) {
            try {
                // Chuyển đổi dữ liệu thành số thực
                double weight = Double.parseDouble(weightStr);
                double height = Double.parseDouble(heightStr);

                // Tính toán BMI
                double heightInMeters = height / 100;
                double bmi = weight / Math.pow(heightInMeters, 2);
                DecimalFormatSymbols symbols = new DecimalFormatSymbols(Locale.ENGLISH);
                DecimalFormat df = new DecimalFormat("#.##", symbols);
                String formattedBmi = df.format(bmi);
                HttpSession session = request.getSession();
                session.setAttribute("bmiR", formattedBmi);
                String previousPage = request.getHeader("referer");

                if (previousPage != null && (previousPage.contains("bmi.jsp") || previousPage.contains("bmical"))) {
                    request.getRequestDispatcher("bmi.jsp").forward(request, response); // Chuyển về trang bmi.jsp
                } else {
                    response.sendRedirect("home"); // Chuyển về trang home
                }

            } catch (Exception e) {
            }
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
