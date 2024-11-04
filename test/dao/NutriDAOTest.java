/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dao;

import java.util.List;
import java.util.Map;
import model.Menu;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Minh
 */
public class NutriDAOTest {
    
    public NutriDAOTest() {
    }

    /**
     * Test of getAllMenu method, of class NutriDAO.
     */
    @Test
    public void testGetAllMenu() {
        System.out.println("getAllMenu");
        int id = 0;
        NutriDAO instance = new NutriDAO();
        Map<String, Map<String, List<Menu>>> expResult = null;
        Map<String, Map<String, List<Menu>>> result = instance.getAllMenu(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of seeAllMenu method, of class NutriDAO.
     */
    @Test
    public void testSeeAllMenu() {
        System.out.println("seeAllMenu");
        NutriDAO instance = new NutriDAO();
        Map<String, Map<String, List<Menu>>> expResult = null;
        Map<String, Map<String, List<Menu>>> result = instance.seeAllMenu();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getMenuByStatus method, of class NutriDAO.
     */
    @Test
    public void testGetMenuByStatus() {
        System.out.println("getMenuByStatus");
        int id = 0;
        String status = "";
        NutriDAO instance = new NutriDAO();
        Map<String, Map<String, List<Menu>>> expResult = null;
        Map<String, Map<String, List<Menu>>> result = instance.getMenuByStatus(id, status);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of allMenuStatus method, of class NutriDAO.
     */
    @Test
    public void testAllMenuStatus() {
        System.out.println("allMenuStatus");
        String status = "";
        NutriDAO instance = new NutriDAO();
        Map<String, Map<String, List<Menu>>> expResult = null;
        Map<String, Map<String, List<Menu>>> result = instance.allMenuStatus(status);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getMenuByType method, of class NutriDAO.
     */
    @Test
    public void testGetMenuByType() {
        System.out.println("getMenuByType");
        int type = 0;
        NutriDAO instance = new NutriDAO();
        Map<String, Map<String, List<Menu>>> expResult = null;
        Map<String, Map<String, List<Menu>>> result = instance.getMenuByType(type);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTypeList method, of class NutriDAO.
     */
    @Test
    public void testGetTypeList() {
        System.out.println("getTypeList");
        NutriDAO instance = new NutriDAO();
        List<String> expResult = null;
        List<String> result = instance.getTypeList();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTypeByTypeID method, of class NutriDAO.
     */
    @Test
    public void testGetTypeByTypeID() {
        System.out.println("getTypeByTypeID");
        int id = 0;
        NutriDAO instance = new NutriDAO();
        String expResult = "";
        String result = instance.getTypeByTypeID(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of menuDecide method, of class NutriDAO.
     */
    @Test
    public void testMenuDecide() {
        System.out.println("menuDecide");
        int firstId = 0;
        int lastId = 0;
        String description = "";
        String decide = "";
        NutriDAO instance = new NutriDAO();
        instance.menuDecide(firstId, lastId, description, decide);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of insertNewMenu method, of class NutriDAO.
     */
    @Test
    public void testInsertNewMenu() {
        System.out.println("insertNewMenu");
        String menuTitle = "";
        int type_id = 0;
        String name = "";
        String description = "";
        int create_by = 0;
        String menu_name = "";
        float average_calories = 0.0F;
        NutriDAO instance = new NutriDAO();
        instance.insertNewMenu(menuTitle, type_id, name, description, create_by, menu_name, average_calories);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of deleteMenu method, of class NutriDAO.
     */
    @Test
    public void testDeleteMenu() {
        System.out.println("deleteMenu");
        int firstID = 0;
        int lastID = 0;
        NutriDAO instance = new NutriDAO();
        instance.deleteMenu(firstID, lastID);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of updateMenuById method, of class NutriDAO.
     */
    @Test
    public void testUpdateMenuById() {
        System.out.println("updateMenuById");
        int menu_id = 0;
        int type_id = 0;
        String name = "";
        String description = "";
        String menu_name = "";
        float average_calories = 0.0F;
        String menuTitle = "";
        NutriDAO instance = new NutriDAO();
        instance.updateMenuById(menu_id, type_id, name, description, menu_name, average_calories, menuTitle);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getMenuByID method, of class NutriDAO.
     */
    @Test
    public void testGetMenuByID() {
        System.out.println("getMenuByID");
        int menu_id = 0;
        NutriDAO instance = new NutriDAO();
        Menu expResult = null;
        Menu result = instance.getMenuByID(menu_id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of checkMenuTitle method, of class NutriDAO.
     */
    @Test
    public void testCheckMenuTitle() {
        System.out.println("checkMenuTitle");
        int userId = 0;
        String menuTitle = "";
        NutriDAO instance = new NutriDAO();
        boolean expResult = false;
        boolean result = instance.checkMenuTitle(userId, menuTitle);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTypeIdByName method, of class NutriDAO.
     */
    @Test
    public void testGetTypeIdByName() {
        System.out.println("getTypeIdByName");
        String name = "All BMIs";
        NutriDAO instance = new NutriDAO();
        int expResult = 7;
        int result = instance.getTypeIdByName(name);
        assertEquals(expResult, result);
    }
    
}
