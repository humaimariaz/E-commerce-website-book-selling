<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body  style="background-color: #f0f1f2;">
<%@include file="all_component/navbar.jsp" %>


<div class="container p-5">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">

<h4 class="text-center text-info">Login</h4>

                <c:if test="${not empty failedMsg }">
                 <h6 class="text-center text-danger">${failedMsg}</h6>
                 <c:remove var="failedMsg" scope="session" />
                 </c:if>
                 
                    <c:if test="${not empty succMsg }">
                 <h6 class="text-center text-success">${succMsg}</h6>
                 <c:remove var="succMsg" scope="session" />
                 </c:if>


<form action="login" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
  </div>
  
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1"required="required" name="password" >
  </div>
  

  
  
  <div class="text-center">
    <button type="submit" class="btn btn-primary">Submit</button>
  </div>
  
    <div class="text-center my-2">
  	<a href="register.jsp">Create Account here</a>
  </div>
</form>


 </div>

</div>

</div>

</div>

</div>



</body>
</html>