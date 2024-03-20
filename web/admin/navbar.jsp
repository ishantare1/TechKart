<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>


<div class="container-fluid" style="height:10px; background-color: #0097a7"></div>

<div class="container-fluid p-3 bg-light">
  <div class="row">
     <div class="col-md-3 text-success">
         <h3>
             <i class="fa-brands fa-opencart"></i>TechKart
         </h3>    
     </div>
     <div class="col-md-6">
         <form class="form-inline my-2 my-lg-0">
           <input class="form-control mr-sm-2" type="search"
              placeholder="Search" aria-label="Search">
           <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
         </form>
     </div> 
      
  <div class="col-md-3">
      
      
         <c:if test="${not empty userobj}">
            <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i> ${userobj.name}</a>
            <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary text-white"><i class="fa-solid fa-right-to-bracket"></i>Logout</a>
        </c:if> 
    
        <c:if test="${empty userobj}">
             <a href="../login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i>Login</a>
      <a href="../register.jsp" class="btn btn-primary text-white"><i class="fa-solid fa-user-plus"></i>Register</a>
            
        </c:if> 

  </div>
  </div>
</div>

<!-- logout modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="text-center">
              <h4>Do You Want Logout </h4>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>   
          </div>
          
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>

<!-- End logout modal -->

      
      
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a></li>
    </ul>    
  </div>
</nav>