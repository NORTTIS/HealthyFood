package controller;

import dao.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import model.Category;
import model.Products;

@WebServlet(name = "ProductController", urlPatterns = {"/manageproduct"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class ProductController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ac = request.getParameter("ac");
        ProductDao productDao = new ProductDao();
        Map<Integer, String> productCate = productDao.getAllProductCategory();
        request.setAttribute("productCate", productCate);
        request.getRequestDispatcher("createProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String categoryId = request.getParameter("categoryId");
        String supplier = request.getParameter("supplier");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        String quantityInStock = request.getParameter("quantityInStock");
        String status = request.getParameter("status");
        String averageCalories = request.getParameter("averageCalories");
        String productId = request.getParameter("productId"); // Khai báo productId chỉ một lần
        String ac = request.getParameter("ac");
        String filename = "";
        ProductDao productDao = new ProductDao();

        if (ac.equals("create")) {
            // Tạo sản phẩm mới
            try {
                Part part = request.getPart("picture");
                if (part != null && part.getSize() > 0) {
                    String appPath = request.getServletContext().getRealPath("/");
                    String path = "web/assets/images/our-products";
                    Path uploadDir = Paths.get(appPath).getParent().getParent().resolve(path);
                    String originalFileName = Path.of(part.getSubmittedFileName()).getFileName().toString();

                    if (!Files.exists(uploadDir)) {
                        Files.createDirectories(uploadDir);
                    }

                    String uniqueId = UUID.randomUUID().toString();
                    filename = "id" + categoryId + "_" + uniqueId + originalFileName;
                    Path filePath = uploadDir.resolve(filename);
                    part.write(filePath.toString());
                }

                productDao.createProduct(categoryId, supplier, name, description, price, quantityInStock, status, averageCalories, filename);
            } catch (IOException | ServletException e) {
                request.setAttribute("error", "Failed to create product");
                request.getRequestDispatcher("createProduct.jsp").forward(request, response);
            }
            response.sendRedirect("shop");
        }

        if (ac.equals("edit")) {
            // Chỉnh sửa sản phẩm
            try {
                if (productId != null) {
                    Products product = productDao.getProductsById(productId);
                    request.setAttribute("product", product);
                }
                List<Category> productCate = productDao.getAllCategory();
                request.setAttribute("productCate", productCate);
                request.getRequestDispatcher("createProduct.jsp").forward(request, response);
            } catch (Exception e) {
                request.setAttribute("error", "Failed to edit product");
                request.getRequestDispatcher("createProduct.jsp").forward(request, response);
            }
        }

        if (ac.equals("upd")) {
            // Cập nhật sản phẩm
            if (productId != null) {
                try {
                    Products product = productDao.getProductsById(productId);
                    Part part = request.getPart("picture");
                    if (part != null && part.getSize() > 0) {
                        String appPath = request.getServletContext().getRealPath("/");
                        String path = "web/assets/images/our-products";
                        Path uploadDir = Paths.get(appPath).getParent().getParent().resolve(path);
                        String originalFileName = Path.of(part.getSubmittedFileName()).getFileName().toString();

                        if (!Files.exists(uploadDir)) {
                            Files.createDirectories(uploadDir);
                        }

                        filename = product.getPicture(); // Giữ lại tên hình ảnh hiện tại
                        Path filePath = uploadDir.resolve(filename);
                        part.write(filePath.toString());
                    }

                    productDao.updateProduct(productId, categoryId, supplier, name, description, price, quantityInStock, status, averageCalories, filename);
                } catch (IOException | ServletException e) {
                    request.setAttribute("error", "Failed to update product");
                    response.sendRedirect("shop");
                }
            }
            response.sendRedirect("productdetail?productId=" + productId);
        }

        if (ac.equals("del")) {
            // Xóa sản phẩm
            if (productId != null) {
                productDao.deleteProduct(productId);
            }
            response.sendRedirect("shop");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
