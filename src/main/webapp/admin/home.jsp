<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>  
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Home</title>
<%@include file="allCss.jsp" %>




</head>
<body>
<%@include file="navbar.jsp" %>

    <c:if test="${empty userobj}">
    	<c:redirect url="../login.jsp" />
    	</c:if>


<style type="text/css">

a{
text-decoration: none;
color: black;

}

a:hover{
	text-decoration:none;
	color: black;
}

</style>



<div class="container">
	<div class="row p-5">
	
	<div class="col-md-3">
	<a href="add_books.jsp">
	<div class="card">
	<div class="card-body text-center">
 <i class="ri-file-add-fill text-primary"  style="font-size: 45px;"></i><br>
	<h4>Add Books</h4>
	-----------
	</div>
	</div>
	</a>
	</div>
	
	
	<div class="col-md-3">
	<a href="all_books.jsp">
	<div class="card">
	<div class="card-body text-center">
<i class="ri-book-2-line text-danger" style="font-size: 45px;" ></i><br>
	<h4>All Books</h4>
	-----------
	</div>
	</div>
	</a>
	</div>
	
	<div class="col-md-3">
	<a href="orders.jsp">
	<div class="card">
	<div class="card-body text-center">
 <i class="ri-survey-fill text-warning" style="font-size: 45px;"></i><br>
	<h4>Orders</h4>
	-----------
	</div>
	</div>
	</a>
	</div>
	
	<div class="col-md-3">
	
	<a  data-toggle="modal" data-target="#exampleModalCenter">
	<div class="card">
	<div class="card-body text-center">
 <i class="ri-logout-box-r-fill text-primary" style="font-size: 45px;"></i><br>
	<h4>Logout</h4>
	-----------
	</div>
	</div>
	
	
	
	</a>
	
	
	</div>
	
	</div>


</div>
	
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="text-center">
        
        <h4>Do you want to Logout</h4> 
        
         <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>
        
        </div>
       
        
      </div>
      <div class="modal-footer">
       
      </div>
    </div>
  </div>
</div>


<!-- modal end -->
	
	









<div style="margin-top: 180px;">
<%@include file="footer.jsp" %>
</div>



</body>
</html>