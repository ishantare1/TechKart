<%-- 
    Document   : add_electronics
    Created on : 03-Jan-2024, 11:36:19 pm
    Author     : Admin
--%>

<%@page import="com.entity.DeviceDtls"%>
<%@page import="com.DAO.DeviceDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Add Electronics</title>
        <%@include file="allcss.jsp"%>
    </head>
    <body style="background-color: #f7f7f7;">
         <%@include file="navbar.jsp"%> 
         <div class="container">
             <div class="row mt-2">
                 <div class="col-md-4 offset-md-4">
                     <div class="card">
                         <div class="card-body">
                             <h4 class="text-center">Edit Device</h4>
                             <c:if test="${not empty succMsg}">
                                <p class="text-center" text-success">${succdMsg}</p>
                                <c:remove var="succMsg" scope="session" />
                             </c:if>
                            
                             <c:if test="${not empty failedMsg}">
                               <p class="text-center" text-danger">${failedMsg}</p>
                               <c:remove var="failedMsg" scope="session" />
                             </c:if>    
                             
                             
                             
                             <%
                             int id=Integer.parseInt(request.getParameter("id"));
                             DeviceDAOImpl dao=new DeviceDAOImpl(DBConnect.getConn());
                             DeviceDtls b=dao.getDeviceById(id);
                             %>
                             
                             <form action="../editdevice" method="post">
                                 <input type="hidden" name="id" value="<%=b.getDeviceId()%>">
  
    
   <div class="form-group">
    <label for="exampleInputPassword1">Device Name</label>
    <input name="dname" type="text" class="form-control" id="exampleInputPassword1" value="<%=b.getDeviceName()%>">
  </div>                              
  
                                 
   <div class="form-group">
    <label for="exampleInputPassword2">Device Price</label>
    <input name="price" type="number" class="form-control" id="exampleInputPassword2" value="<%=b.getPrice()%>">
  </div>
                                 
  <div class="form-group">
    <label for="exampleInputPassword3">Device Status</label>
    <select id="inputState" name="status" class="form-control">
        <% if("Active".equals(b.getStatus())){
        %>
        <option value="Active">Active</option>
        <option value="Inactive">Inactive</option>
        <% 
        }else{
        %> 
        <option value="Inactive">Inactive</option>
        <option value="Active">Active</option>
        <%
        }
        %>
        
    </select>
  </div>      
                               
                                 
  <button type="submit" class="btn btn-primary">Update</button>
</form>
                             
                             
                             
                         </div>
                     </div>
                 </div>
             </div>
         </div>
         <div>
         <%@include file="footer.jsp"%></div>
    </body>
</html>
