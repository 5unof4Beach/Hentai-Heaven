/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DatabaseHelper {

    private static Connection conn = null;
    private Statement stmt = null;

    public DatabaseHelper() {
        loadDriver();
        connnect();
        statementCreate();

        if (conn != null) {
            System.out.println("conn is not Null");
        } else {
            System.out.println("conn is NULL");

        }

    }

    public void statementCreate() {
        try {
            stmt = conn.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("sth fucked up");
        }
    }

    public void connnect() {
        try {
            String[] IPS = {"10.147.17.50", "localhost:1433"};

            String IP = IPS[1];
            String dbURL = "jdbc:sqlserver://" + IP + ";databaseName=BTLWEB;encrypt=false";
            String usrname = "sa";
            String pw = "1";
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

    private void loadDriver() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            System.out.println("Driver loaded!");
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Cannot find the driver in the classpath!", e);
        }
    }

}
