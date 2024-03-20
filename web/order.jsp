<%-- 
    Document   : order
    Created on : 23-Jan-2024, 8:38:45 pm
    Author     : Admin
--%>

<%@page import="com.entity.Device_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.DeviceOrderImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Page</title>
        <%@include file="all_comp/allcss.jsp"%>
    </head>
    <body style="background-color:#f7f7f7;">
        
     <c:if test="${empty userobj}">
        <c:redirect url="login.jsp"></c:redirect>
    </c:if>  
        
        <%@include file="all_comp/navbar.jsp"%> 
        <div class="container p-1">
            <h3 class="text-center text-success">Your Order</h3>
          <table class="table table-striped mt-3">
  <thead class="bg-info text-white">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">Device Name</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody>
      
      <%
        User u=(User)session.getAttribute("userobj");
        DeviceOrderImpl dao=new DeviceOrderImpl(DBConnect.getConn());
        List<Device_Order> blist= dao.getDevice(u.getEmail());
        for(Device_Order b:blist) {
        %>
        
    <tr>
      <th scope="row"><%=b.getOrderId()%></th>
      <td><%=b.getUserName()%></td>
      <td><%=b.getDeviceName()%></td>
      <td><%=b.getPrice()%></td>
      <td><%=b.getPaymentType()%></td>     
    </tr>
        
        <%
         }
        %>   
      
      
   
    
      </tbody>
</table>  
            
        </div>
    </body>
</html>
