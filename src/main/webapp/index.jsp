<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.util.List" %>
    <%@ page import="com.entity.User" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook Index page</title>
<link rel="icon" type="image/x-icon" href="img/favicon.png">

<%@include file="all_component/allCss.jsp" %>

<style type="text/css">
.back-img{
background: url("img/img4.webp");
height: 50vh;
width:100%;
background-repeat: no-repeat;
background-size: cover;
}

.crd-ho:hover{
	background-color: #f2f3f5;
}

</style>
</head>
<body style="background-color:#E5EAF5;">

<%
	User u = (User)session.getAttribute("userobj");
%>

<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid back-img">
	<h2 class="text-center text-danger fw-bold">Book Library</h2>
	<h4 class="text-center text-danger fw-bold">A place to learn</h4>
</div>


<!-- start recent book -->

<div class="container">
	<h3 class="text-center my-3 fw-bold">Recent Books</h3>
		<div class="row">
	
	<%
	BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
	List<BookDtls> list2 = dao2.getRecentBooks();
	for(BookDtls b : list2){
	%>
	
	<div class="col-md-3 my-1">
	<div class="card crd-ho" > 
	<div class="card-body text-center">
	
	<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px; class="img-thumblin">
	<h6 class="my-2"><%=b.getBookName()%></h6>
	<h6 class="fw-bold"><%=b.getAuthor()%></h6>
	
	<p>
	<%
	if(b.getBookCategory().equals("Used Book"))
		{%>
		Category: <span class="badge rounded-pill bg-warning text-light"><%=b.getBookCategory() %></span></p>
	
	<div class="row mx-5">
	<a class="btn btn-white btn-sm fw-bold" href="#" role="button">PKR <%=b.getPrice()%></a>
	
	</div>
	
	<div class="row mx-5">
	<a class="btn btn-success btn-sm" href="view_books.jsp?bid=<%=b.getBookId() %>" role="button">View Details</a>
	
	</div>
	
	
	<%
	}else{
	%>
	
	Category: <span class="badge rounded-pill bg-warning text-light"><%=b.getBookCategory() %></span></p>


	
	<div class="row mx-5">
	<a class="btn btn-white btn-sm fw-bold" href="#" role="button">PKR <%=b.getPrice()%></a>
	
	</div>
	
	<div class="row">
	
	<%
	if (u == null){
	%>
	<div class="col-md-6">
		<a class="btn btn-danger btn-sm my-1" href="login.jsp" role="button"> <i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
		</div>
	<%
	}else{
	%>
	
	<div class="col-md-6">
	<a class="btn btn-danger btn-sm my-1" href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" role="button"> <i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
	</div>
	<%}
	%>
	
	<div class="col-md-6 my-1">
	<a class="btn btn-success btn-sm" href="view_books.jsp?bid=<%=b.getBookId() %>" role="button">View Details</a>
	
	</div>
	
	</div>
		
	<%}
	
	%>
	
	
	
	
	
	
	
	</div>
	
	</div>
	
		</div> 
      <%
	}
	%>
	
	
	
	
	
	
	
	
	</div>
	
	<div class="text-center mt-1">
	<a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white my-1">View All</a>
	</div>
	</div>
	
	<!-- END recent book -->

	<!-- start new book -->
	
	<div class="container">
	<h3 class="text-center my-3 fw-bold">New Books</h3>
	<div class="row">
	
	
	<%
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	List<BookDtls> list = dao.getNewBook();
	for(BookDtls b : list){
	%>
	<div class="col-md-3 my-1">
	<div class="card crd-ho" >  
	<div class="card-body text-center">
	
	<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px; class="img-thumblin">
	<h6 class="my-2"><%=b.getBookName()%></h6>
	<h6 class="fw-bold"><%=b.getAuthor()%></h6>
<p>Category: <span class="badge rounded-pill bg-warning text-light"><%=b.getBookCategory() %></span></p>
	
	
	
	
	<div class="row mx-5">
	<a class="btn btn-white btn-sm fw-bold" href="#" role="button">PKR <%=b.getPrice()%></a>
	
	</div>
	
	<div class="row">
	
	<%
	if (u == null){
	%>
	<div class="col-md-6">
		<a class="btn btn-danger btn-sm my-1" href="login.jsp" role="button"> <i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
		</div>
	<%
	}else{
	%>
	
	<div class="col-md-6">
	<a class="btn btn-danger btn-sm my-1" href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" role="button"> <i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
	</div>
	<%}
	%>
	
	
	<div class="col-md-6 my-1">
	<a class="btn btn-success btn-sm" href="view_books.jsp?bid=<%=b.getBookId() %>" role="button">View Details</a>
	
	</div>
	
	</div>
	
	
	
	
	</div>
	
	</div>
	
		</div>
	
	
	<%
	}
	%>
	
	

	<div class="text-center mt-1">
	<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white my-1">View All</a>
	</div>
	</div>
	</div>
	<!-- end new book -->
	
		<!-- start old book -->
		
	<div class="container">
	<h3 class="text-center my-3 fw-bold">Used Books</h3>
	<div class="row">
	<%
	BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
	List<BookDtls> list3 = dao2.getUsedBooks();
	for(BookDtls b : list3){
	%>
	
	<div class="col-md-3 my-1">
	<div class="card crd-ho" > 
	<div class="card-body text-center">
	
	<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px; class="img-thumblin">
	<h6 class="my-2"><%=b.getBookName()%></h6>
	<h6 class="fw-bold"><%=b.getAuthor()%></h6>
	
	<p>Category: <span class="badge rounded-pill bg-warning text-light"><%=b.getBookCategory() %></span></p>
	
	<div class="row mx-5">
	<a class="btn btn-white btn-sm fw-bold" href="#" role="button">PKR <%=b.getPrice()%></a>
	
	</div>
	
	
	
	<div class="row mx-5">
	<a class="btn btn-success btn-sm" href="view_books.jsp?bid=<%=b.getBookId() %>" role="button">View Details</a>
	
	</div>
	
	</div>
	
	</div>
	
	</div>
	
	
	
	
	
	
	
	<%
	}
	%>
	
	
	
	
	

	</div>
	
	<div class="text-center mt-1">
	<a href="all_used_book.jsp" class="btn btn-danger btn-sm text-white my-1">View All</a>
	</div>
	</div>
	
	<!-- old book ends -->
		
	<%@include file="all_component/footer.jsp" %>
	
</body>
</html>