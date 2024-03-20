/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.user.servlet;

import com.DAO.DeviceDAOImpl;
import com.DB.DBConnect;
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
@WebServlet("/delete_old_device")
public class DeleteOldDevice extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
       try{
           
           String em=req.getParameter("em");
           int id=Integer.parseInt(req.getParameter("id"));
           
           DeviceDAOImpl dao=new DeviceDAOImpl(DBConnect.getConn());
           
           boolean f=dao.oldDeviceDelete(em, "old",id);
           
            HttpSession session=req.getSession();
      
      if(f)
      {
          session.setAttribute("succMsg", "Old Device Delete Sucessfully");
          resp.sendRedirect("old_device.jsp");
      }else {
          session.setAttribute("succMsg", "Somthing Wrong On Server");
          resp.sendRedirect("old_device.jsp");
      }
           
       } catch(Exception e){
           e.printStackTrace();
       }
        
        
    }
    
}
