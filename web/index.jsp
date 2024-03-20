<%-- 
    Document   : index
    Created on : 01-Jan-2024, 2:57:06 am
    Author     : Admin
--%>

<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.DeviceDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.DeviceDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>

<html>
    <head>
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechKart</title>
        <%@include file="all_comp/allcss.jsp"%>
        <style type="text/css">
            
            .back-img{
                background:url("img/real.jpg");
                height:490px;
                width:90%;
                background-repeat:no-repeat;
                background-size: cover;
                
            }
            .crd-ho:hover{
                background-color:#f7f7f7;
            }
            
             #toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

            
        </style>
       
    </head>
    
    <body  style="background-color:#f7f7f7;">
     <%
         User u=(User)session.getAttribute("userobj");
     %>  
     
             
        <c:if test="${not empty addCart}">
            <div id="toast">${addCart}</div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000);
		}	
</script>

<c:remove var="addCart" scope="session" />
        </c:if>
     
     
       
       <%@include file="all_comp/navbar.jsp"%> 
       <div class="container-fluid back-img">
<!--           <h2 class="text-center text-white"> TechKart</h2>-->
       </div>
       
<!--       <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="img/real.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/mobiles.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/laptop_1.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>-->
       
     
       
<!--        start smart phones -->
       <div class="container">
           <h3 class="text-center mt-4"> Smart Phones</h3>
           <div class="row">
              
                  <%
                  DeviceDAOImpl dao=new DeviceDAOImpl(DBConnect.getConn());
                  List<DeviceDtls> list=dao.getSmartPhone();
                  for(DeviceDtls b:list) {
                  %>
                  <div class="col-md-3">
                   <div class="card card-ho">
                     <div class="card-body text-center">
                       <img alt="" src="device/<%=b.getPhotoName()%>" style="width: 150px;height: 200px"
                            class="img-thumbin">
                       <p><%=b.getDeviceName() %></p>
                       <a href="" class="btn btn-success ml-2">&#x20B9;<%=b.getPrice()%></a>
                      
                       <div class="row mt-1">
                           
                           <% 
                           if(u==null) {
                           %>
                           <a href="login.jsp" class="btn btn-danger ml-2"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
                           <%
                           }else{
                            %>
                            <a href="cart?did=<%=b.getDeviceId() %>&&uid=<%= u.getId()%>" class="btn btn-danger ml-2"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
                            <%
                             }  
                            %>

                       <a href="view_device.jsp?id=<%= b.getDeviceId()%>" class="btn btn-success ml-1">View Details</a>
                         
                       </div>
                     </div>  
                  </div>   
                       
              </div>
                       
                       
                  <%
                   }
                  %> 
                  
             </div>     
       
           <div class="text-center mt-2">
               <a href="all_phone.jsp" class="btn btn-danger btn-sm text-white">View All</a>
           </div>
      </div> 
      <!-- End smart phones --> 
      
      <hr>
      
      
      <!-- start Laptops -->
       <div class="container">
           <h3 class="text-center">Laptops</h3>
           <div class="row">
           <%
                  DeviceDAOImpl dao2=new DeviceDAOImpl(DBConnect.getConn());
                  List<DeviceDtls> list2=dao2.getLaptops();
                  for(DeviceDtls b:list2) {
           %>
                    <div class="col-md-3">
                   <div class="card crd-ho">
                     <div class="card-body text-center">
                       <img alt="" src="device/<%=b.getPhotoName()%>" style="width: 200px;height: 150px"
                            class="img-thumbin">
                       <p><%=b.getDeviceName() %></p>
                       <a href="" class="btn btn-success ml-2">&#x20B9;<%=b.getPrice()%></a>
                      
                       <div class="row mt-1">
                           
                            <% 
                           if(u==null) {
                           %>
                           <a href="login.jsp" class="btn btn-danger ml-2"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
                           <%
                           }else{
                            %>
                            <a href="cart?did=<%=b.getDeviceId() %>&&uid=<%= u.getId()%>" class="btn btn-danger ml-2"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
                            <%
                             }  
                            %>
                       
                       <a href="view_device.jsp?id=<%= b.getDeviceId()%>" class="btn btn-success ml-1">View Details</a>
                         
                       </div>
                     </div>  
                  </div>       
              </div>        
           <%
            }
           %>              
          </div>
           
           <div class="text-center mt-2">
               <a href="all_laptop.jsp" class="btn btn-danger btn-sm text-white">View All</a>
           </div>
      </div> 
      
      <!-- End laptops -->
      
      <hr>
      
      <!-- smart watch-->
       <div class="container">
           <h3 class="text-center">Smart Watch</h3>
           <div class="row">
           <%
                  DeviceDAOImpl dao3=new DeviceDAOImpl(DBConnect.getConn());
                  List<DeviceDtls> list3=dao3.getSmartWatch();
                  for(DeviceDtls b:list3) {
           %>
               
              <div class="col-md-3">
                   <div class="card crd-ho">
                     <div class="card-body text-center">
                       <img alt="" src="device/<%=b.getPhotoName()%>" style="width: 150px;height: 200px"
                            class="img-thumbin">
                       <p><%=b.getDeviceName() %></p>
                       <a href="" class="btn btn-success ml-2">&#x20B9;<%=b.getPrice()%></a>
                      
                       <div class="row mt-1">
                       
                           <% 
                           if(u==null) {
                           %>
                           <a href="login.jsp" class="btn btn-danger ml-2"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
                           <%
                           }else{
                            %>
                            <a href="cart?did=<%=b.getDeviceId() %>&&uid=<%= u.getId()%>" class="btn btn-danger ml-2"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
                            <%
                             }  
                            %>
                           
                       <a href="view_device.jsp?id=<%= b.getDeviceId()%>" class="btn btn-success ml-1">View Details</a>
                         
                       </div>
                     </div>  
                  </div>       
              </div>
               
             <%
            }
           %>                                  
           </div>
           <div class="text-center mt-2">
               <a href="all_watch.jsp" class="btn btn-danger btn-sm text-white">View All</a>
           </div>
      </div> 
      <!-- End smart watch -->
      <br>
      <br>
      
<%@include file="all_comp/footer.jsp"%>
      
    </body>
</html>
