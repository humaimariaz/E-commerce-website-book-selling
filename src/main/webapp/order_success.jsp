<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success</title>
<%@include file="all_component/allCss.jsp" %>

</head>
<body>
<%@include file="all_component/navbar.jsp" %>
	
	<div class="container text-center my-3">
	<i class="fa-solid fa-circle-check fa-5x text-success"></i>
	<h1>Thank You!</h1>
	<h2>Your Order Placed Successfully</h2>	
	<h5>within 7 days your product will be delivered</h5>
	<a href="index.jsp" class="btn btn-primary my-3">home</a>
		<a href="order.jsp" class="btn btn-danger my-3">View Order</a>
	
	</div>








</body>
</html>