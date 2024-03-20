/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DB;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Admin
 */
public class DBConnect {
    private static Connection Conn;
    public static Connection getConn() 
    {
     try{
         Class.forName("com.mysql.jdbc.Driver");
         Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
     }  catch(Exception e) {
                 e.printStackTrace();
     }
     return Conn;
    }
}
    
            
