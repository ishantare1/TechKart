/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin.servlet;

import com.DAO.DeviceDAOImpl;
import com.DB.DBConnect;
import com.entity.DeviceDtls;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;



import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Admin
 */
@WebServlet("/add_device")
@MultipartConfig
public class DeviceAdd extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
    try {
    String deviceCategory=req.getParameter("categories");
    String deviceName=req.getParameter("dname");
    String price=req.getParameter("price");
    String status=req.getParameter("status");
    Part part=req.getPart("dimg");
    String fileName=part.getSubmittedFileName();
    
    DeviceDtls b=new DeviceDtls(deviceCategory,deviceName,price,status,fileName,"admin");

    DeviceDAOImpl dao=new DeviceDAOImpl(DBConnect.getConn());
    
    
    
    boolean f=dao.addDevice(b);
    HttpSession session=req.getSession();
   
    if(f)
    {
        
        String path=getServletContext().getRealPath("")+"device";
     
        File file=new File(path);
    
       part.write(path + File.separator + fileName);
        
        
        session.setAttribute("succMsg","Device Add Sucessfully");
       resp.sendRedirect("admin/add_device.jsp");
    }else {
        session.setAttribute("failedMsg","Somthing Wrong On Server");
        resp.sendRedirect("admin/add_device.jsp");
        
  }           
            
}catch (Exception e){
    e.printStackTrace();
}
}
}
     
