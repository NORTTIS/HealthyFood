/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.BlogDao;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.Map;
import java.util.UUID;
import model.Accounts;
import model.Blog;

/**
 *
 * @author Norttie
 */
@WebServlet(name = "BlogServlet", urlPatterns = {"/manageblog"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class BlogServlet extends HttpServlet {

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
            out.println("<title>Servlet BlogServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BlogServlet at " + request.getContextPath() + "</h1>");
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
        String ac = request.getParameter("ac");

        request.getRequestDispatcher("createBlog.jsp").forward(request, response);
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
        String nutriId = request.getParameter("nutriId");
        String category = request.getParameter("category");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String blogId = request.getParameter("blogId");
        String ac = request.getParameter("ac");
        String filename = "";
        BlogDao blogDao = new BlogDao();
        if (ac.equals("create")) {
            try {
                // Lấy phần file từ request
                Part part = request.getPart("thumbnail");
                if (part != null && part.getSize() > 0) {
                    // Lấy đường dẫn thư mục gốc của ứng dụng
                    String appPath = request.getServletContext().getRealPath("/");
                    // Đường dẫn tới thư mục mong muốn (cùng cấp với thư mục chứa servlet)
                    String path = "web/assets/images/our-blog";
                    Path uploadDir = Paths.get(appPath).getParent().getParent().resolve(path);
                    String originalFileName = Path.of(part.getSubmittedFileName()).getFileName().toString();
                    // Kiểm tra và tạo thư mục nếu chưa tồn tại
                    if (!Files.exists(uploadDir)) {
                        Files.createDirectories(uploadDir);
                    }
                    // Tạo UUID
                    String uniqueId = UUID.randomUUID().toString();

                    // Lấy tên file và đường dẫn file đầy đủ
                    filename = "id" + nutriId + "_" + uniqueId + originalFileName;
                    Path filePath = uploadDir.resolve(filename);
                    if (Files.exists(filePath)) {
                        Files.copy(part.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
                    } else {
                        // Nếu file chưa tồn tại, ghi file mới vào
                        part.write(filePath.toString());
                    }

                } else {
                    // Xử lý khi không có file được upload
                }

                blogDao.createBlog(nutriId, title, category, content, filename);

            } catch (IOException | ServletException e) {
                // Xử lý ngoại lệ
                request.setAttribute("error", "fail to create blog");
                request.getRequestDispatcher("createBlog.jsp").forward(request, response);
            }
        }

        if (ac.equals("edit")) {
            try {
                BlogDao bDao = new BlogDao();
                Blog blog = new Blog();
                if (blogId != null) {
                    blog = bDao.getBlogById(blogId);
                    HttpSession session = request.getSession();
                    Accounts acc = (Accounts) session.getAttribute("acc");
                    if (acc.getAccount_id() == Integer.parseInt(blog.getAuthor())) {
                        request.setAttribute("blog", blog);
                    } else {
                        response.sendRedirect("blog");
                    }
                }
                Map<Integer, String> blogCate = blogDao.getAllBlogCategory();
                request.setAttribute("blogCate", blogCate);
                
                request.getRequestDispatcher("createBlog.jsp").forward(request, response);

            } catch (NumberFormatException e) {
                // Xử lý ngoại lệ
                request.setAttribute("error", "fail to edit blog");
                request.getRequestDispatcher("createBlog.jsp").forward(request, response);
            }
        }
        if (ac.equals("upd")) {
            String BlogId = request.getParameter("BlogId");
            Blog Blog = new Blog();
            if (BlogId != null) {
                Blog = blogDao.getBlogById(BlogId);
                try {
                    // Lấy phần file từ request
                    Part part = request.getPart("thumbnail");
                    if (part != null && part.getSize() > 0) {
                        // Lấy đường dẫn thư mục gốc của ứng dụng
                        String appPath = request.getServletContext().getRealPath("/");
                        // Đường dẫn tới thư mục mong muốn (cùng cấp với thư mục chứa servlet)
                        String path = "web/assets/images/our-blog";
                        Path uploadDir = Paths.get(appPath).getParent().getParent().resolve(path);
                        String originalFileName = Path.of(part.getSubmittedFileName()).getFileName().toString();
                        // Kiểm tra và tạo thư mục nếu chưa tồn tại
                        if (!Files.exists(uploadDir)) {
                            Files.createDirectories(uploadDir);
                        }

                        // Lấy tên file và đường dẫn file đầy đủ
                        filename = Blog.getImagePath();
                        Path filePath = uploadDir.resolve(filename);
                        if (Files.exists(filePath)) {
                            Files.copy(part.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
                        } else {
                            // Nếu file chưa tồn tại, ghi file mới vào
                            part.write(filePath.toString());
                        }

                    } else {
                        // Xử lý khi không có file được upload
                    }
                    blogDao.updateBlog(BlogId, title, category, content, Blog.getImagePath());

                } catch (IOException | ServletException e) {
                    // Xử lý ngoại lệ
                    request.setAttribute("error", "fail to create blog");
                    response.sendRedirect("blog");
                }
            }
            response.sendRedirect("blogdetail?blogId="+BlogId);
        }
        
         if (ac.equals("del")) {
            Blog Blog = new Blog();
            if (blogId != null) {
                blogDao.deleteBlog(blogId);
            }
            response.sendRedirect("blog" );
         }

//        response.sendRedirect("blog");
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
