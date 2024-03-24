 <%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.*" %>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details</title>
<%@include file="all_component/allCss.jsp" %>

</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp" %>

<%
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	BookDtls b = dao.getBookById(bid);
	%>



	<div class="container py-5">
	<div class="row">
	<div class="col-md-6 text-center p-5 border bg-white">
	<img alt="" src="book/<%=b.getPhotoName() %>" style="height: 200px; width: 150px;"><br>
	<h4 class="my-2 text-muted">Book Name: <Span class="fw-bolder text-dark"><%=b.getBookName() %></Span> </h4>
	<h4 class="text-muted">Author Name: <Span class="fw-bold text-dark"><%=b.getAuthor() %></Span></h4>
	<p>Category: <span class="badge rounded-pill bg-warning text-light"><%=b.getBookCategory() %></span></p>
	
	</div>
	
	
	<div class="col-md-6 text-center p-5 border bg-white">
    <h2><%=b.getBookName() %></h2>
    
    <%
    if("Used Book".equals(b.getBookCategory())) {
    %>
    <h5 class="text-primary">Contact to the Seller</h5>
    <h5 class="text-primary"> <i class="fa-regular fa-envelope"></i> Email: <%=b.getEmail() %></h5>
    
    <%
    }
    %>
    
    
    
    <div class="d-flex align-items-center my-5">
        <div class="col-md-4 text-success text-center p-2">
                <i class="fas fa-money-bill-wave fa-2x me-3"></i>
        	<p>Cash on Delivery</p>
        </div>
        <div class="col-md-4 text-warning text-center p-2">
                <i class="fas fa-rotate-left fa-2x me-3"></i>
                	<p>Return Back Policy</p>
        
        </div>
        <div class="col-md-4 text-danger text-center p-2">
                <i class="fas fa-truck fa-2x"></i>
                        	<p>Fast Delivery</p>
        
        </div>
    
    </div>
    
    <%
    if("Used Book".equals(b.getBookCategory())){
    %>
     <div class=" text-center p-3">
    	<a class="btn btn-success btn-sm my-1  " href="index.jsp" role="button"> <i class="fa-solid fa-cart-shopping"></i> Continue Shopping</a>

    	<a class="btn btn-primary btn-sm my-1 " href="#" role="button">PKR <%=b.getPrice() %></a>
    
    
    </div>
    <%
    }else{
    %>
    
    
    
    
    <div class=" text-center p-3">
    	<a class="btn btn-danger btn-sm my-1  " href="#" role="button"> <i class="fa-solid fa-cart-shopping"></i> Add Cart</a>

    	<a class="btn btn-primary btn-sm my-1 " href="#" role="button">PKR <%=b.getPrice() %></a>
    
    
    </div>
    
    <%}
    %>
    
</div>

	
	</div>
	
	
	</div>




</body>
</html>