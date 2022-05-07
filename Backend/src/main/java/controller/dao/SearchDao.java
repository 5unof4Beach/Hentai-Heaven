/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.dao;

import controller.ReadController;
import controller.dbHelper.DatabaseHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Truyen;

/**
 *
 * @author suckm
 */
public class SearchDao {
    Connection con = null;
    public SearchDao() {
        DatabaseHelper dbh = new DatabaseHelper();
        con = dbh.getConn();
    }
    
    public Vector<Truyen> search(String nd){
        String content = nd.trim();
        
        String query = "select * from truyen where ten like ?";
        ResultSet rs = null;
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "%" + content + "%");
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadController.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Ko co result set");
        }
        
        
        Vector<Truyen> ts = new Vector<>();
        try {
            while(rs.next()){
                Truyen t = new Truyen(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4));
                ts.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReadController.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(SearchDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ts;
    }
    
    public Vector<Truyen> getTruyen(int soLuong){
        String query = "select * from dbo.truyen";
        ResultSet rs = null;
        try {
            PreparedStatement ps = con.prepareStatement(query);
//            ps.setString(1, "%" + content + "%");
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadController.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Ko co result set");
        }
        
        
        Vector<Truyen> ts = new Vector<>();
        try {
            while(rs.next()){
                Truyen t = new Truyen(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4));
                ts.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReadController.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(SearchDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ts;
    }
    
}
