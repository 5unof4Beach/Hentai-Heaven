/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4Suite.java to edit this template
 */
package controller;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

/**
 *
 * @author Hung Dinh
 */
@RunWith(Suite.class)
@Suite.SuiteClasses({controller.HomeControllerTest.class, controller.DangKyControllerTest.class, controller.DangXuatControllerTest.class, controller.DangNhapControllerTest.class, controller.TimKiemControllerTest.class, controller.DocTruyenControllerTest.class, controller.api.ApiSuite.class})
public class ControllerSuite {

    @BeforeClass
    public static void setUpClass() throws Exception {
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }
    
}
