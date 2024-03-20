/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.DAO;

import com.entity.Cart;
import com.entity.DeviceDtls;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface CartDAO {
    
    public boolean addCart(Cart c);
    
    public List<Cart> getDeviceByUser(int userId);
    
    public boolean deleteDevice(int did,int uid,int cid);
    
    
    
}
