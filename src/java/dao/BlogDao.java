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

    public void createBlog(String nutriId, String title, String cateId, String content, String image, String bmirange) {
        String sql = "INSERT INTO Blogs  (nutri_id,title,cate_id,content,image,bmi_range) VALUES(?,?,?,?,?) ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            int index = 1;
            st.setString(index++, nutriId);
            st.setString(index++, title);
            st.setString(index++, cateId);
            st.setString(index++, content);
            st.setString(index++, image);
            st.setString(index++, bmirange);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error cannot insert blog:" + e.getMessage());
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

    public String getCategoryByBlogId(String blogid) {
        String sql = "select * from BlogCategory where category_id = ?";
        Blog blog = getBlogById(blogid);
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, blog.getCategory() + "");
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
        numpage = list.size() / 3;
        if (list.size() % 3 != 0) {
            numpage++;
        }
        return numpage;
    }

    public List<Blog> getAllBlog(String nutriId, String cateId, int pageIndex, String searchValue, String bmirange) {
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
            if (!bmirange.equals("")) {
                sql.append(" and (r.bmi_range = ? or r.bmi_range = 5)");
            }

            sql.append(" order by r.id offset ? rows fetch first 3 rows only");

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
                st.setString(paramIndex++, "%" + searchValue + "%");  
            }
            if (!bmirange.equals("")) {
                st.setString(paramIndex++, bmirange);
            }

            st.setInt(paramIndex, (pageIndex - 1) * 3);  // Thiết lập giá trị offset

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

    public List<Blog> getAllBlogs(String nutriId, String cateId, String searchValue, String bmirange) {
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
            if (!bmirange.equals("")) {
                sql.append(" and (r.bmi_range = ? or r.bmi_range = 5)");
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
                st.setString(paramIndex++, "%" + searchValue + "%");
            }
            if (!bmirange.equals("")) {
                st.setString(paramIndex++, bmirange);
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

    public void updateBlog(String blogId, String title, String cateId, String content, String image) {
        String sql = "UPDATE Blogs  SET title = ?, cate_id = ?, content = ?, image = ? where id =? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            int index = 1;
            st.setString(index++, title);
            st.setString(index++, cateId);
            st.setString(index++, content);
            st.setString(index++, image);
            st.setString(index++, blogId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error cannot insert blog");
        }
    }

    public void deleteBlog(String blogId) {
        String sql = "delete from Blogs where id =? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            int index = 1;
            st.setString(index++, blogId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error cannot delete blog: " + e);
        }
    }

    public String getBMICategory(String bmiIndex) {
        double bmi = Double.parseDouble(bmiIndex);
        if (bmi < 18.5) {
            return 1 + ""; // Loại 1: BMI < 18.5
        } else if (bmi >= 18.5 && bmi < 24.9) {
            return 2 + ""; // Loại 2: 18.5 <= BMI < 24.9
        } else if (bmi >= 25 && bmi < 29.9) {
            return 3 + ""; // Loại 3: 25 <= BMI < 29.9
        } else if (bmi >= 30) {
            return 4 + ""; // Loại 4: BMI >= 30
        } else {
            return 5 + ""; // Loại 5: All BMIs (trường hợp mặc định)
        }
    }

    public static void main(String[] args) {
        BlogDao b = new BlogDao();
        List<Blog> lBlog = b.getAllBlog("", "", 1, "", "1");
        for (Blog blog : lBlog) {
            System.out.println(blog);
        }
    }

}
