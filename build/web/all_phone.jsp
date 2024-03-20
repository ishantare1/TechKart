<%-- 
    Document   : all_phone
    Created on : 10-Jan-2024, 9:02:26 pm
    Author     : Admin
--%>

<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.DeviceDtls"%>
<%@page import="com.DAO.DeviceDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ALL Smart Phone</title>
        <%@include file="all_comp/allcss.jsp"%>
        <style type="text/css">
            .crd-ho:hover{
                background-color:#f7f7f7;
            }
      
            
        </style>
    </head>
    <body>
     <%
         User u=(User)session.getAttribute("userobj");
     %>     
        
    <%@include file="all_comp/navbar.jsp"%>
    <div class="container-fluid">
        <div class="row p-3">
            <%
                  DeviceDAOImpl dao=new DeviceDAOImpl(DBConnect.getConn());
                  List<DeviceDtls> list=dao.getAllSmartPhone();
                  for(DeviceDtls b:list) {
                  %>
                  <div class="col-md-3">
                   <div class="card card-ho mt-2">
                     <div class="card-body text-center">
                       <img alt="" src="device/<%=b.getPhotoName()%>" style="width: 150px;height: 200px"
                            class="img-thumbin">
                       <p><%=b.getDeviceName() %></p>
                       <a href="" class="btn btn-success ml-2">&#x20B9;<%=b.getPrice()%></a>
                       <div class="row mt-1">
                       
                          <% 
                           if(u==null) {
                           %>
                           <a href="login.jsp" class="btn btn-danger ml-5"><i class="fa-solid fa-cart-shopping "></i>Add Cart</a>
                           <%
                           }else{
                            %>
                            <a href="cart?did=<%=b.getDeviceId() %>&&uid=<%= u.getId()%>" class="btn btn-danger ml-5"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
                            <%
                             }  
                            %>
                       
                       
                           <a href="view_device.jsp?id=<%=b.getDeviceId()%>" class="btn btn-success ml-1">View Details</a>
                         
                       </div>
                     </div>  
                  </div>   
                       
              </div>
                       
                       
                  <%
                   }
                  %>     
        </div>
    </div>
    </body>
</html>
