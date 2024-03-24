  <%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Books</title>
<%@include file="all_component/allCss.jsp" %>


<style type="text/css">


.crd-ho:hover{
	background-color: #f2f3f5;
}

</style>

</head>
<body>
<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid">
<div class="row my-3">

<%
	BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
	List<BookDtls> list3 = dao3.getAllUsedBook();
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
</div>



</body>
</html>