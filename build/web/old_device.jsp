<%-- 
    Document   : old_device
    Created on : 24-Jan-2024, 1:35:52 pm
    Author     : Admin
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.DeviceDtls"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.DeviceDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Use : Old Device</title>
        <%@include file="all_comp/allcss.jsp"%>
    </head>
    <body style="background-color:#f7f7f7;">
        <%@include file="all_comp/navbar.jsp"%>
        
        <c:if test="${not empty succMsg}">
            <div class="alert alert-success text-center">
                ${succMsg}
            </div>
               <c:remove var="succMsg" scope="session" />
        </c:if> 
        
      
        <div class="container p-5">
            <table class="table table-striped">
                <thead class="bg-info text-white">
    <tr>
      <th scope="col">Category</th>
      <th scope="col">Device Name</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
      
      <%
          User u=(User)session.getAttribute("userobj");
          String email=u.getEmail();
          
      DeviceDAOImpl dao=new DeviceDAOImpl(DBConnect.getConn());
      List<DeviceDtls> list =dao.getDeviceByOld(email,"watch");
      for(DeviceDtls b:list)
      {%>
          <tr>
      <td><%=b.getDeviceCategory()%></td>
      <td><%=b.getDeviceName()%></td>
      <td><%=b.getPrice()%></td>
      <td><a href="delete_old_device?em=<%=email%> &&id=<%=b.getDeviceId()%>" class="btn btn-sm btn-danger">Delete</a></td>
          </tr>
      <%}
      %>
   
    
    
  </tbody>
</table>
        </div>
        
    </body>
</html>
