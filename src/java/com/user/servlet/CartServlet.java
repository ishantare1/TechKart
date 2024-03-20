/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.user.servlet;

import com.DAO.CartDAOImpl;
import com.DAO.DeviceDAOImpl;
import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.DeviceDtls;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        
        try {
            int did=Integer.parseInt(req.getParameter("did"));
            int uid=Integer.parseInt(req.getParameter("uid"));
            
            DeviceDAOImpl dao=new DeviceDAOImpl(DBConnect.getConn());
            DeviceDtls b=dao.getDeviceById(did);
            
            Cart c=new Cart();
            c.setDid(did);
            c.setUserId(uid);
            c.setDeviceName(b.getDeviceName());
            c.setPrice(b.getPrice());
            c.setTotalPrice(Double.parseDouble(b.getPrice()));
            
       CartDAOImpl dao2 =new CartDAOImpl(DBConnect.getConn()); 
       boolean f=dao2.addCart(c);
       
       HttpSession session=req.getSession();
 
       
       if(f)
       {
           session.setAttribute("addCart", "Device Added to Cart");
           resp.sendRedirect("index.jsp");
       }else {
           session.setAttribute("failed", "Somtheing Wrong On Server");
           resp.sendRedirect("index.jsp");
       }
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
            
        }
        
    }
    
}
