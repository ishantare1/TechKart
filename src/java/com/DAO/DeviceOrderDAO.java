/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.DAO;

import com.entity.Device_Order;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface DeviceOrderDAO {
 
    public boolean saveOrder(List<Device_Order> b);
    
    public List<Device_Order> getDevice(String email);
    
    public List<Device_Order> getAllOrder();
    
}
