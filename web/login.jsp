<%-- 
    Document   : login
    Created on : 02-Jan-2024, 5:48:32 am
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechKart: Login</title>
        <%@include file="all_comp/allcss.jsp"%>
    </head>
    <body style="background-color:#f7f7f7; ">
    <%@include file="all_comp/navbar.jsp"%>
    <div class="container">
        <div class="row mt-2">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center">Login</h3>
                        
                        <c:if test="${not empty failedMsg}">
                            <h5 class="text-center text-danger">${failedMsg}</h5>
                            <c:remove var="failedMsg" scope="session" />
                        </c:if>
                            
                        <c:if test="${not empty succMsg}">
                            <h5 class="text-center text-success">${succMsg}</h5>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>    
                     
<form action="login" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" 
           required="requried" name="email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1"
           required="requried" name="password">
  </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Login</button><br>
                                <a href="register.jsp">Create Account</a>
                    </div>
    </form>
                </div>       
        </div>
       </div> 
    </div>
        </div>
    </body>
    
</html>









   























