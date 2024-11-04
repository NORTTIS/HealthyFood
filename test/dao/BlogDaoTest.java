/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dao;

import java.util.List;
import java.util.Map;
import model.Blog;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Minh
 */
public class BlogDaoTest {
    
    public BlogDaoTest() {
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
     * Test of createBlog method, of class BlogDao.
     */
    @Test
    public void testCreateBlog() {
        System.out.println("createBlog");
        String nutriId = "";
        String title = "";
        String cateId = "";
        String content = "";
        String image = "";
        String bmirange = "";
        BlogDao instance = new BlogDao();
        instance.createBlog(nutriId, title, cateId, content, image, bmirange);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllBlogCategory method, of class BlogDao.
     */
    @Test
    public void testGetAllBlogCategory() {
        System.out.println("getAllBlogCategory");
        BlogDao instance = new BlogDao();
        Map<Integer, String> expResult = null;
        Map<Integer, String> result = instance.getAllBlogCategory();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getBlogById method, of class BlogDao.
     */
    @Test
    public void testGetBlogById() {
        System.out.println("getBlogById");
        String id = "";
        BlogDao instance = new BlogDao();
        Blog expResult = null;
        Blog result = instance.getBlogById(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCategoryByBlogId method, of class BlogDao.
     */
    @Test
    public void testGetCategoryByBlogId() {
        System.out.println("getCategoryByBlogId");
        String blogid = "";
        BlogDao instance = new BlogDao();
        String expResult = "";
        String result = instance.getCategoryByBlogId(blogid);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of calNumPageBlog method, of class BlogDao.
     */
    @Test
    public void testCalNumPageBlog() {
        System.out.println("calNumPageBlog");
        List<Blog> list = null;
        BlogDao instance = new BlogDao();
        int expResult = 0;
        int result = instance.calNumPageBlog(list);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllBlog method, of class BlogDao.
     */
    @Test
    public void testGetAllBlog() {
        System.out.println("getAllBlog");
        String nutriId = "";
        String cateId = "";
        int pageIndex = 0;
        String searchValue = "";
        String bmirange = "";
        BlogDao instance = new BlogDao();
        List<Blog> expResult = null;
        List<Blog> result = instance.getAllBlog(nutriId, cateId, pageIndex, searchValue, bmirange);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllBlogs method, of class BlogDao.
     */
    @Test
    public void testGetAllBlogs() {
        System.out.println("getAllBlogs");
        String nutriId = "";
        String cateId = "";
        String searchValue = "";
        String bmirange = "";
        BlogDao instance = new BlogDao();
        List<Blog> expResult = null;
        List<Blog> result = instance.getAllBlogs(nutriId, cateId, searchValue, bmirange);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of updateBlog method, of class BlogDao.
     */
    @Test
    public void testUpdateBlog() {
        System.out.println("updateBlog");
        String blogId = "";
        String title = "";
        String cateId = "";
        String content = "";
        String image = "";
        BlogDao instance = new BlogDao();
        instance.updateBlog(blogId, title, cateId, content, image);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of deleteBlog method, of class BlogDao.
     */
    @Test
    public void testDeleteBlog() {
        System.out.println("deleteBlog");
        String blogId = "";
        BlogDao instance = new BlogDao();
        instance.deleteBlog(blogId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getBMICategory method, of class BlogDao.
     */
    @Test
    public void testGetBMICategory() {
        System.out.println("getBMICategory");
        String bmiIndex = "";
        BlogDao instance = new BlogDao();
        String expResult = "";
        String result = instance.getBMICategory(bmiIndex);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of main method, of class BlogDao.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        BlogDao.main(args);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
