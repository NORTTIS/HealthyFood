/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Products;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Category;

/**
 *
 * @author Norttie
 */
public class ProductDao extends DBContext {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Products> getAllProduct() {
        List<Products> list = new ArrayList<>();
        String query = "Select * from Products";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getString(10)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
//        List<Products> list = dao.getAllProduct();
//        for(Products o : list){
//            System.out.println(o);
//        }
//    }
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "Select * from Category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));

            }
        } catch (SQLException e) {
        }
        return list;
    }

//        public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
//        List<Products> list = dao.getAllProduct();
//        List<Category> listC = dao.getAllCategory();
//        for(Category o : listC){
//            System.out.println(o);
//        }
//    }
    public List<Products> getProductsByCateId(String cid) {
        List<Products> list = new ArrayList<>();
        String query = "Select * from Products where category_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getString(10)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    public static void main(String[] args) {
//        String cid = "1";
//        ProductDao dao = new ProductDao();
//        List<Products> list = dao.getAllProduct();
//        List<Products> listP = dao.getProductsByCateId(cid);
//        for (Products o : listP) {
//            System.out.println(o);
//        }
//    }
    public Products getProductsById(String id) {
        String sql = "Select * from Products where product_id =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                Products acc = new Products(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getString(10));

                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }

        return null;
    }

    public List<Products> searchByName(String txtSearch) {
        List<Products> list = new ArrayList<>();
        String sql = "Select * from Products where [name] LIKE ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getString(10)));

            }
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }

        return list;
    }

//    public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
//        String txtSearch = "organic";
//        List<Products> list = dao.searchByName(txtSearch);
//        for (Products o : list) {
//            System.out.println(o.getName());
//        }
//    }

}
