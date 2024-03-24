<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp" %>

</head>
<body style="background-color:#E5EAF5;">
<%@include file="all_component/navbar.jsp" %>



<div class="container">
<div class="row p-3">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">

<h3 class="text-center text-success">Add Address</h3>
<form action="">

 <div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <label for="inputPassword4" class="form-label">Address</label>
            <input type="email" class="form-control" id="inputPassword4">
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group">
            <label for="inputEmail4" class="form-label">Landmark</label>
            <input type="text" class="form-control" id="inputEmail4">
        </div>
    </div>
</div>

<div class="row my-2">
    <div class="col-md-6">
        <div class="form-group">
            <label for="inputPassword4" class="form-label">City</label>
            <input type="text" class="form-control" id="inputPassword4">
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group">
            <label for="inputEmail4" class="form-label">State</label>
            <input type="text" class="form-control" id="inputEmail4">
        </div>
    </div>
</div>

<div class="row my-2">
    <div class="col-md-6">
        <div class="form-group">
            <label for="inputPassword4" class="form-label">Zip</label>
            <input type="text" class="form-control" id="inputPassword4">
        </div>
    </div>
</div>
 
 
 <div class="text-center">
 
 <button class="btn btn-warning text-white">Add Address</button>
 </div>
 
 
</form>



</div>



</div>



</div>



</div>



</div>














</body>
</html>