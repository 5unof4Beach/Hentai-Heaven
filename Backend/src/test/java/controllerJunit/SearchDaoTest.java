/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllerJunit;

import controller.HomeController;
import controller.dao.SearchDao;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

/**
 *
 * @author suckm
 */
public class SearchDaoTest {
    SearchDao searchDao;
    
    @BeforeEach
    void setUp(){
        searchDao = new SearchDao();
    }
    
    @Test
    @DisplayName("Chay thu")
    void testLayTruyen(){
        Assertions.assertNotNull(searchDao.getTruyen(10), "Lay 10 truyen");
    }
}
