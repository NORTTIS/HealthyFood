/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AccountsDAO;
import dao.BlogDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.Accounts;
import model.Blog;

/**
 *
 * @author Norttie
 */
public class BlogController extends HttpServlet {

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
            out.println("<title>Servlet BlogController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BlogController at " + request.getContextPath() + "</h1>");
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
        String page = request.getParameter("page");
        String cid = request.getParameter("cate");
        String searchValue = request.getParameter("search");
        int indexPage = 1;
        int totalPage = 0;

        BlogDao blogDao = new BlogDao();
        AccountsDAO accDao = new AccountsDAO();
        HttpSession session = request.getSession();
        String bmirange = "1";
        if (session.getAttribute("bmiR") != null) {
            bmirange = blogDao.getBMICategory(session.getAttribute("bmiR") + "");
        }
        Map<Integer, String> cateList = blogDao.getAllBlogCategory();
        if (page != null && !page.equals("")) {
            indexPage = Integer.parseInt(page);
        }
        if (cid == null) {
            cid = "";
        }
        if (searchValue == null) {
            searchValue = "";
        }

        List<Blog> bListByPageIndex = blogDao.getAllBlog("", cid, indexPage, searchValue, bmirange);
        List<Blog> bListTotal = blogDao.getAllBlogs("", cid, searchValue, bmirange);

        List<Accounts> accList = new ArrayList<>();
        if (bListByPageIndex != null) {
            for (Blog blog : bListByPageIndex) {
                accList.add(accDao.getAccountByid(blog.getAuthor()));
            }
        }

        totalPage = blogDao.calNumPageBlog(bListTotal);
        request.setAttribute("searchValue", searchValue);
        request.setAttribute("bList", bListByPageIndex);
        request.setAttribute("accList", accList);
        request.setAttribute("cate", cid);
        request.setAttribute("cateList", cateList);
        request.setAttribute("currentPage", indexPage);
        request.setAttribute("totalPages", totalPage);
        request.getRequestDispatcher("blog.jsp").forward(request, response);
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
        String page = request.getParameter("page");
        String cid = request.getParameter("cate");
        String searchValue = request.getParameter("search");
        String accId = request.getParameter("accId");
        int indexPage = 1;
        int totalPage = 0;

        BlogDao blogDao = new BlogDao();
        AccountsDAO accDao = new AccountsDAO();
        Map<Integer, String> cateList = blogDao.getAllBlogCategory();
        HttpSession session = request.getSession();
        String bmirange = "1";
        if (session.getAttribute("bmiR") != null) {
            bmirange = blogDao.getBMICategory(session.getAttribute("bmiR") + "");
        }
        if (page != null && !page.equals("")) {
            indexPage = Integer.parseInt(page);
        }
        if (cid == null) {
            cid = "";
        }
        if (searchValue == null) {
            searchValue = "";
        }
        if (accId == null) {
            accId = "";

        }

        List<Blog> bListByPageIndex = blogDao.getAllBlog(accId, cid, indexPage, searchValue, bmirange);
        List<Blog> bListTotal = blogDao.getAllBlogs(accId, cid, searchValue, bmirange);

        List<Accounts> accList = new ArrayList<>();
        for (Blog blog : bListByPageIndex) {
            accList.add(accDao.getAccountByid(blog.getAuthor()));
        }
        totalPage = blogDao.calNumPageBlog(bListTotal);
        if(accId !=null){
            request.setAttribute("blogTitle","MyBlog");
        }else{
             request.setAttribute("blogTitle","OurBlog");
        }
        request.setAttribute("searchValue", searchValue);
        request.setAttribute("bList", bListByPageIndex);
        request.setAttribute("accList", accList);
        request.setAttribute("cate", cid);
        request.setAttribute("cateList", cateList);
        request.setAttribute("currentPage", indexPage);
        request.setAttribute("totalPages", totalPage);
        request.getRequestDispatcher("blog.jsp").forward(request, response);
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
