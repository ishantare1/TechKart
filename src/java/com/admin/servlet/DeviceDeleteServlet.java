/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin.servlet;

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
@WebServlet("/delete")
public class DeviceDeleteServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        
        try {
            int id=Integer.parseInt(req.getParameter("id"));
            
            DeviceDAOImpl dao=new DeviceDAOImpl(DBConnect.getConn());
            boolean f=dao.deleteDevice(id);
            HttpSession session=req.getSession();
    
    if(f)
    {
        session.setAttribute("succMsg","Device Delete Successfully..");
        resp.sendRedirect("admin/all_device.jsp");
    }else {
        session.setAttribute("failedMsg","Something Wrong On Server");
        resp.sendRedirect("admin/all_device.jsp");
        
    }
            
        } catch (Exception e) {
            e.printStackTrace();
}
}
}
