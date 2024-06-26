<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechKart: Register</title>
        <%@include file="all_comp/allcss.jsp"%>
    </head>
    <body style="background-color:#f7f7f7;">
    <%@include file="all_comp/navbar.jsp"%>
    <div class="container p-2">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Registration</h4>
                        
                        <c:if test="${not empty succMsg}">
                            <h5 class="text-center text-success">${succMsg}</h5>
                            <c:remove var="succMsg" scope="session" />
                        </c:if> 
                        
                         <c:if test="${not empty failedMsg}">
                            <h5 class="text-center text-danger">${failedsMsg}</h5>
                            <c:remove var="failedsMsg" scope="session" />
                        </c:if>
                 
                        <form action="register" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
           required="required" name="fname">
  </div>                        
                         
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
           required="required" name="email">
  </div>
                         
  <div class="form-group">
    <label for="exampleInputEmail1">Phone No</label>
    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
           required="required" name="phno">
  </div>                       
                         
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1"
           required="required" name="password">
  </div>
                         
  <div class="form-check">
    <input type="checkbox" class="form-check-input" name="check"
    for="exampleCheck1">Agree terms & condition</label>
  </div>
  <div class="text-center p-2">                       
  <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>   
                    </div>
                    
                </div>
            </div>
        </div>
           
    </div>
    </body>

</html>
