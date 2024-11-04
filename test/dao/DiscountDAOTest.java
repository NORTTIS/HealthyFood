/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dao;

import java.util.List;
import model.Discount;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Minh
 */
public class DiscountDAOTest {
    
    public DiscountDAOTest() {
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
     * Test of getAllDiscounts method, of class DiscountDAO.
     */
    @Test
    public void testGetAllDiscounts_int_int() {
        System.out.println("getAllDiscounts");
        int page = 0;
        int totalObj = 0;
        DiscountDAO instance = new DiscountDAO();
        List<Discount> expResult = null;
        List<Discount> result = instance.getAllDiscounts(page, totalObj);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllDiscounts method, of class DiscountDAO.
     */
    @Test
    public void testGetAllDiscounts_0args() {
        System.out.println("getAllDiscounts");
        DiscountDAO instance = new DiscountDAO();
        List<Discount> expResult = null;
        List<Discount> result = instance.getAllDiscounts();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of createDiscount method, of class DiscountDAO.
     */
    @Test
    public void testCreateDiscount() {
        System.out.println("createDiscount");
        int discountValue = 0;
        String discountName = "";
        DiscountDAO instance = new DiscountDAO();
        instance.createDiscount(discountValue, discountName);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of updateDiscounts method, of class DiscountDAO.
     */
    @Test
    public void testUpdateDiscounts() {
        System.out.println("updateDiscounts");
        int id = 0;
        int discountValue = 0;
        String discountName = "";
        DiscountDAO instance = new DiscountDAO();
        instance.updateDiscounts(id, discountValue, discountName);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of deleteDiscount method, of class DiscountDAO.
     */
    @Test
    public void testDeleteDiscount() {
        System.out.println("deleteDiscount");
        int id = 0;
        DiscountDAO instance = new DiscountDAO();
        instance.deleteDiscount(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTotalPages method, of class DiscountDAO.
     */
    @Test
    public void testGetTotalPages() {
        System.out.println("getTotalPages");
        int totalObj = 0;
        DiscountDAO instance = new DiscountDAO();
        int expResult = 0;
        int result = instance.getTotalPages(totalObj);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of main method, of class DiscountDAO.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        DiscountDAO.main(args);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
