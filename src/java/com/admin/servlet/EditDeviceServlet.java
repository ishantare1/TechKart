/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin.servlet;

import com.DAO.DeviceDAOImpl;
import com.DB.DBConnect;
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
@WebServlet("/editdevice")
public class EditDeviceServlet extends HttpServlet{
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        try {
    int id=Integer.parseInt(req.getParameter("id"));
    String deviceName=req.getParameter("dname");
    String price=req.getParameter("price");
    String status=req.getParameter("status");
    
    DeviceDtls b=new DeviceDtls();
    b.setDeviceId(id);
    b.setDeviceName(deviceName);
    b.setPrice(price);
    b.setStatus(status);
    
    DeviceDAOImpl dao=new DeviceDAOImpl(DBConnect.getConn());
    boolean f=dao.updateEditDevice(b);
    
    HttpSession session=req.getSession();
    
    if(f)
    {
        session.setAttribute("succMsg","Device Update Successfully..");
        resp.sendRedirect("admin/all_device.jsp");
    }else {
        session.setAttribute("failedMsg","Something Wrong On Server");
        resp.sendRedirect("admin/all_device.jsp");
        
    }
    
        } catch (Exception e) {
            
        }

    }
    
}
