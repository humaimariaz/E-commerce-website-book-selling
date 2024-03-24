  <%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.util.List" %>
    <%@ page import="com.entity.User" %>
 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All New Books</title>
<%@include file="all_component/allCss.jsp" %>


<style type="text/css">


.crd-ho:hover{
	background-color: #f2f3f5;
}

#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}

}


</style>

</head>
<body>
<%
	User u = (User)session.getAttribute("userobj");
%>


<c:if test="${not empty addCart}" >

	<div id="toast"> ${addCart} </div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>

	

</c:if>



<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid">
<div class="row my-3">

<%
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	List<BookDtls> list = dao.getAllNewBook();
	for(BookDtls b : list){
	%>
	<div class="col-md-3 my-3">
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
	






	</div>
</div>



</body>
</html>