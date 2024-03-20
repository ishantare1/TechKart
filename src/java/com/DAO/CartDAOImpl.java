/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAO;

import com.entity.Cart;
import com.entity.DeviceDtls;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class CartDAOImpl implements CartDAO {
    
        
        private Connection conn;
        
        public CartDAOImpl(Connection conn)
        {
            this.conn=conn;
        }
        
   public boolean addCart(Cart c) {  
       boolean f=false;
       
       try{
           
           String sql="insert into cart(did,uid,deviceName,price,total_price) values(?,?,?,?,?)";
           PreparedStatement ps=conn.prepareStatement(sql);
           ps.setInt(1, c.getDid());
           ps.setInt(2, c.getUserId());
           ps.setString(3, c.getDeviceName());
           ps.setString(4, c.getPrice());
           ps.setDouble(5, c.getTotalPrice());
           
          int i= ps.executeUpdate();
          if(i==1)
          {
              f=true;
          }
       } catch (Exception e) {
          e.printStackTrace();
       }
       
       
        return f;
    }
   
   public List<Cart> getDeviceByUser(int userId){
       List<Cart> list=new ArrayList <Cart>();
      Cart c=null;
      double totalPrice=0; 
       try {
           String sql="select * from cart where uid=?";
           PreparedStatement ps=conn.prepareStatement(sql);
           ps.setInt(1, userId);
           
           ResultSet rs=ps.executeQuery();
           
           while(rs.next())
           {
             c=new Cart(); 
             c.setCid(rs.getInt(1));
             c.setDid(rs.getInt(2));
             c.setUserId(rs.getInt(3));
             c.setDeviceName(rs.getString(4));
             c.setPrice(rs.getString(5));
             
             totalPrice=totalPrice+rs.getDouble(6);
             c.setTotalPrice(totalPrice);
             
             list.add(c);
             
           }
           
       } catch (Exception e) {
           e.printStackTrace();
       }
       
       
       return list;
   }
   
    public boolean deleteDevice(int did,int uid,int cid) {
        
        boolean f=false;
     
        try {
            String sql="delete from cart where did=? and uid=? and cid=?";
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, did);
            ps.setInt(2, uid);
            ps.setInt(3, cid);
            
            int i=ps.executeUpdate();
            
            if(i==1)
            {
                f=true;
            }
            
        } catch(SQLException e) {
            e.printStackTrace();
            
        }
        
        return f;
    }
    
}
