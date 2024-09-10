/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Products;
import java.sql.*;

/**
 *
 * @author Norttie
 */
public class ProductDao {

    public Products getProductsById(int id) {
        String sql = "Select * from Products where product_id =?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs;
            rs = st.executeQuery();
            while (rs.next()) {
                Products acc = new Products(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getString(10));
                System.out.println(acc);

                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }

        return null;
    }

    public static void main(String[] args) {
        ProductDao prod = new ProductDao();
        prod.getProductsById(4);
    }

}
