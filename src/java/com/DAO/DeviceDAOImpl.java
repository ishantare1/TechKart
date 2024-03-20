/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAO;

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
public class DeviceDAOImpl implements DeviceDAO {
    
    private Connection Conn;

    public DeviceDAOImpl(Connection Conn) {
        super();
        this.Conn = Conn;
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

     public boolean addDevice(DeviceDtls b){
         boolean f=false;
         try{
             
             String sql="insert into device_dtls(deviceCategory, deviceName, price, status, photo, user_email) values(?,?,?,?,?,?)";
             PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setString(1, b.getDeviceCategory());
             ps.setString(2, b.getDeviceName());
             ps.setString(3, b.getPrice());
             ps.setString(4, b.getStatus());
             ps.setString(5, b.getPhotoName());
             ps.setString(6, b.getEmail());
             
             
             int i=ps.executeUpdate();
             
             if(i==1){
                 f=true;
             }
         }catch (Exception e){
             e.printStackTrace();
             
         }
         return false;
     }
    
     public List<DeviceDtls> getAllDevice() {
         
         List<DeviceDtls> list=new ArrayList<DeviceDtls>();
         DeviceDtls b=null;
         try{
             String sql="select * from device_dtls";
             PreparedStatement ps=Conn.prepareStatement(sql);
             
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                b=new DeviceDtls();
                b.setDeviceId(rs.getInt(1));
                b.setDeviceCategory(rs.getString(2));
                b.setDeviceName(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);
                
             }
             
         }catch (Exception e) {
             e.printStackTrace();
             
         }
         
         return list;
     }
     
