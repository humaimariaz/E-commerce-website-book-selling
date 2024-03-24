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

<%
	User u = (User)session.getAttribute("userobj");
%>


<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid">
<div class="row my-3">

	<%
	String ch=request.getParameter("ch");
	BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
	List<BookDtls> list2 = dao2.getBookBySearch(ch);
	for(BookDtls b : list2){
	%>
	
	<div class="col-md-3 my-3">
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
	
	<div class="row mx-5 my-1">
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
	<a class="btn btn-success btn-sm" href="view_books.jsp?bid<%=b.getBookId() %>" role="button">View Details</a>
	
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



</body>
</html>