/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package controller.dao;

import java.util.Vector;
import model.Truyen;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author suckm
 */
public class SearchDaoTest {
    
    public SearchDaoTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
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
     * Test of search method, of class SearchDao.
     */
    @Test
    public void testSearch() {
        System.out.println("search");
        String nd = "";
        SearchDao instance = new SearchDao();
        Vector<Truyen> expResult = null;
        Vector<Truyen> result = instance.search(nd);
        assertNull(result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTruyen method, of class SearchDao.
     */
    @Test
    public void testGetTruyen() {
        System.out.println("getTruyen");
        int soLuong = 0;
        SearchDao instance = new SearchDao();
        Vector<Truyen> expResult = null;
        Vector<Truyen> result = instance.getTruyen(soLuong);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
