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
import java.util.ArrayList;
import java.util.List;
import model.Blog;
import model.Reviews;
import org.junit.Before;
import org.mockito.Mock;
import org.mockito.Mockito;
import static org.mockito.Mockito.mock;

/**
 *
 * @author Norttie
 */
public class ProductDaoTest {

    private ProductDao productDao;  // Khai báo ProductDao
    private BlogDao blogDao;

    public ProductDaoTest() {
        productDao = new ProductDao();
        blogDao = new BlogDao();
    }
    
   @Test
    public void testCalNumPageBlog() {

        // valid test: list.size() = 1; expected 1 page
//        List<Blog> singleElementList = new ArrayList<>();
//        singleElementList.add(new Blog());
//        int numpage = blogDao.calNumPageBlog(singleElementList);
//        assertEquals(1, numpage);

        // valid test: list.size() = 3; expected 1 page
//        List<Blog> threeElementList = new ArrayList<>();
//        threeElementList.add(new Blog());
//        threeElementList.add(new Blog());
//        threeElementList.add(new Blog());
//        numpage = blogDao.calNumPageBlog(threeElementList);
//        assertEquals(1, numpage);

        // valid test: list.size() = 4; expected 2 page
//        List<Blog> fourElementList = new ArrayList<>();
//        fourElementList.add(new Blog());
//        fourElementList.add(new Blog());
//        fourElementList.add(new Blog());
//        fourElementList.add(new Blog());
//        fourElementList.add(new Blog());
//        numpage = blogDao.calNumPageBlog(fourElementList);
//        assertEquals(2, numpage);

        //exception test: empty list
        List<Blog> emptyList = new ArrayList<>();
        int numpage = blogDao.calNumPageBlog(emptyList);
        assertEquals(0, numpage);
    }

    
    
//    @Test
//    public void testGetReviewByProdId() {
//        int star = 0;
//        String productId = "2";
//        //Exception test 0 star, no review in db
//        List<Reviews> review0star = productDao.getReviewByProdId(star, productId);
//        assertFalse(review0star.isEmpty());
//        //valid test 1 star
//        star = 1;
//        List<Reviews> review1star = productDao.getReviewByProdId(star, productId);
//        assertEquals(0, review1star.size());
//
//        //Exception test 6 star
//        star = 6;
//        List<Reviews> review6star = productDao.getReviewByProdId(star, productId);
//        assertEquals(0, review1star.size());
//
//        //Exception test product not exist
//        productId = "-1";
//        List<Reviews> review_1star = productDao.getReviewByProdId(star, productId);
//        assertEquals(0, review1star.size());
//
//        //Exception test product not number format
//        productId = "1ABc";
//        List<Reviews> review_1ABcstar = productDao.getReviewByProdId(star, productId);
//        assertEquals(0, review1star.size());
//
//        //Exception test product not exist
//        productId = "";
//        List<Reviews> review_star = productDao.getReviewByProdId(star, productId);
//        assertEquals(0, review1star.size());
//    }

//valid test: orderId is not empty and exists in the database 
//    @Test
//    public void testGetOrderById() {
//        String orderId = "2";
//        Order order = productDao.getOrderById(orderId);
//        assertEquals("2", order.getOrderId());
//    }
//
////exception test : orderId =””;
//    @Test
//    public void testGetOrderById_OrderIdEmpty() {
//        String orderId = "";
//        Order order = productDao.getOrderById(orderId);
//        assertNull(order);
//    }
////exception test : orderId =”1” but order just deleted in db;
//
//    @Test
//    public void testGetOrderById_OrderDeleted() {
//        String orderId = "1";
//        Order order = productDao.getOrderById(orderId);
//        assertNull(order);
//    }
////exception test : orderId not number
//
//    @Test
//    public void testGetOrderById_OrderNotNumber() {
//        String orderId = "A";
//        Order order = productDao.getOrderById(orderId);
//        assertNull(order);
//    }
//
////valid test: orderId is not empty and exists in the database and DeliveryDetail exist in database
//    @Test
//    public void testgetDeliveryDetailByOrderId() {
//        String orderId = "2";
//        DeliveryDetail deDetail = productDao.getDeliveryDetailByOrderId(orderId);
//        assertEquals("1", deDetail.getDeliveryId());
//    }
////exception test : orderId =””;
//
//    @Test
//    public void testgetDeliveryDetailByOrderId_IsNull() {
//        String orderId = "";
//        DeliveryDetail deDetail = productDao.getDeliveryDetailByOrderId(orderId);
//        assertNull(deDetail);
//    }
//
////exception test : orderId =”1” but order just deleted in db;
//    @Test
//    public void testgetDeliveryDetailByOrderId_OrderDeleted() {
//        String orderId = "1";
//        DeliveryDetail deDetail = productDao.getDeliveryDetailByOrderId(orderId);
//        assertNull(deDetail);
//    }
//
////exception test : orderId not number
//    @Test
//    public void testgetDeliveryDetailByOrderId_OrderNotNumber() {
//        String orderId = "B";
//        DeliveryDetail deDetail = productDao.getDeliveryDetailByOrderId(orderId);
//        assertNull(deDetail);
//    }
//

    

//    @Test
//    public void testGetAllOrderByAccId() {
//        String accountId = "-1";
//        //exception test account not exist in database
//        List<Order> orders = productDao.getAllOrderByAccId(accountId);
//        assertTrue(orders.isEmpty());
//
//        //valid test accountId exist and have order
//        accountId = "1";
//        List<Order> order_Exist = productDao.getAllOrderByAccId(accountId);
//        assertFalse(order_Exist.isEmpty());
//
//        //exception test account exist but have no order
//        accountId = "2";
//        List<Order> order_ExistNoOrder = productDao.getAllOrderByAccId(accountId);
//        assertTrue(order_ExistNoOrder.isEmpty());
//
//        //exception test account in valid format
//        accountId = "2Ab";
//        List<Order> order_2AbFormat = productDao.getAllOrderByAccId(accountId);
//        assertTrue(order_2AbFormat.isEmpty());
//
//    }
}