     public DeviceDtls getDeviceById(int id) {
         
         DeviceDtls b=null;
         try{
             String sql="select * from device_dtls where deviceId=?";
             PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setInt(1, id);
             
             ResultSet rs=ps.executeQuery();
             while(rs.next()){
                
                b=new DeviceDtls();
                b.setDeviceId(rs.getInt(1));
                b.setDeviceCategory(rs.getString(2));
                b.setDeviceName(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
             }
             
         } catch (Exception e) {
             e.printStackTrace();
             
         }
         
         return b;
     }
     
     public boolean updateEditDevice(DeviceDtls b) {
         boolean f=false;
         try {
            String  sql="update device_dtls set devicename=?,price=?,status=?, " ;
            PreparedStatement ps=Conn.prepareStatement(sql);
            ps.setString(1, b.getDeviceName());
            ps.setString(2, b.getPrice());
            ps.setString(3, b.getStatus());
            ps.setInt(4, b.getDeviceId());
            
            int i=ps.executeUpdate();
            if(i==1)
            {
                f=true;
            }
            
         } catch (Exception e) {
             e.printStackTrace();
             
         }
         
       return f;  
     }
     
     public boolean deleteDevice(int id) {
         boolean f=false;
         try {
             String sql="delete from device_dtls where deviceId=?";
             PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setInt(1, id);
             int i=ps.executeUpdate();
             if(i==1)
             {
                f=true; 
             }
             
             
         } catch (Exception e){
             e.printStackTrace();
         }
           return f;  
         }
     
     
     public List<DeviceDtls> getSmartPhone() {
         
         List<DeviceDtls> list=new ArrayList<DeviceDtls>();
         DeviceDtls b=null;
         try {
             String sql="select * from device_dtls where deviceCategory=? and status=? order by deviceId DESC";
             PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setString(1,"Phone");
             ps.setString(2, "Active");
             ResultSet rs=ps.executeQuery();
             int i=1;
             while(rs.next() && i<=4)
             {
                b=new DeviceDtls(); 
                b.setDeviceId(rs.getInt(1));
                b.setDeviceCategory(rs.getString(2));
                b.setDeviceName(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);
                i++;
             }
             
             
         } catch (Exception e) {
             e.printStackTrace();
             
         }
         
         return list;
     }
     
     
     public List<DeviceDtls> getLaptops() {
         
         List<DeviceDtls> list2=new ArrayList<DeviceDtls>();
         DeviceDtls b=null;
         try {
             String sql="select * from device_dtls where deviceCategory=? and status=? order by deviceId DESC";
             PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setString(1,"Laptop");
             ps.setString(2, "Active");
             ResultSet rs=ps.executeQuery();
             int i=1;
             while(rs.next() && i<=4)
             {
                b=new DeviceDtls(); 
                b.setDeviceId(rs.getInt(1));
                b.setDeviceCategory(rs.getString(2));
                b.setDeviceName(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list2.add(b);
                i++;
             }
             
             
         } catch (Exception e) {
             e.printStackTrace();
             
         }     
         return list2;
     }
     
     
     public List<DeviceDtls> getSmartWatch() {
         
         List<DeviceDtls> list3=new ArrayList<DeviceDtls>();
         DeviceDtls b=null;
         try {
             String sql="select * from device_dtls where deviceCategory=? and status=? order by deviceId DESC";
             PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setString(1,"Watch"); 
             ps.setString(2, "Active");
             ResultSet rs=ps.executeQuery();
             int i=1;
             while(rs.next() && i<=4)
             {
                b=new DeviceDtls(); 
                b.setDeviceId(rs.getInt(1));
                b.setDeviceCategory(rs.getString(2));
                b.setDeviceName(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list3.add(b);
                i++;
             }
             
             
         } catch (Exception e) {
             e.printStackTrace();
             
         }     
         return list3;
     }
     
      public List<DeviceDtls> getAllSmartPhone() {
          
         List<DeviceDtls> list=new ArrayList<DeviceDtls>();
         DeviceDtls b=null;
         try {
             String sql="select * from device_dtls where deviceCategory=? and status=? order by deviceId DESC";
             PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setString(1,"Phone");
             ps.setString(2, "Active");
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                b=new DeviceDtls(); 
                b.setDeviceId(rs.getInt(1));
                b.setDeviceCategory(rs.getString(2));
                b.setDeviceName(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);
             }
             
             
         } catch (Exception e) {
             e.printStackTrace();
             
         }
          
          return list;
      }
      
       public List<DeviceDtls> getAllLaptops() {
           
            List<DeviceDtls> list2=new ArrayList<DeviceDtls>();
         DeviceDtls b=null;
         try {
             String sql="select * from device_dtls where deviceCategory=? and status=? order by deviceId DESC";
             PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setString(1,"Laptop");
             ps.setString(2, "Active");
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                b=new DeviceDtls(); 
                b.setDeviceId(rs.getInt(1));
                b.setDeviceCategory(rs.getString(2));
                b.setDeviceName(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list2.add(b);
             }
             
             
         } catch (Exception e) {
             e.printStackTrace();
             
         }     
          
          return list2;
      }
       
        public List<DeviceDtls> getAllSmartWatch() {
            
          List<DeviceDtls> list3=new ArrayList<DeviceDtls>();
         DeviceDtls b=null;
         try {
             String sql="select * from device_dtls where deviceCategory=? and status=? order by deviceId DESC";
             PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setString(1,"Watch");
             ps.setString(2, "Active");
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                b=new DeviceDtls(); 
                b.setDeviceId(rs.getInt(1));
                b.setDeviceCategory(rs.getString(2));
                b.setDeviceName(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list3.add(b);
             }
             
             
         } catch (Exception e) {
             e.printStackTrace();
             
         }       
          
          return list3;
      }
     
     public List<DeviceDtls> getDeviceByOld(String email,String cate) {
         
         List<DeviceDtls> list=new ArrayList<DeviceDtls>();
         DeviceDtls b=null;
         try {
             
             String sql="select * from device_dtls where deviceCategory=? and email=?";
             PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setString(1, cate);
             ps.setString(2, email);
             
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                b=new DeviceDtls();
                b.setDeviceId(rs.getInt(1));
                b.setDeviceCategory(rs.getString(2));
                b.setDeviceName(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);
               
             }
             
         } catch (Exception e) {
             e.printStackTrace();
         }
         
         return list;
         
     }   
     
      public boolean oldDeviceDelete(String email, String cat, int id){
          boolean f=false;
          try {
              String sql="delete from  device_dtls where deviceCategory=? and email=? and deviceId=?";
              PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setString(1, cat);
             ps.setString(2, email);
             ps.setInt(3, id);
             
             int i=ps.executeUpdate();
             if(i==1)
             {
                f=true; 
             }
             
             
              
          } catch (Exception e) {
              
          }
          
          return f;
      }
      
      public List<DeviceDtls> getDeviceBySearch(String ch) {
          
           List<DeviceDtls> list=new ArrayList<DeviceDtls>();
           DeviceDtls b=null;
         try {
             
             String sql="select * from device_dtls where deviceName like ? or deviceCategory like ? and status=?";
             PreparedStatement ps=Conn.prepareStatement(sql);
             ps.setString(1, "%"+ch+"%");
             ps.setString(2, "%"+ch+"%");
             ps.setString(3, "Active");
             
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                b=new DeviceDtls();
                b.setDeviceId(rs.getInt(1));
                b.setDeviceCategory(rs.getString(2));
                b.setDeviceName(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setStatus(rs.getString(5));
                b.setPhotoName(rs.getString(6));
                b.setEmail(rs.getString(7));
                list.add(b);
               
             }
             
         } catch (Exception e) {
             e.printStackTrace();
         }
         
         return list;
      }
     
}
     
     

