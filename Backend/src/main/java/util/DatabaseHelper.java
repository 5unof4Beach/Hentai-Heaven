/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoException;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.eq;
import com.mongodb.client.model.Projections;
import java.net.UnknownHostException;
import org.bson.BsonDocument;
import org.bson.Document;
import org.bson.BsonInt64;
import org.bson.conversions.Bson;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DatabaseHelper {
    
    private static DatabaseHelper instance;

    private Connection conn = null;
    private MongoDatabase mongo = null;
    private Statement stmt = null;
    
    private DatabaseHelper() {
        loadDriver();
        connnect();
        connectMongoDB();
        statementCreate();
    }
    
    public static DatabaseHelper getSingletonInstance(){
        if(instance == null){
            instance = new DatabaseHelper();
        }
        return instance;
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
            String[] IPS = {"10.147.17.50", "localhost:1433", "10.147.17.79", "172.17.0.4:1433"};
            String[] PWS = {"1", "Buiminhduc2001"};
            String IP = IPS[3];
            String pw = PWS[1];
        try {

            String dbURL = "jdbc:sqlserver://" + IP + ";databaseName=BTLWEB;encrypt=false";
            String usrname = "sa";
            conn = DriverManager.getConnection(dbURL, usrname, pw);

            if (conn != null) {
                System.out.println("SQL Server Connected" + IP);
                DatabaseMetaData dm = (DatabaseMetaData) conn.getMetaData();
                System.out.println("Driver name: " + dm.getDriverName());
                System.out.println("Driver version: " + dm.getDriverVersion());
                System.out.println("Product name: " + dm.getDatabaseProductName());
                System.out.println("Product version: " + dm.getDatabaseProductVersion());
            }
        } catch (SQLException ex) {
            System.err.println("Cannot connect database, " + IP + " password: "+ pw +ex);
        }
    }
    
    public void connectMongoDB(){
        String[] IPS = {"10.147.17.50", "localhost:27017", "172.17.0.2"};
        String IP = IPS[2];
        String uri = "mongodb://" + IP;
        
        MongoClient mongoClient = null;
        
        try{
            mongoClient = new MongoClient(IP);
            System.out.println("Mongo Connected");
        }
        catch(MongoException e){
            System.err.println("Cannot connect mongoDB database, " + e);
            return;
        }
        
//        mongo = mongoClient.getDatabase("BTLWEB");
        mongo = mongoClient.getDatabase("TTCS");
        
    }

    public Connection getConn() {
        return conn;
    }

    public Statement getStmt() {
        return stmt;
    }

    public MongoDatabase getMongo() {
        return mongo;
    }

    private void loadDriver() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            System.out.println("Sql Server Driver loaded!");
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Cannot find the driver in the classpath!", e);
        }
        
        try {
            Class.forName("com.mongodb.jdbc.MongoDriver");
            System.out.println("MongoDB Server Driver loaded!");
        } catch (ClassNotFoundException e) {
            System.err.println(e);
        }
    }

}
