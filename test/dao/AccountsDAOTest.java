/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dao;

import java.util.List;
import model.Accounts;
import model.GoogleAccount;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Minh
 */
public class AccountsDAOTest {
    
    public AccountsDAOTest() {
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
     * Test of getAllUser method, of class AccountsDAO.
     */
    @Test
    public void testGetAllUser() {
        System.out.println("getAllUser");
        AccountsDAO instance = new AccountsDAO();
        List<Accounts> expResult = null;
        List<Accounts> result = instance.getAllUser();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAccountByUserName method, of class AccountsDAO.
     */
    @Test
    public void testGetAccountByUserName() {
        System.out.println("getAccountByUserName");
        String username = "";
        AccountsDAO instance = new AccountsDAO();
        Accounts expResult = null;
        Accounts result = instance.getAccountByUserName(username);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAccountByEmail method, of class AccountsDAO.
     */
    @Test
    public void testGetAccountByEmail() {
        System.out.println("getAccountByEmail");
        String email = "";
        AccountsDAO instance = new AccountsDAO();
        Accounts expResult = null;
        Accounts result = instance.getAccountByEmail(email);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of createAccount method, of class AccountsDAO.
     */
    @Test
    public void testCreateAccount() {
        System.out.println("createAccount");
        String username = "";
        String password = "";
        String displayname = "";
        String email = "";
        String role = "";
        AccountsDAO instance = new AccountsDAO();
        instance.createAccount(username, password, displayname, email, role);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllAccountByRole method, of class AccountsDAO.
     */
    @Test
    public void testGetAllAccountByRole() {
        System.out.println("getAllAccountByRole");
        String role = "";
        AccountsDAO instance = new AccountsDAO();
        List<Accounts> expResult = null;
        List<Accounts> result = instance.getAllAccountByRole(role);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAccountByid method, of class AccountsDAO.
     */
    @Test
    public void testGetAccountByid() {
        System.out.println("getAccountByid");
        String id = "";
        AccountsDAO instance = new AccountsDAO();
        Accounts expResult = null;
        Accounts result = instance.getAccountByid(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getUserEmail method, of class AccountsDAO.
     */
    @Test
    public void testGetUserEmail() {
        System.out.println("getUserEmail");
        String email = "";
        AccountsDAO instance = new AccountsDAO();
        Accounts expResult = null;
        Accounts result = instance.getUserEmail(email);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of changeStatus method, of class AccountsDAO.
     */
    @Test
    public void testChangeStatus() {
        System.out.println("changeStatus");
        String status = "";
        String username = "";
        AccountsDAO instance = new AccountsDAO();
        instance.changeStatus(status, username);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getsearchManager method, of class AccountsDAO.
     */
    @Test
    public void testGetsearchManager() {
        System.out.println("getsearchManager");
        String username = "";
        String search = "";
        AccountsDAO instance = new AccountsDAO();
        List<Accounts> expResult = null;
        List<Accounts> result = instance.getsearchManager(username, search);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllManagers method, of class AccountsDAO.
     */
    @Test
    public void testGetAllManagers() {
        System.out.println("getAllManagers");
        AccountsDAO instance = new AccountsDAO();
        List<Accounts> expResult = null;
        List<Accounts> result = instance.getAllManagers();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of isUsernameExists method, of class AccountsDAO.
     */
    @Test
    public void testIsUsernameExists() {
        System.out.println("isUsernameExists");
        String username = "";
        AccountsDAO instance = new AccountsDAO();
        boolean expResult = false;
        boolean result = instance.isUsernameExists(username);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of login method, of class AccountsDAO.
     */
    @Test
    public void testLogin() {
        System.out.println("login");
        String username = "";
        String password = "";
        AccountsDAO instance = new AccountsDAO();
        Accounts expResult = null;
        Accounts result = instance.login(username, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of updateUser method, of class AccountsDAO.
     */
    @Test
    public void testUpdateUser_5args() {
        System.out.println("updateUser");
        String username = "";
        String email = "";
        String phone_number = "";
        String password = "";
        String olduser = "";
        AccountsDAO instance = new AccountsDAO();
        instance.updateUser(username, email, phone_number, password, olduser);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of createManager method, of class AccountsDAO.
     */
    @Test
    public void testCreateManager_6args() {
        System.out.println("createManager");
        String username = "";
        String password = "";
        String email = "";
        String phone_number = "";
        String role = "";
        String status = "";
        AccountsDAO instance = new AccountsDAO();
        instance.createManager(username, password, email, phone_number, role, status);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of updateUser method, of class AccountsDAO.
     */
    @Test
    public void testUpdateUser_4args() {
        System.out.println("updateUser");
        String username = "";
        String email = "";
        String phone_number = "";
        String password = "";
        AccountsDAO instance = new AccountsDAO();
        instance.updateUser(username, email, phone_number, password);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of updateUser method, of class AccountsDAO.
     */
    @Test
    public void testUpdateUser_7args() {
        System.out.println("updateUser");
        String id = "";
        String displayname = "";
        String avatar = "";
        String desc = "";
        String email = "";
        String phone = "";
        String address = "";
        AccountsDAO instance = new AccountsDAO();
        instance.updateUser(id, displayname, avatar, desc, email, phone, address);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of main method, of class AccountsDAO.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        AccountsDAO.main(args);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getUser method, of class AccountsDAO.
     */
    @Test
    public void testGetUser() {
        System.out.println("getUser");
        String username = "";
        AccountsDAO instance = new AccountsDAO();
        Accounts expResult = null;
        Accounts result = instance.getUser(username);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getUserById method, of class AccountsDAO.
     */
    @Test
    public void testGetUserById() {
        System.out.println("getUserById");
        String accountId = "";
        AccountsDAO instance = new AccountsDAO();
        Accounts expResult = null;
        Accounts result = instance.getUserById(accountId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of updateUser method, of class AccountsDAO.
     */
    @Test
    public void testUpdateUser_9args() {
        System.out.println("updateUser");
        String username = "";
        String password = "";
        String displayname = "";
        String address = "";
        String description = "";
        String email = "";
        String phone_number = "";
        String avatar = "";
        String account_id = "";
        AccountsDAO instance = new AccountsDAO();
        instance.updateUser(username, password, displayname, address, description, email, phone_number, avatar, account_id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of createManager method, of class AccountsDAO.
     */
    @Test
    public void testCreateManager_9args() {
        System.out.println("createManager");
        String username = "";
        String password = "";
        String displayname = "";
        String address = "";
        String description = "";
        String email = "";
        String phone_number = "";
        String role = "";
        String status = "";
        AccountsDAO instance = new AccountsDAO();
        instance.createManager(username, password, displayname, address, description, email, phone_number, role, status);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getsearchNutritionist method, of class AccountsDAO.
     */
    @Test
    public void testGetsearchNutritionist() {
        System.out.println("getsearchNutritionist");
        String username = "";
        String search = "";
        AccountsDAO instance = new AccountsDAO();
        List<Accounts> expResult = null;
        List<Accounts> result = instance.getsearchNutritionist(username, search);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllNutritionists method, of class AccountsDAO.
     */
    @Test
    public void testGetAllNutritionists() {
        System.out.println("getAllNutritionists");
        AccountsDAO instance = new AccountsDAO();
        List<Accounts> expResult = null;
        List<Accounts> result = instance.getAllNutritionists();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of createNutritionist method, of class AccountsDAO.
     */
    @Test
    public void testCreateNutritionist() {
        System.out.println("createNutritionist");
        String username = "";
        String password = "";
        String displayname = "";
        String address = "";
        String description = "";
        String email = "";
        String phone_number = "";
        String role = "";
        String status = "";
        AccountsDAO instance = new AccountsDAO();
        instance.createNutritionist(username, password, displayname, address, description, email, phone_number, role, status);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of searchByStatusAndUsername method, of class AccountsDAO.
     */
    @Test
    public void testSearchByStatusAndUsername() {
        System.out.println("searchByStatusAndUsername");
        String status = "";
        String username = "";
        AccountsDAO instance = new AccountsDAO();
        List<Accounts> expResult = null;
        List<Accounts> result = instance.searchByStatusAndUsername(status, username);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of searchByStatus method, of class AccountsDAO.
     */
    @Test
    public void testSearchByStatus() {
        System.out.println("searchByStatus");
        String status = "";
        AccountsDAO instance = new AccountsDAO();
        List<Accounts> expResult = null;
        List<Accounts> result = instance.searchByStatus(status);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of loginByGoogle method, of class AccountsDAO.
     */
    @Test
    public void testLoginByGoogle() {
        System.out.println("loginByGoogle");
        GoogleAccount googleAccount = null;
        AccountsDAO instance = new AccountsDAO();
        int expResult = 0;
        int result = instance.loginByGoogle(googleAccount);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
