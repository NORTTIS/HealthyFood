/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Products;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import model.Cart;
import model.LineItem;

/**
 *
 * @author Norttie
 */
public class ProductDao extends DBContext {

    public Products getProductsById(String id) {
        String sql = "Select * from Products where product_id =?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {

            st.setString(1, id);
            ResultSet rs;
            rs = st.executeQuery();
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

    public List<Products> getAllDiscountProduct() {
        String sql = "Select * from Products ";
        List<Products> lProduct = new ArrayList<>();
        try (PreparedStatement st = connection.prepareStatement(sql)) {

            ResultSet rs;
            rs = st.executeQuery();
            while (rs.next()) {
                Products prod = new Products(
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
                lProduct.add(prod);
            }
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }

        return lProduct;
    }

    public String getWishIdByAccountId(String accountid) {
        String sql = "SELECT wish_id FROM WishList WHERE account_id = ?";
        String wishId = "";
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        try {

            st = conn.prepareStatement(sql);
            st.setString(1, accountid);
            rs = st.executeQuery();
            if (rs.next()) {
                wishId = rs.getString(1);
                return wishId;
            } else {
                // Tạo wishlist mới nếu chưa tồn tại
                String insertWishListSql = "INSERT INTO WishList (account_id) VALUES (?)";
                st = conn.prepareStatement(insertWishListSql, Statement.RETURN_GENERATED_KEYS);
                st.setString(1, accountid);
                st.executeUpdate();
                rs = st.getGeneratedKeys();
                if (rs.next()) {
                    wishId = rs.getString(1);
                    return wishId;
                } else {
                    throw new SQLException("Failed to create wishlist.");
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return "";

    }

    public void addProductToWishList(Products prod, String wishId, int quantity) {
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            // Kiểm tra xem sản phẩm đã tồn tại trong wishlist chưa
            String selectWishItemSql = "SELECT * FROM Wish_Item WHERE wish_id = ? AND product_id = ?";
            st = conn.prepareStatement(selectWishItemSql);
            st.setString(1, wishId);
            st.setInt(2, prod.getProductId());
            rs = st.executeQuery();

            if (rs.next()) {
                // Nếu sản phẩm đã tồn tại, cập nhật số lượng
                String updateWishItemSql = "UPDATE Wish_Item SET product_qty = ? WHERE wish_id = ? AND product_id = ?";
                st = conn.prepareStatement(updateWishItemSql);
                st.setInt(1, quantity);
                st.setString(2, wishId);
                st.setInt(3, prod.getProductId());
                st.executeUpdate();
            } else {
                // Thêm sản phẩm mới vào wishlist
                String insertWishItemSql = "INSERT INTO Wish_Item (wish_id, product_id, product_qty) VALUES (?, ?, ?)";
                st = conn.prepareStatement(insertWishItemSql);
                st.setString(1, wishId);
                st.setInt(2, prod.getProductId());
                st.setInt(3, quantity);
                st.executeUpdate();
            }
        } catch (SQLException e) {
        }

    }

    public Cart getWishCartByAccountId(String accountId) {
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        String wishId = getWishIdByAccountId(accountId);
        Cart cart = new Cart();
        try {
            String getWishItemSql = "select * from Wish_Item where wish_id = ? ";
            st = conn.prepareStatement(getWishItemSql);
            st.setString(1, wishId);
            rs = st.executeQuery();
            while (rs.next()) {
                Products product = getProductsById(rs.getString(3));
                int quantity = rs.getInt(4);
                LineItem lineitem = new LineItem(product, quantity);
                cart.addItem(lineitem);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return cart;
    }

    public void deleteWishItem(String productid, String accountId) {
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        String wishId = getWishIdByAccountId(accountId);
        Cart cart = new Cart();
        try {
            String getWishItemSql = "delete from Wish_Item where wish_id = ? and product_id = ?; ";
            st = conn.prepareStatement(getWishItemSql);
            st.setString(1, wishId);
            st.setString(2, productid);
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public Map<Integer, String> getAllProductCategory() {
        String sql = "SELECT * FROM Category";
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

    public void createOrder(Cart cart, String accountId) {
        String sql = "SELECT wish_id FROM WishList WHERE account_id = ?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement psOrder = null;
        PreparedStatement psOrderItems = null;
        ResultSet rs = null;
        try {

            String insertOrderSQL = "INSERT INTO Orders (account_id, total_amount, status, total_calories, order_date) VALUES (?, ?, 'Pending', ?, GETDATE())";
            psOrder = conn.prepareStatement(insertOrderSQL, Statement.RETURN_GENERATED_KEYS);
            psOrder.setString(1, accountId);
            psOrder.setDouble(2, cart.getTotalPrice());  // Tổng số tiền
            psOrder.setDouble(3, cart.getTotalCal());    // Tổng calo

            int affectedRows = psOrder.executeUpdate();
            if (affectedRows == 0) {
                throw new SQLException("Creating order failed, no rows affected.");
            }

            rs = psOrder.getGeneratedKeys();
            int orderId = 0;
            if (rs.next()) {
                orderId = rs.getInt(1);
            }

            String insertOrderItemSQL = "INSERT INTO Order_Items (order_id, product_id, prod_qty, total_price) VALUES (?, ?, ?, ?)";
            psOrderItems = conn.prepareStatement(insertOrderItemSQL);

            for (LineItem item : cart.getItems()) {
                psOrderItems.setInt(1, orderId);  // ID của đơn hàng
                psOrderItems.setInt(2, item.getProduct().getProductId());  // ID sản phẩm
                psOrderItems.setInt(3, item.getQuantity());  // Số lượng sản phẩm
                psOrderItems.setDouble(4, item.getTotal());  // Tổng giá trị của sản phẩm đó

                psOrderItems.addBatch();  // Thêm vào batch để thực hiện sau
            }

            psOrderItems.executeBatch();  // Thực hiện batch

            // Bước 3: Commit giao dịch
            conn.commit();

        } catch (SQLException e) {

            System.out.println(e.getMessage());

        }

    }

    public static void main(String[] args) {
        ProductDao prod = new ProductDao();
        Products product = prod.getProductsById("1");
        Cart cart = prod.getWishCartByAccountId("1");
        prod.createOrder(cart, "1");

    }

}
