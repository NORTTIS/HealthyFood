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
import model.Discount;

/**
 *
 * @author Gosu
 */
public class DiscountDAO extends DBContext {

    public List<Discount> getAllDiscounts(int page, int totalObj) {
        String sql = "  SELECT * FROM Discount ORDER BY id OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
        int offset = (page - 1) * totalObj;
        List<Discount> lst = new ArrayList<>();
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, offset);
            st.setInt(2, totalObj);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Discount d = new Discount(
                        rs.getInt("id"),
                        rs.getInt("discountValue"),
                        rs.getString("discountName")
                );
                lst.add(d);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return lst;
    }
    
    public List<Discount> getAllDiscounts() {
        String sql = "  SELECT * FROM Discount";
        List<Discount> lst = new ArrayList<>();
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Discount d = new Discount(
                        rs.getInt("id"),
                        rs.getInt("discountValue"),
                        rs.getString("discountName")
                );
                lst.add(d);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return lst;
    }

    public void createDiscount(int discountValue, String discountName) {
        String sql = "insert into Discount(discountValue, discountName) values (?, ?)";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, discountValue);
            st.setString(2, discountName);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateDiscounts(int id, int discountValue, String discountName) {
        String sql = "UPDATE Discount SET discountValue = ?, discountName = ? WHERE id = ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, discountValue);
            st.setString(2, discountName);
            st.setInt(3, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void deleteDiscount(int id) {
        String sql = "delete Discount where id =  ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int getTotalPages(int totalObj){
        int totalRecords = 0;
        String sql = "SELECT COUNT(*) FROM Discount";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                totalRecords = rs.getInt(1);
            }
        } catch (SQLException e){
            System.out.println(e);
        }

        return (int) Math.ceil(totalRecords / (double) totalObj);
    }

    public static void main(String[] args) {
        DiscountDAO ddb = new DiscountDAO();
        ddb.createDiscount(39, "randomName");
        List<Discount> lst = ddb.getAllDiscounts(1, 3);
        for (Discount l : lst) {
            System.out.println(l.getDiscountName());
        }
    }

}
