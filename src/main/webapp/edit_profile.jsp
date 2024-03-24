<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
<%@include file="all_component/allCss.jsp" %>

</head>
<body  style="background-color:#E5EAF5;">
<%@include file="all_component/navbar.jsp" %>


 <div class="container">
 <div class="row">
 <div class="col-md-4 offset-md-4">
 <div class="card my-3">
 <div class="card-body">
 
 
<h5 class="text-center text-primary">Edit Profile</h5>
<form action="update_profile" method="post">

        <c:if test="${not empty succMsg }">
		<p class="text-center text-success">${succMsg }</p>
		<c:remove var="succMsg" scope="session"/>
		</c:if>
		
		<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg }</p>
		<c:remove var="failedMsg" scope="session"/>
		</c:if>
		





	<input type="hidden" value="${userobj.id }" name="id">

	 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Enter Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="fname" value="${userobj.name}">
  </div>
  
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email" value="${userobj.email }">
  </div>
  
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Phone Number</label>
    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="phoneNo" value="${userobj.phoneNo }">
  </div>
  
  
  
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
  </div>
  
  
  
  
  <button type="submit" class="btn btn-primary">Update</button>
</form>






</div>
</div>
</div>
</div>
</div>















</body>
</html>