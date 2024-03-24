<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %> 
    
     <%@ page import="com.DAO.BookDAOImpl" %>
      <%@ page import="com.DB.DBConnect" %>
        <%@ page import="com.entity.BookDtls" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add Books</title>
<%@include file="allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2">
<%@include file="navbar.jsp" %>

<div class="container">
	<div class="row p-4">
		<div class="col-md-4 offset-md-4">
		<div class="card">
		<div class="card-body">
		
		<h4 class="text-center">Edit Books</h4>
		
		
		
		
		<%
			int id=Integer.parseInt(request.getParameter("id"));
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			BookDtls b = dao.getBookById(id);
		%>
		
		<form action="../editbooks" method="post">

	<input type="hidden" name="id" value="<%=b.getBookId()%>">
	
	
	 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Book Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="bname" value="<%=b.getBookName()%>">
  </div>
  
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Author Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="author" value="<%=b.getAuthor()%>">
  </div>
  
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Price</label>
    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="price" value="<%=b.getPrice()%>" >
  </div>
  
  
  
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Book Status</label>
 <select class="form-select" aria-label="Default select example" name="status">
  
  <% if("Active".equals(b.getStatus())){%>
  
  	  <option value="1">Active</option>
  	<option value="2">Inactive</option>
  <%
  }else{
  %>
  		    <option value="2">Inactive</option>
  			<option value="1">Active</option>

  <%}%>
  
  
</select>
  </div>
  
 
  
  
 
  
  <button type="submit" class="btn btn-primary">Update</button>
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