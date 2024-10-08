/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Norttie
 */
public class BlogDao extends DBContext {

    public void createBlog(String nutriId,String title, String cateId, String content,String image) {
        String sql = "INSERT INTO Blogs  (nutri_id,title,cate_id,content,image) VALUES(?,?,?,?,?) ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            int index=1;
            st.setString(index++, nutriId);
            st.setString(index++, title);
            st.setString(index++, cateId);
            st.setString(index++, content);
            st.setString(index++, image);
            st.executeUpdate();
        }catch (SQLException e) {
            System.out.println("Error cannot insert blog");
        }
    }
    public static void main(String[] args) {
        BlogDao b = new BlogDao();
        b.createBlog("4","1","title","content", "Avatar.");
    }
}
