/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.user.servlet;
import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;
import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
    
    try{
    String name=req.getParameter("fname");
    String email=req.getParameter("email");
    String phno=req.getParameter("phno");
    String password=req.getParameter("password");
    String check=req.getParameter("check");
    
//    System.out.println(name+""+email+""+phno+""+password+""+check);

 User us=  new User();
 us.setName(name);
 us.setEmail(email);
 us.setPhno(phno);
 us.setPassword(password);
 
 HttpSession session=req.getSession();
 
 if(check!=null)
 {
 UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
 
 boolean f2=dao.checkUser(email);
 if(f2)
 {
     boolean f=dao.userRegister(us);
 if(f)
 {
//     System.out.println("User Register Success..");
     session.setAttribute("succMsg","Registration Successfully");
             resp.sendRedirect("register.jsp");
 }else{
//     System.out.println("Somthing Wrong on Server..")
     session.setAttribute("failedMsg","Somthing Wrong on Server..");
             resp.sendRedirect("register.jsp");
 }
     
 }else {
     session.setAttribute("failedMsg","User Already Exist Try Another Email id");
             resp.sendRedirect("register.jsp");
 }
 
 
 }else{
//    System.out.println("Please Check Agree Terms and condition") 
     session.setAttribute("failedMsg","Please Check Agree Terms and condition");
             resp.sendRedirect("register.jsp");

 }

} catch (Exception e) {
    e.printStackTrace();
}
    

}
}
    

