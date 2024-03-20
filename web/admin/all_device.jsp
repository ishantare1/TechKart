<%-- 
    Document   : all_electronics
    Created on : 03-Jan-2024, 11:42:51 pm
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>

<%@page import="java.util.List"%>
<%@page import="com.entity.DeviceDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.DeviceDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: All Devices</title>
        <%@include file="allcss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <h3 class="text-center">Hello Admin</h3>
        
       <c:if test="${not empty succMsg}">
            <h5 class="text-center text-success" >${succMsg}</h5>
            <c:remove var="succMsg" scope="session" />
        </c:if> 
    
        <c:if test="${not empty failedMsg}">
            <h5 class="text-center text-danger">${failedMsg}</h5>
            <c:remove var="failedMsg" scope="session" />
        </c:if> 
        
        
        <table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">ID</th>  
      <th scope="col">Image</th>
      <th scope="col">Device Categories</th>
      <th scope="col">Device Name</th>
      <th scope="col">Price</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
      <%
      DeviceDAOImpl dao=new DeviceDAOImpl(DBConnect.getConn());
      List<DeviceDtls> list=dao.getAllDevice();
      for(DeviceDtls b : list){
      %>
      <tr>
      <td><%=b.getDeviceId()%></td>
      <td><img src="../device/<%=b.getPhotoName()%>" style="width: 50px; height:50px;"></td>
      <td><%=b.getDeviceCategory()%></td>
      <td><%=b.getDeviceName()%></td>
      <td><%=b.getPrice()%></td>
      <td><%=b.getStatus()%></td>
      <td>
          <a href="edit_device.jsp?id=<%=b.getDeviceId()%>" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i>Edit</a>
          <a href="../delete?id=<%=b.getDeviceId()%>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash"></i>Delete</a>
      </td>
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
