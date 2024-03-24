<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add Books</title>
<%@include file="allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2">
<%@include file="navbar.jsp" %>


    <c:if test="${empty userobj}">
    	<c:redirect url="../login.jsp" />
    	</c:if>



<div class="container">
	<div class="row p-4">
		<div class="col-md-4 offset-md-4">
		<div class="card">
		<div class="card-body">
		
		<h4 class="text-center">Add Books</h4>
		
		
		<c:if test="${not empty succMsg }">
		<p class="text-center text-success">${succMsg }</p>
		<c:remove var="succMsg" scope="session"/>
		</c:if>
		
		<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg }</p>
		<c:remove var="failedMsg" scope="session"/>
		</c:if>
		
		
		<form action="../add_books" method="post"
		enctype="multipart/form-data">

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
    <label for="exampleInputEmail1" class="form-label">Book Categories</label>
 <select class="form-select" aria-label="Default select example" name="categories">
  <option>New Book</option>
  <option>Used Book</option>
</select>
  </div>
  
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Book Status</label>
 <select class="form-select" aria-label="Default select example" name="status">
  
  <option>Active</option>
  <option>Inactive</option>
</select>
  </div>
  
 <div class="mb-3">
  <label for="formFile" class="form-label">book cover</label>
  <input class="form-control" type="file" id="formFile" name="bimg">
</div>


  
  
  
 
  
  <button type="submit" class="btn btn-primary">Add</button>
</form>
		
		
		</div>
		
		
		</div>
		
		</div>
	
	</div>



</div>

<div style="margin-top: 100px;">
<%@include file="footer.jsp" %>
</div>
</body>
</html>