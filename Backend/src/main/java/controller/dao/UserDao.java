/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.dao;

import controller.dbHelper.DatabaseHelper;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
        DatabaseHelper dbc = new DatabaseHelper();
        conn = dbc.getConn();
    }
    
    public User login(String user, String pass){
        String sql = "select * from user where username = ? and password = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return new User(rs.getString(2),rs.getString(3),rs.getString(7), rs.getInt(5));
            }
        } catch (Exception e) {
            System.out.println("No result for user found");
        }
        return null;
    }
    
    public String signup(String Ho, String Ten, String hashedPassword, String username){
        String sql = "insert into user(firstName, lastName, password, username) values(?, ?, ?, ?);";
        if(username.equals("")) return null;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, Ten);
            ps.setString(2, Ho);
            ps.setString(3, hashedPassword);
            ps.setString(4, username);
            ps.execute();
            return new String("sucessfully");
        } catch (Exception e) {
            System.err.println(e);
            System.out.println("No result for user found");
        }
        return null;
    }

}
