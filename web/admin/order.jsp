<%-- 
    Document   : all_electronics
    Created on : 03-Jan-2024, 11:42:51 pm
    Author     : Admin
--%>

<%@page import="com.entity.Device_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.DeviceOrderImpl"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Orders</title>
        <%@include file="allcss.jsp"%>
    </head>
    <body style="background-color:#f7f7f7;">
    <c:if test="${empty userobj}">
        <c:redirect url="../login.jsp"></c:redirect>
    </c:if> 
        
        <%@include file="navbar.jsp"%>
        <h3 class="text-center text-success">Hello,${userobj.name}</h3>
        
        <table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Addess</th>
      <th scope="col">Phone No</th>
      <th scope="col">Device Name</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
      
      
    </tr>
  </thead>
  <tbody>
      
      <%
        
        DeviceOrderImpl dao=new DeviceOrderImpl(DBConnect.getConn());
        List<Device_Order> blist= dao.getAllOrder();
        for(Device_Order b:blist) {
        %>
        
        <tr>
        <th scope="row"><%=b.getOrderId()%></th>
        <td><%=b.getUserName()%></td>
        <td><%=b.getEmail()%></td>
        <td><%=b.getFulladd()%></td>
        <td><%=b.getPhno()%></td>
        <td><%=b.getDeviceName()%></td>
        <td><%=b.getPrice()%></td>
        <td>@<%=b.getPaymentType()%></td>
           
        </tr>
        
     
        
         <%
         }
        %>  
        
     
    
  </tbody>
</table>
        
        <div style="margin-top: 250px;">
         <%@include file="footer.jsp"%></div>
    </body>
</html>
