<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sell Book</title>
<%@include file="all_component/allCss.jsp" %>

</head>
<body style="background-color:#E5EAF5;">

<c:if test="${empty userobj }">

  <c:redirect url="login.jsp"/>

</c:if>



<%@include file="all_component/navbar.jsp" %>


 <div class="container">
 <div class="row">
 <div class="col-md-4 offset-md-4">
 <div class="card my-3">
 <div class="card-body">
 
 
 
 <h5 class="text-center text-primary p-1">Sell Old Book</h5>
 <form action="add_old_book" method="post"
		enctype="multipart/form-data">
		
		<c:if test="${not empty succMsg }">
		<p class="text-center text-success">${succMsg }</p>
		<c:remove var="succMsg" scope="session"/>
		</c:if>
		
		<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg }</p>
		<c:remove var="failedMsg" scope="session"/>
		</c:if>
		
		
		
		
		
		
		<input type="hidden" value="${userobj.email}" name="user">
		

	 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Book Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="bname">
  </div>
  
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Author Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="author">
  </div>
  
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Price</label>
    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="price" >
  </div>
  
   
  
 <div class="mb-3">
  <label for="formFile" class="form-label">Book cover</label>
  <input class="form-control" type="file" id="formFile" name="bimg">
</div>


  <button type="submit" class="btn btn-primary">Sell</button>
</form>
		
 
 </div>
 
 
 
 </div>
 
 
 
 
 </div>
 
 
 
 </div>
 
 
 </div>

















	<%@include file="all_component/footer.jsp" %>

</body>
</html>