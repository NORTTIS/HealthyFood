/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dao;


import model.DeliveryDetail;
import model.Order;
import org.junit.Test;
import static org.junit.Assert.*;
import java.sql.*;
import java.util.List;
import model.Reviews;

/**
 *
 * @author Norttie
 */
public class ProductDaoTest {
    ProductDao productDao ;
    
    public ProductDaoTest() {
        productDao = new ProductDao();
    }

  

    @Test
    public void testGetOrderById() {
        String orderId = "1";
        Order order = productDao.getOrderById(orderId);
        assertEquals("Order ID should match the requested ID","1",order.getOrderId());
    }

   
     @Test
    public void testgetDeliveryDetailByOrderId() {
        String orderId = "2";
         DeliveryDetail deDetail = productDao.getDeliveryDetailByOrderId(orderId);
        assertEquals("Delivery Detail id should math expected","1",deDetail.getDeliveryId());
    }
    
    @Test
    public void testReviewProductwithValidData(){
        // Arrange
        String productId = "3";
        String accountId = "1";
        String rating = "5"; // Assuming rating is a string
        String comment = "Great product!";
            productDao.ReviewProduct(productId, accountId, rating, comment);
       java.sql.Connection conn = new DBContext().getConnection();
        try {
              PreparedStatement st = conn.prepareStatement("SELECT * FROM Reviews WHERE product_id = ? AND account_id = ?");
        st.setString(1, productId);
        st.setString(2, accountId);
        ResultSet rs = st.executeQuery();
         assertEquals("1", rs.getString("account_id"));
        assertEquals("3", rs.getString("product_id"));
         // Clean up
        rs.close();
        st.close();
        conn.close();
        } catch (SQLException e) {
        }
    }
    @Test
    public void testGetReviewByProdId(){
     List<Reviews> reviews = productDao.getReviewByProdId(4, "2");

        // Assert
        for (Reviews review : reviews) {
            assertEquals("all review shoul be 4 star","4", review.getRate());
        }
    }
      @Test
    public void testGetAllOrderByAccId(){
    List<Order> orders = productDao.getAllOrderByAccId("1");
         assertFalse(orders.isEmpty());
    }
}
