<%-- 
    Document   : sell_device
    Created on : 23-Jan-2024, 7:25:19 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sell Device</title>
         <%@include file="all_comp/allcss.jsp"%>
    </head>
    <body style="background-color:#f7f7f7;">
        <c:if test="${empty userobj}">
              <c:redirect url="login.jsp" /> 
        </c:if>
        
        <%@include file="all_comp/navbar.jsp"%> 
        
        <div class="container">
            <div class="row mt-2">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center text-primary p-1">Sell Old Device</h5>
      
                            
                            
                            <c:if test="${not empty succMsg}">
                                 <p class="text-center text-success">${succMsg}</p>
                                 <c:remove var="succMsg" scope="session" />
                             </c:if>
                                 
                             <c:if test="${not empty failedMsg}">
                                 <p class="text-center text-danger">${failedMsg}</p>
                                 <c:remove var="failedMsg" scope="session" />
                             </c:if>
                             
                             <form action="add_old_device" method="post"
                                   enctype="multipart/form-data">
                        
                                 <input type="hidden" value="${userobj.email}" name="user">    
                                 
  <div class="form-group">
    <label for="exampleInputEmail1">Device Categories</label>
    <select id="inputState" name="categories" class="form-control">
        <option selected>--select--</option>
        <option value="Phone">Smart Phone</option>
        <option value="Laptop">Laptop</option>
        <option value="Watch">Smart Watch</option>
    </select>
  </div>
    
   <div class="form-group">
    <label for="exampleInputPassword1">Device Name</label>
    <input name="dname" type="text" class="form-control" id="exampleInputPassword1">
  </div>                              
  
                                 
   <div class="form-group">
    <label for="exampleInputPassword2">Device Price</label>
    <input name="price" type="number" class="form-control" id="exampleInputPassword2">
  </div>
                                 
  
                                 
   <div class="form-group">
    <label for="exampleFormControlFile1">Upload Photo</label>
    <input name="dimg" type="file" class="form-control" id="exampleFormControlFile1">
  </div>                              
   <div class="text-center p-2">                               
  <button type="submit" class="btn btn-warning text-white">Sell</button>
  </div>
</form>
                            
                            
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>
            
        
        
    </body>
</html>
