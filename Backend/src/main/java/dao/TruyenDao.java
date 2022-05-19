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
        SearchDao sd = new SearchDao();
        String query = "INSERT INTO [dbo].[truyen]([idTruyen],[ten],[nxb],[idTheLoai],[stt])VALUES(?, ?, ?, ?, ?)";
        
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, t.getId());
            ps.setString(2, t.getTen());
            ps.setString(3, t.getNxb());
            ps.setString(4, t.getTheLoai());
            ps.setInt(5, sd.countTruyen()+1);
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
    
    public Boolean suaTruyen(Truyen t){
        SearchDao sd = new SearchDao();
        String query = "UPDATE [dbo].[truyen] set ten = ?, nxb = ?, idTheLoai = ? where idTruyen = ?";
        
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, t.getTen());
            ps.setString(2, t.getNxb());
            ps.setString(3, t.getTheLoai());
            ps.setString(4, t.getId());
            ps.execute();
            System.out.println("Sua Truyen Thanh Cong");
            dongKetnoi();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(TruyenDao.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Sua Truyen Khong Thanh Cong");
        }
        dongKetnoi();
        return false;
    }
    
    public Boolean xoaTruyen(String id){
        SearchDao sd = new SearchDao();
        String query = "DELETE FROM [dbo].[truyen] where idTruyen = ?";
        
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id);
            ps.execute();
            System.out.println("Xoa Truyen Thanh Cong");
            dongKetnoi();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(TruyenDao.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Xoa Truyen Khong Thanh Cong");
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
