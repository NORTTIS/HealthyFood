/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dao;

import java.util.List;
import java.util.Map;
import model.Cart;
import model.Category;
import model.DeliveryDetail;
import model.Order;
import model.Products;
import model.Reviews;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Minh
 */
public class ProductDaoTest {
    
    public ProductDaoTest() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getAllProduct method, of class ProductDao.
     */
    @Test
    public void testGetAllProduct() {
        System.out.println("getAllProduct");
        ProductDao instance = new ProductDao();
        List<Products> expResult = null;
        List<Products> result = instance.getAllProduct();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllCategory method, of class ProductDao.
     */
    @Test
    public void testGetAllCategory() {
        System.out.println("getAllCategory");
        ProductDao instance = new ProductDao();
        List<Category> expResult = null;
        List<Category> result = instance.getAllCategory();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProductsByCateId method, of class ProductDao.
     */
    @Test
    public void testGetProductsByCateId() {
        System.out.println("getProductsByCateId");
        String cid = "";
        ProductDao instance = new ProductDao();
        List<Products> expResult = null;
        List<Products> result = instance.getProductsByCateId(cid);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProductsById method, of class ProductDao.
     */
    @Test
    public void testGetProductsById() {
        System.out.println("getProductsById");
        String id = "";
        ProductDao instance = new ProductDao();
        Products expResult = null;
        Products result = instance.getProductsById(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of searchByName method, of class ProductDao.
     */
    @Test
    public void testSearchByName() {
        System.out.println("searchByName");
        String txtSearch = "";
        ProductDao instance = new ProductDao();
        List<Products> expResult = null;
        List<Products> result = instance.searchByName(txtSearch);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getWishIdByAccountId method, of class ProductDao.
     */
    @Test
    public void testGetWishIdByAccountId() {
        System.out.println("getWishIdByAccountId");
        String accountid = "";
        ProductDao instance = new ProductDao();
        String expResult = "";
        String result = instance.getWishIdByAccountId(accountid);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of addProductToWishList method, of class ProductDao.
     */
    @Test
    public void testAddProductToWishList() {
        System.out.println("addProductToWishList");
        Products prod = null;
        String wishId = "";
        int quantity = 0;
        ProductDao instance = new ProductDao();
        instance.addProductToWishList(prod, wishId, quantity);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getWishCartByAccountId method, of class ProductDao.
     */
    @Test
    public void testGetWishCartByAccountId() {
        System.out.println("getWishCartByAccountId");
        String accountId = "";
        ProductDao instance = new ProductDao();
        Cart expResult = null;
        Cart result = instance.getWishCartByAccountId(accountId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of deleteWishItem method, of class ProductDao.
     */
    @Test
    public void testDeleteWishItem() {
        System.out.println("deleteWishItem");
        String productid = "";
        String accountId = "";
        ProductDao instance = new ProductDao();
        instance.deleteWishItem(productid, accountId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllProductCategory method, of class ProductDao.
     */
    @Test
    public void testGetAllProductCategory() {
        System.out.println("getAllProductCategory");
        ProductDao instance = new ProductDao();
        Map<Integer, String> expResult = null;
        Map<Integer, String> result = instance.getAllProductCategory();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of createOrder method, of class ProductDao.
     */
    @Test
    public void testCreateOrder() {
        System.out.println("createOrder");
        Cart cart = null;
        String accountId = "";
        ProductDao instance = new ProductDao();
        String expResult = "";
        String result = instance.createOrder(cart, accountId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of updateProductStock method, of class ProductDao.
     */
    @Test
    public void testUpdateProductStock() {
        System.out.println("updateProductStock");
        int productId = 0;
        int quantity = 0;
        ProductDao instance = new ProductDao();
        instance.updateProductStock(productId, quantity);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of CheckvalidStockOrderItem method, of class ProductDao.
     */
    @Test
    public void testCheckvalidStockOrderItem() {
        System.out.println("CheckvalidStockOrderItem");
        Cart cart = null;
        ProductDao instance = new ProductDao();
        boolean expResult = false;
        boolean result = instance.CheckvalidStockOrderItem(cart);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getOrderById method, of class ProductDao.
     */
    @Test
    public void testGetOrderById() {
        System.out.println("getOrderById");
        String orderId = "";
        ProductDao instance = new ProductDao();
        Order expResult = null;
        Order result = instance.getOrderById(orderId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of saveDeliveryDetail method, of class ProductDao.
     */
    @Test
    public void testSaveDeliveryDetail() {
        System.out.println("saveDeliveryDetail");
        DeliveryDetail deDetail = null;
        ProductDao instance = new ProductDao();
        instance.saveDeliveryDetail(deDetail);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDeliveryDetailByOrderId method, of class ProductDao.
     */
    @Test
    public void testGetDeliveryDetailByOrderId() {
        System.out.println("getDeliveryDetailByOrderId");
        String orderId = "";
        ProductDao instance = new ProductDao();
        DeliveryDetail expResult = null;
        DeliveryDetail result = instance.getDeliveryDetailByOrderId(orderId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of ReviewProduct method, of class ProductDao.
     */
    @Test
    public void testReviewProduct() {
        System.out.println("ReviewProduct");
        String productId = "";
        String accountId = "";
        String rating = "";
        String comment = "";
        ProductDao instance = new ProductDao();
        instance.ReviewProduct(productId, accountId, rating, comment);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getReviewByProdId method, of class ProductDao.
     */
    @Test
    public void testGetReviewByProdId_3args() {
        System.out.println("getReviewByProdId");
        int pageIndex = 0;
        int star = 0;
        String prodId = "";
        ProductDao instance = new ProductDao();
        List<Reviews> expResult = null;
        List<Reviews> result = instance.getReviewByProdId(pageIndex, star, prodId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getReviewByProdId method, of class ProductDao.
     */
    @Test
    public void testGetReviewByProdId_int_String() {
        System.out.println("getReviewByProdId");
        int star = 0;
        String prodId = "";
        ProductDao instance = new ProductDao();
        List<Reviews> expResult = null;
        List<Reviews> result = instance.getReviewByProdId(star, prodId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of calNumPageBlog method, of class ProductDao.
     */
    @Test
    public void testCalNumPageBlog() {
        System.out.println("calNumPageBlog");
        List<Reviews> list = null;
        ProductDao instance = new ProductDao();
        int expResult = 0;
        int result = instance.calNumPageBlog(list);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllOrderByAccId method, of class ProductDao.
     */
    @Test
    public void testGetAllOrderByAccId() {
        System.out.println("getAllOrderByAccId");
        String accountId = "";
        ProductDao instance = new ProductDao();
        List<Order> expResult = null;
        List<Order> result = instance.getAllOrderByAccId(accountId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getOrderDetailById method, of class ProductDao.
     */
    @Test
    public void testGetOrderDetailById() {
        System.out.println("getOrderDetailById");
        String orderId = "";
        ProductDao instance = new ProductDao();
        Cart expResult = null;
        Cart result = instance.getOrderDetailById(orderId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getBMICategory method, of class ProductDao.
     */
    @Test
    public void testGetBMICategory() {
        System.out.println("getBMICategory");
        double bmi = 0.0;
        ProductDao instance = new ProductDao();
        int expResult = 0;
        int result = instance.getBMICategory(bmi);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProductsByPrice method, of class ProductDao.
     */
    @Test
    public void testGetProductsByPrice() {
        System.out.println("getProductsByPrice");
        String fromPrice = "";
        String toPrice = "";
        ProductDao instance = new ProductDao();
        List<Products> expResult = null;
        List<Products> result = instance.getProductsByPrice(fromPrice, toPrice);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of createProduct method, of class ProductDao.
     */
    @Test
    public void testCreateProduct() {
        System.out.println("createProduct");
        int category_id = 0;
        String supplier = "";
        String name = "";
        String description = "";
        double price = 0.0;
        int quanty = 0;
        double calo = 0.0;
        String picture = "";
        ProductDao instance = new ProductDao();
        instance.createProduct(category_id, supplier, name, description, price, quanty, calo, picture);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of calculateBMI method, of class ProductDao.
     */
    @Test
    public void testCalculateBMI() {
        System.out.println("calculateBMI");
        double weight = 0.0;
        double height = 0.0;
        ProductDao instance = new ProductDao();
        double expResult = 0.0;
        double result = instance.calculateBMI(weight, height);
        assertEquals(expResult, result, 0);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getMonthlyRevenue method, of class ProductDao.
     */
    @Test
    public void testGetMonthlyRevenue() {
        System.out.println("getMonthlyRevenue");
        String month = "";
        ProductDao instance = new ProductDao();
        List<Products> expResult = null;
        List<Products> result = instance.getMonthlyRevenue(month);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTotalMonthlyRevenue method, of class ProductDao.
     */
    @Test
    public void testGetTotalMonthlyRevenue() {
        System.out.println("getTotalMonthlyRevenue");
        int month = 0;
        int year = 0;
        ProductDao instance = new ProductDao();
        double expResult = 0.0;
        double result = instance.getTotalMonthlyRevenue(month, year);
        assertEquals(expResult, result, 0);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of sortProductsByPrice method, of class ProductDao.
     */
    @Test
    public void testSortProductsByPrice() {
        System.out.println("sortProductsByPrice");
        String sortType = "";
        ProductDao instance = new ProductDao();
        List<Products> expResult = null;
        List<Products> result = instance.sortProductsByPrice(sortType);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of sortProductsByCalories method, of class ProductDao.
     */
    @Test
    public void testSortProductsByCalories() {
        System.out.println("sortProductsByCalories");
        String sortType = "";
        ProductDao instance = new ProductDao();
        List<Products> expResult = null;
        List<Products> result = instance.sortProductsByCalories(sortType);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProducts method, of class ProductDao.
     */
    @Test
    public void testGetProducts() throws Exception {
        System.out.println("getProducts");
        int pageNumber = 0;
        int pageSize = 0;
        ProductDao instance = new ProductDao();
        List<Products> expResult = null;
        List<Products> result = instance.getProducts(pageNumber, pageSize);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTotalPage method, of class ProductDao.
     */
    @Test
    public void testGetTotalPage() {
        System.out.println("getTotalPage");
        List<Products> list = null;
        ProductDao instance = new ProductDao();
        int expResult = 0;
        int result = instance.getTotalPage(list);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTotalProduct method, of class ProductDao.
     */
    @Test
    public void testGetTotalProduct() {
        System.out.println("getTotalProduct");
        ProductDao instance = new ProductDao();
        int expResult = 0;
        int result = instance.getTotalProduct();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of pagingProduct method, of class ProductDao.
     */
    @Test
    public void testPagingProduct() {
        System.out.println("pagingProduct");
        int index = 0;
        ProductDao instance = new ProductDao();
        List<Products> expResult = null;
        List<Products> result = instance.pagingProduct(index);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllDiscountProduct method, of class ProductDao.
     */
    @Test
    public void testGetAllDiscountProduct() {
        System.out.println("getAllDiscountProduct");
        ProductDao instance = new ProductDao();
        List<Products> expResult = null;
        List<Products> result = instance.getAllDiscountProduct();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getMenuProduct method, of class ProductDao.
     */
    @Test
    public void testGetMenuProduct() {
        System.out.println("getMenuProduct");
        int menuId = 0;
        ProductDao instance = new ProductDao();
        List<Products> expResult = null;
        List<Products> result = instance.getMenuProduct(menuId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getLastProductId method, of class ProductDao.
     */
    @Test
    public void testGetLastProductId() {
        System.out.println("getLastProductId");
        ProductDao instance = new ProductDao();
        int expResult = 0;
        int result = instance.getLastProductId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setMenuDetail method, of class ProductDao.
     */
    @Test
    public void testSetMenuDetail() {
        System.out.println("setMenuDetail");
        int menuId = 0;
        int productId = 0;
        ProductDao instance = new ProductDao();
        instance.setMenuDetail(menuId, productId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
