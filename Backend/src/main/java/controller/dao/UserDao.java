/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.dao;

import controller.dbHelper.DatabaseHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
                System.out.println(new User(rs.getString(1),rs.getString(2),rs.getString(3)));
                return new User(rs.getString(1),rs.getString(2),rs.getString(3));
            }
        } catch (Exception e) {
            System.out.println("No result for user found");
        }
        return null;
    }
    
    public void signup(String Ho, String Ten, String hashedPassword, String username){
        String sql = "insert into user(firstName, lastName, password, username) values(?, ?, ?, ?);";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, Ten);
            ps.setString(2, Ho);
            ps.setString(3, hashedPassword);
            ps.setString(4, username);
            ps.execute();
        } catch (Exception e) {
            System.err.println(e);
            System.out.println("No result for user found");
        }
    }
}
