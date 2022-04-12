/*

 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.dao;

import controller.ReadController;
import controller.dbHelper.DatabaseHelper;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Truyen;

/**
 *
 * @author suckm
 */
public class ReadDao {

    private Connection conn = null;
    public ReadDao() {
        DatabaseHelper dbc = new DatabaseHelper();
        conn = dbc.getConn();
        
    }
    
    public Truyen getTruyenInfoByID(String id){
        Statement stm = null;
        Truyen t = new Truyen("unknown", "unkown", "unknown", 0);
        try {
            stm = conn.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(ReadDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        ResultSet rs = null;
        try {
            rs = stm.executeQuery("select * from truyen where truyenID = '" + id + "';" );
        } catch (SQLException ex) {
            Logger.getLogger(ReadController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            while(rs.next()){
                t = new Truyen(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReadController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return t;
    }
    
}
