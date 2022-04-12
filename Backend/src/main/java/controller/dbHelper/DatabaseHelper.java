/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.dbHelper;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DatabaseHelper {
    private static Connection conn = null; 
    private Statement stmt = null;
    
    public DatabaseHelper() {
        loadDriver();
        connnect();
        statementCreate();
        System.out.println("called");
        
        if(conn != null){
            System.out.println("conn is not Null");
        }
        else{
            System.out.println("conn is NULL");
            
        }
        
    }
    
    //*
    public static void main(String[] args) throws SQLException {
        connnectDB();
        Statement stmt = conn.createStatement();
        
        ResultSet rs = null;
        try {
            rs = stmt.executeQuery("select * from user");
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            // show data
            while (rs.next()) {
                System.out.println(rs.getInt(1) + "  " + rs.getString(2) 
                        + "  " + rs.getString(3) + " " +rs.getString(4));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //*/
    
    public void statementCreate(){
        try {
            stmt = conn.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("sth fucked up");
        }
    }
    
    public void connnect(){
//        Connection conn = null;
        try {
            String dbURL = "jdbc:mysql://localhost:3306/hentai-heaven";
            String usrname = "root";
            String pw    = "admin";
            conn = DriverManager.getConnection(dbURL, usrname, pw);
            if (conn != null) {
                System.out.println("Connected");
                DatabaseMetaData dm = (DatabaseMetaData) conn.getMetaData();
                System.out.println("Driver name: " + dm.getDriverName());
                System.out.println("Driver version: " + dm.getDriverVersion());
                System.out.println("Product name: " + dm.getDatabaseProductName());
                System.out.println("Product version: " + dm.getDatabaseProductVersion());
            }
       } catch (SQLException ex) {
            System.err.println("Cannot connect database, " + ex);
       }
    }
    
    private static void connnectDB(){
        try {
            String dbURL = "jdbc:mysql://localhost:3306/hentai-heaven";
            String usrname = "root";
            String pw    = "admin";
            conn = DriverManager.getConnection(dbURL, usrname, pw);
            if (conn != null) {
                System.out.println("Connected");
                DatabaseMetaData dm = (DatabaseMetaData) conn.getMetaData();
                System.out.println("Driver name: " + dm.getDriverName());
                System.out.println("Driver version: " + dm.getDriverVersion());
                System.out.println("Product name: " + dm.getDatabaseProductName());
                System.out.println("Product version: " + dm.getDatabaseProductVersion());
            }
       } catch (SQLException ex) {
            System.err.println("Cannot connect database, " + ex);
       }
    }

    public Connection getConn() {
        return conn;
    }
    
    
    public Statement getStmt() {
        return stmt;
    }
    
    private void loadDriver(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded!");
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Cannot find the driver in the classpath!", e);
        }
    }
}
