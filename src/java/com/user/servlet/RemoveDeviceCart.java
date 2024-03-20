/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.user.servlet;

import com.DAO.CartDAOImpl;
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
@WebServlet("/remove_device")
public class RemoveDeviceCart extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        
      int did=Integer.parseInt(req.getParameter("did"));
      int uid=Integer.parseInt(req.getParameter("uid"));
      int cid=Integer.parseInt(req.getParameter("cid"));
      CartDAOImpl dao=new CartDAOImpl(DBConnect.getConn());
      boolean f=dao.deleteDevice(did,uid,cid);
      HttpSession session=req.getSession();
      
      if(f)
      {
          session.setAttribute("succMsg", "Device Removed From Cart");
          resp.sendRedirect("checkout.jsp");
      }else {
          session.setAttribute("failedMsg", "Somthing Wrong On Server");
          resp.sendRedirect("checkout.jsp");
      }
      
        
    }
    
}
