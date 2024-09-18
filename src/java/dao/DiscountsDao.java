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
import model.Accounts;
import model.Discounts;

/**
 *
 * @author Gosu
 */
public class DiscountsDao extends DBContext {
    
    public List<Discounts> getDiscounts() {
        String sql = "SELECT * FROM Discounts";
        List<Discounts> al = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Discounts a = new Discounts(
                        rs.getString("name"),
                        rs.getString("value"),
                        rs.getInt("amounts")
                );
                al.add(a);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return al;
    }

    public void creatDiscounts(String name, String value, int amounts) {
        String sql = "INSERT INTO Discounts (name, value, amounts) VALUES (?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, value);
            st.setInt(3, amounts);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void updateDiscounts(String oldname, String name, String value, int amounts) {
        String sql = "UPDATE Discounts SET name = ?, value = ?, amounts = ? WHERE name = ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, name);
            st.setString(2, value);
            st.setInt(3, amounts);
            st.setString(4, oldname);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

}
