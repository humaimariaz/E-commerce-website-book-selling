<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Setting</title>
<%@include file="all_component/allCss.jsp" %>

<style>
a{
text-decoration:none;
color:black;
}

a:hover{
text-decoration:none;
}

</style>



</head>
<body style="background-color:#E5EAF5;">
	
<c:if test="${empty userobj}">
<c:redirect url="login.jsp"/>

</c:if>





<%@include file="all_component/navbar.jsp" %>

<div class="container" >

<c:if test="${not empty userobj}">

<h3 class="text-center my-2">Hello, ${userobj.name}</h3>

</c:if>


<div class="row p-5">
<div class="col-md-4">
<a href="sell_book.jsp">
<div class="card">


<div class="card-body text-center">

<div class="text-primary my-4">
<i class="fa-solid fa-book-open fa-3x"></i>
</div>

<h4>Sell Old Book</h4>

</div>
</div>
</a>
</div>

<div class="col-md-4">
<a href="old_book.jsp">
<div class="card">


<div class="card-body text-center">

<div class="text-primary my-4">
<i class="fa-solid fa-book-open fa-3x"></i>
</div>

<h4>My Old Book</h4>

</div>
</div>
</a>
</div>





<div class="col-md-4">
<a href="edit_profile.jsp">
<div class="card">


<div class="card-body text-center">

<div class="text-primary my-4">
<i class="fa-solid fa-pen-to-square fa-3x"></i></div>

<h4> Edit Profile</h4>

</div>
</div>
</a>
</div>




<div class="col-md-6 my-3">
<a href="order.jsp">
<div class="card">


<div class="card-body text-center">

<div class="text-danger my-3">
<i class="fa-solid fa-box-open fa-3x"></i></div>

<h4 class="text-dark">My Order</h4>
<p>Track Your Order</p>

</div>
</div>
</a>
</div>


<div class="col-md-6 my-3">
<a href="helpline.jsp">
<div class="card">


<div class="card-body text-center">

<div class="text-primary my-3">
<i class="fa-solid fa-circle-user fa-3x"></i></div>
<h4 class="text-dark">Help Center</h4>
<p>Customer Service</p>

</div>
</div>
</a>
</div>






</div>

</div>





</div>



</div>

	<%@include file="all_component/footer.jsp" %>
</body>
</html>