<%-- 
    Document   : view_device
    Created on : 16-Jan-2024, 6:06:56 pm
    Author     : Admin
--%>

<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.DeviceDtls"%>
<%@page import="com.DAO.DeviceDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="all_comp/allcss.jsp"%>
    </head>
    <body style="background-color: #f7f7f7; ">
    <%@include file="all_comp/navbar.jsp"%>
    
    <%
     int id=Integer.parseInt(request.getParameter("id"));
     DeviceDAOImpl dao=new DeviceDAOImpl(DBConnect.getConn());;
     DeviceDtls b=dao.getDeviceById(id);
        
     %>   
    
    
    
    <div class="container p-3">
        <div class="row">
            <div class="col-md-6 text-center p-5 border bg-white">
                <img src="device/<%=b.getPhotoName()%>" style="height: 150px; width: 100px"><br>
                <h4 class="mt-3">
                    Device Name :<span class="text-success"><%=b.getDeviceName()%></span>
                </h4>
                <h4>
                    Category :<span class="text-success"><%=b.getDeviceCategory()%></span>
                </h4>
            </div>    
                <div class="col-md-6 text-center p-5 border bg-white">
                <h2><%=b.getDeviceName()%></h2>
                              
                <%
                 if("Phone".equals(b.getDeviceCategory()))
                 {%>
                 <h5 class="text-info">Contact To Seller</h5>
                 <h5 class="text-info">
                     <i class="fa-solid fa-envelope"></i>Email: <%=b.getEmail()%></h5>
                  <%
                   }
                  %>       
                
                
                <div class="row">
                    
                    <div class="col-md-4 text-danger text-center p-2">
                       <i class="fa-solid fa-money-check fa-2x"></i>
                       <p>Cash On Delivery</p>
                    </div>
                    <div class="col-md-4 text-danger text-center p-2">
                        <i class="fa-solid fa-rotate-left fa-2x"></i>
                        <p>Return Available</p>
                    </div><!-- comment -->
                    <div class="col-md-4 text-danger text-center p-2">
                        <i class="fa-solid fa-truck-moving fa-2x"></i>
                        <p>Free Shipping</p>
                    </div>
                    
                   
                </div>
                
                <div class="text-center p-3">
                    <a href="" class="btn btn-primary ml-2"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
                    <a href="" class="btn btn-danger ml-2">&#x20B9;<%=b.getPrice()%></a>
                </div>
                    
                </div>
                
            </div>
        </div>
   
    </body>
</html>
