package controller.vpn;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
// url: /transaction
import dao.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import model.Accounts;
import model.Cart;
import model.DeliveryDetail;

/**
 *
 * @author Minh
 */
public class TransactionServlet extends HttpServlet {

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
            out.println("<title>Servlet TransactionServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TransactionServlet at " + request.getContextPath() + "</h1>");
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
        Map fields = new HashMap();
        for (Enumeration params = request.getParameterNames(); params.hasMoreElements();) {
            String fieldName = URLEncoder.encode((String) params.nextElement(), StandardCharsets.US_ASCII.toString());
            String fieldValue = URLEncoder.encode(request.getParameter(fieldName), StandardCharsets.US_ASCII.toString());
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                fields.put(fieldName, fieldValue);
            }
        }

        String vnp_SecureHash = request.getParameter("vnp_SecureHash");
        if (fields.containsKey("vnp_SecureHashType")) {
            fields.remove("vnp_SecureHashType");
        }
        if (fields.containsKey("vnp_SecureHash")) {
            fields.remove("vnp_SecureHash");
        }
        String signValue = Config.hashAllFields(fields);
        if (signValue.equals(vnp_SecureHash)) {
            if ("00".equals(request.getParameter("vnp_TransactionStatus"))) {
                request.setAttribute("result", "Thành Công");
                // tạo order khi thanh toán thành công 
                HttpSession session = request.getSession();
                Cart cart = (Cart) session.getAttribute("cart");
                Accounts acc = (Accounts) session.getAttribute("acc");
                ProductDao prod = new ProductDao();
                DeliveryDetail deDetail = (DeliveryDetail) session.getAttribute("deDetail");

                if (deDetail != null) {
                    if (acc != null) {
                        String orderId = prod.createOrder(cart, acc.getAccount_id() + "");
                        if (orderId.equals("outofstock")) {
                            request.setAttribute("error", "It looks like a certain product is out of stock, please edit your cart!");
                            request.getRequestDispatcher("checkout").forward(request, response);
                             return;
                        } else {
                            deDetail.setOrderId(orderId);
                            prod.saveDeliveryDetail(deDetail);
                        }

                    } else {
                        String orderId = prod.createOrder(cart,"5");
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

            } else {
                request.setAttribute("result", "Không thành công");
            }

        } else {
            request.setAttribute("result", "invalid signature");
        }

        request.getRequestDispatcher("vnpay_return.jsp").forward(request, response);
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
