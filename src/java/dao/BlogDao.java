/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import model.Blog;

/**
 *
 * @author Norttie
 */
public class BlogDao extends DBContext {

    public void createBlog(String nutriId, String title, String cateId, String content, String image) {
        String sql = "INSERT INTO Blogs  (nutri_id,title,cate_id,content,image) VALUES(?,?,?,?,?) ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            int index = 1;
            st.setString(index++, nutriId);
            st.setString(index++, title);
            st.setString(index++, cateId);
            st.setString(index++, content);
            st.setString(index++, image);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error cannot insert blog");
        }
    }


    public Map<Integer, String> getAllBlogCategory() {
        String sql = "SELECT * FROM BlogCategory";
        Map<Integer, String> cateList = new ConcurrentHashMap<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                cateList.put(rs.getInt(1), rs.getString(2));
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return cateList;
    }

    public Blog getBlogById(String id) {
        String sql = "SELECT * FROM Blogs where id = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int row = 1;
                Blog blog = new Blog(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getDate(row++),
                        rs.getString(row++)
                );
                return blog;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public String getCategoryByBlogId(String id) {
        String sql = "select * from Category where category_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String cate = rs.getString(2);
                return cate;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public int calNumPageBlog(List<Blog> list) {
        int numpage = 0;
        numpage = list.size() / 6;
        if (list.size() % 6 != 0) {
            numpage++;
        }
        return numpage;
    }

    public List<Blog> getAllBlog(String nutriId, String cateId, int pageIndex, String searchValue) {
        StringBuilder sql = new StringBuilder("select * from Blogs r where 1=1 ");  // Luôn đúng để dễ dàng nối các điều kiện
        List<Blog> bList = new ArrayList<>();

        try {
            // Xây dựng câu truy vấn động dựa trên điều kiện đầu vào
            if (!nutriId.equals("")) {
                sql.append(" and r.nutri_id = ?");
            }
            if (!cateId.equals("")) {
                sql.append(" and r.cate_id = ?");
            }
            if (!searchValue.equals("")) {
                sql.append(" and r.title like ?");
            }
            sql.append(" order by r.id offset ? rows fetch first 6 rows only");

            PreparedStatement st = connection.prepareStatement(sql.toString());
            int paramIndex = 1;

            // Thiết lập các tham số cho PreparedStatement
            if (!nutriId.equals("")) {
                st.setString(paramIndex++, nutriId);
            }
            if (!cateId.equals("")) {
                st.setString(paramIndex++, cateId);
            }
            if (!searchValue.equals("")) {
                st.setString(paramIndex++, "%" + searchValue + "%");  // Thêm wildcards cho LIKE
            }
            st.setInt(paramIndex, (pageIndex - 1) * 6);  // Thiết lập giá trị offset

            ResultSet rs = st.executeQuery();

            // Lặp qua kết quả và tạo đối tượng Blog
            while (rs.next()) {
                int row = 1;
                Blog a = new Blog(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getDate(row++),
                        rs.getString(row++)
                );
                bList.add(a);
            }
        } catch (SQLException e) {
            System.out.println("Error cannot get Blog");
            return null;
        }
        return bList;
    }
    
     public List<Blog> getAllBlog(String nutriId, String cateId, String searchValue) {
        StringBuilder sql = new StringBuilder("select * from Blogs r where 1=1 ");  // Luôn đúng để dễ dàng nối các điều kiện
        List<Blog> bList = new ArrayList<>();

        try {
            // Xây dựng câu truy vấn động dựa trên điều kiện đầu vào
            if (!nutriId.equals("")) {
                sql.append(" and r.nutri_id = ?");
            }
            if (!cateId.equals("")) {
                sql.append(" and r.cate_id = ?");
            }
            if (!searchValue.equals("")) {
                sql.append(" and r.title like ?");
            }
            sql.append(" order by r.id ");

            PreparedStatement st = connection.prepareStatement(sql.toString());
            int paramIndex = 1;

            // Thiết lập các tham số cho PreparedStatement
            if (!nutriId.equals("")) {
                st.setString(paramIndex++, nutriId);
            }
            if (!cateId.equals("")) {
                st.setString(paramIndex++, cateId);
            }
            if (!searchValue.equals("")) {
                st.setString(paramIndex++, "%" + searchValue + "%");  // Thêm wildcards cho LIKE
            }
           

            ResultSet rs = st.executeQuery();

            // Lặp qua kết quả và tạo đối tượng Blog
            while (rs.next()) {
                int row = 1;
                Blog a = new Blog(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getDate(row++),
                        rs.getString(row++)
                );
                bList.add(a);
            }
        } catch (SQLException e) {
            System.out.println("Error cannot get Blog");
            return null;
        }
        return bList;
    }
    public static void main(String[] args) {
        BlogDao b = new BlogDao();
        List<Blog> l = b.getAllBlog("", "", 1, "");
        for (Blog blog : l) {
            System.out.println(blog);
        }
         System.out.println(b.getBlogById("1"));
        System.out.println(b.getCategoryByBlogId("1"));
        for (Blog blog : l) {
            System.out.println(blog);
        }

    }

}
