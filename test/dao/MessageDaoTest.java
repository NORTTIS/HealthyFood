/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dao;

import java.util.List;
import model.Messages;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Minh
 */
public class MessageDaoTest {
    
    public MessageDaoTest() {
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
     * Test of saveMessage method, of class MessageDao.
     */
    @Test
    public void testSaveMessage() {
        System.out.println("saveMessage");
        int senderId = 0;
        int receiverId = 0;
        String message = "";
        MessageDao instance = new MessageDao();
        instance.saveMessage(senderId, receiverId, message);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getMessagesByConversation method, of class MessageDao.
     */
    @Test
    public void testGetMessagesByConversation() {
        System.out.println("getMessagesByConversation");
        String senderId = "";
        String receiverId = "";
        MessageDao instance = new MessageDao();
        List<Messages> expResult = null;
        List<Messages> result = instance.getMessagesByConversation(senderId, receiverId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of main method, of class MessageDao.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        MessageDao.main(args);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
