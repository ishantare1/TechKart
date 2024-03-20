<%-- 
    Document   : setting
    Created on : 23-Jan-2024, 6:28:46 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Setting</title>
        <%@include file="all_comp/allcss.jsp"%>
        <style type="text/css">
            a{
                text-decoration: none;
                color:black;
            }
            a:hover {
                text-decoration: none;
            }
        </style>
        
    </head>
    <body style="background-color:#f7f7f7;">
        
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"/>
        </c:if>   
        
        
        <%@include file="all_comp/navbar.jsp"%> 
        
        <div class="container">
            
                <h3 class="text-center text-success">Hello,${userobj.name}</h3>
           
            <div class="row p-5">
                <div class="col-md-4">
                    <a href="sell_device.jsp" >
                    <div class="card">
                     <div class="card-body text-center">
                         <div class="text-primary">
                             <i class="fa-solid fa-arrow-right-arrow-left fa-3x"></i>
                         </div>
                         <h3>Sell Old Device</h3>
                         </div>
                    </div>
                  </a>  
                </div>
                
                <div class="col-md-4">
                    <a href="old_device.jsp" >
                    <div class="card">
                     <div class="card-body text-center">
                         <div class="text-warning">
                             <i class="fa-solid fa-arrow-right-arrow-left fa-3x"></i>
                         </div>
                         <h3>Old Device</h3>
                         </div>
                    </div>
                  </a>  
                </div>
                
                    <div class="col-md-4">
                    <a href="edit_profile.jsp" >
                    <div class="card">
                     <div class="card-body text-center">
                         <div class="text-info">
                             <i class="fa-solid fa-pen-to-square fa-3x"></i>
                         </div>
                         <h4>Edit Profile</h4>
                         </div>
                    </div>
                  </a>  
                </div>   
                
         
                
                 <div class="col-md-6 mt-3">
                    <a href="order.jsp" >
                    <div class="card">
                     <div class="card-body text-center">
                         <div class="text-danger">
                             <i class="fa-solid fa-box-open fa-3x"></i>
                         </div>
                         <h4>My Order</h4>
                         <p>Track Your Order</p>
                         </div>
                    </div>
                  </a>  
                </div>   
                
                    <div class="col-md-6 mt-3">
                    <a href="helpline.jsp" >
                    <div class="card">
                     <div class="card-body text-center">
                         <div class="text-secondary">
                             <i class="fas fa-user-circle fa-3x"></i>
                         </div>
                         <h4>Help Center</h4>
                         <p>24*7 Service</p>
                         </div>
                    </div>
                  </a>  
                </div>   
                
                
                
                
            </div>
        </div>
    </body>
</html>
