/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Truyen;
import util.DatabaseHelper;

/**
 *
 * @author suckm
 */
public class TruyenDao {
    Connection con = null;
    public TruyenDao() {
        DatabaseHelper dbh = new DatabaseHelper();
        con = dbh.getConn();
    }
    
    public Boolean themTruyen(Truyen t){
        String query = "INSERT INTO [dbo].[truyen]([idTruyen],[ten],[nxb])VALUES(?, ?, ?)";
        
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, t.getId());
            ps.setString(2, t.getTen());
            ps.setString(3, t.getNxb());
            ps.execute();
            System.out.println("Them Truyen Thanh Cong");
            dongKetnoi();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(TruyenDao.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Them Truyen Khong Thanh Cong");
        }
        dongKetnoi();
        return false;
    }
    
    public void dongKetnoi(){
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(TruyenDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
