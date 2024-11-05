/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 *
 *
 * @author Gosu
 */
@MultipartConfig
@WebServlet(name = "ManagerSetProduct", urlPatterns = {"/setProduct"})
public class ManagerSetProduct extends HttpServlet {

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
            out.println("<title>Servlet ManagerSetProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ManagerSetProduct at " + request.getContextPath() + "</h1>");
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
        String[] name = request.getParameterValues("prodname");
        String[] category = request.getParameterValues("category");
        String[] supplier = request.getParameterValues("supplier");
        String[] description = request.getParameterValues("description");
        String[] price = request.getParameterValues("price");
        String[] qty = request.getParameterValues("qty");
        String[] calo = request.getParameterValues("calo");
        // Lấy danh sách tất cả các Part có tên "picture"
        List<Part> pictures = request.getParts().stream()
                .filter(part -> "picture".equals(part.getName()) && part.getSize() > 0)
                .collect(Collectors.toList());

        ProductDao pdb = new ProductDao();
        Map<Integer, String> map = pdb.getAllProductCategory();
        for (int i = 0; i < name.length; i++) {
            int cateId = 0;
            for (Map.Entry<Integer, String> entry : map.entrySet()) {
                if (entry.getValue().equals(category[i])) {
                    cateId = entry.getKey();
                }
            }
            try {
                // Lấy phần file từ request
                Part part =pictures.get(i);
                if (part != null && part.getSize() > 0) {
                    // Lấy đường dẫn thư mục gốc của ứng dụng
                    String appPath = request.getServletContext().getRealPath("/");
                    // Đường dẫn tới thư mục mong muốn (cùng cấp với thư mục chứa servlet)
                    String path = "web/assets/products";
                    Path uploadDir = Paths.get(appPath).getParent().getParent().resolve(path);

                    // Kiểm tra và tạo thư mục nếu chưa tồn tại
                    if (!Files.exists(uploadDir)) {
                        Files.createDirectories(uploadDir);
                    }
                    UUID uniqueID = UUID.randomUUID();
                    // Lấy tên file và đường dẫn file đầy đủ
                    String filename = "id" + uniqueID + "_" + Path.of(part.getSubmittedFileName()).getFileName().toString();
                    Path filePath = uploadDir.resolve(filename);

                    // Kiểm tra nếu file đã tồn tại, thì ghi đè lên file đó
                    if (Files.exists(filePath)) {
                        Files.copy(part.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
                    } else {
                        // Nếu file chưa tồn tại, ghi file mới vào
                        part.write(filePath.toString());
                    }
                    pdb.createProduct(cateId, supplier[i], name[i], description[i], Double.parseDouble(price[i]), Integer.parseInt(qty[i]), Double.parseDouble(calo[i]), filename);

                }

            } catch (Exception e) {
                PrintWriter out = response.getWriter();
                out.print(e.getMessage());
            }

        }
        String totalMenuId = request.getParameter("totalMenuId");
        String[] listId = totalMenuId.split("-");
        int lastProductId = pdb.getLastProductId();

        for (int i = 0; i < listId.length; i++) {

            int productId = lastProductId - listId.length + i;
            pdb.setMenuDetail(Integer.parseInt(listId[i]), productId);
        }
        response.sendRedirect("listMenu");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
