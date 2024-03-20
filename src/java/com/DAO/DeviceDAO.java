/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.DAO;


import com.entity.DeviceDtls;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface DeviceDAO {
    
    public boolean addDevice(DeviceDtls b);
    
    public List<DeviceDtls> getAllDevice();
    
    public DeviceDtls getDeviceById(int id);
    
    public boolean updateEditDevice(DeviceDtls b);
    
    public boolean deleteDevice(int id);
    
    public List<DeviceDtls> getSmartPhone();
    
    public List<DeviceDtls>getLaptops();
    
    public List<DeviceDtls>getSmartWatch();
     
    public List<DeviceDtls>getAllSmartPhone();
    
    public List<DeviceDtls>getAllLaptops();
    
    public List<DeviceDtls>getAllSmartWatch();
    
    public List<DeviceDtls> getDeviceByOld(String email,String cate);
    
    public boolean oldDeviceDelete(String email, String cat, int id);
    
    public List<DeviceDtls> getDeviceBySearch(String ch);
    
  
    
    
    
}
