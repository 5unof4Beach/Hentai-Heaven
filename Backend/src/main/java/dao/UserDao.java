/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import util.DatabaseHelper;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author suckm
 */
public class UserDao {
    private Connection conn = null;
    public UserDao() {
//        DatabaseHelper dbc = new DatabaseHelper();
        DatabaseHelper dbc = DatabaseHelper.getSingletonInstance();
        conn = dbc.getConn();
    }
    
    public User login(String user, String pass){
        String sql = "select * from [dbo].[user] where username = ? and password = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return new User(rs.getString(1),rs.getString(2),rs.getString(5), rs.getInt(3));
            }
        } catch (Exception e) {
            System.out.println("No result for user found");
        }
        
//        try {
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
//        }
        
        return null;
    }
    
    public String signup(String Ho, String Ten, String hashedPassword, String username){
        String sql = "INSERT INTO [dbo].[user]([firstName],[lastName],[password],[username])VALUES(?, ?, ?, ?)";
        if(username.equals("")) return null;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, Ten);
            ps.setString(2, Ho);
            ps.setString(3, hashedPassword);
            ps.setString(4, username);
            ps.execute();
            return "sucessfully";
        } catch (Exception e) {
            System.err.println(e);
            System.out.println("No result for user found");
        }
        
//        try {
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
//        }
        
        return null;
    }

}
