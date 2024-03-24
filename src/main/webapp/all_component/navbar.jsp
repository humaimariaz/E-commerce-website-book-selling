<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %> 
        <%@ page import="com.entity.User" %>
    



<div class="container-fluid" style="height: 10px; background-color:#00bcd4"></div>



<div class="container-fluid p-3 bg-light">
	<div class="row">
	<div class="col-md-3 text-warning ">
	<h3><i class="fa-solid fa-book"></i> BookBridges</h3>
	
	</div>
	
	<div class="col-md-6">
	 <form class="d-flex" role="search" action="search.jsp" method="post">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"  name="ch">
        <button class="btn btn-outline-primary" type="submit">Search</button>
      </form>
	</div>
	
	<c:if test="${not empty userobj}">
	
		<div class="col-md-3">
		
		<a href="checkout.jsp"><i class="fa-solid fa-cart-shopping" style="font-size:25px;"></i></a>
		
	
	<a href="login.jsp" class="btn btn-success"> <i class="fa-solid fa-user"></i>  ${userobj.name}</a>
	<a href="logout" class="btn btn-primary"><i class="fa-solid fa-right-to-bracket"></i> Logout</a>
	</div>
	
	</c:if>
	
<c:if test="${empty userobj}">
	
		<div class="col-md-3">
	<a href="login.jsp" class="btn btn-success"> <i class="fa-solid fa-right-to-bracket"></i> Login</a>
	<a href="register.jsp" class="btn btn-primary"><i class="fa-solid fa-user-plus"></i> Register</a>
	</div>
	
	</c:if>
	
	
	</div>
	
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="all_recent_book.jsp"><i class="fa-solid fa-book-open-reader"></i> Recent Book</a>
          
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link active" href="all_new_book.jsp"> <i class="fa-solid fa-book-open"></i> New Book</a>
          
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-disabled="true" href="all_used_book.jsp"><i class="fa-solid fa-book-bookmark"></i> Used Book</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
       <a href="setting.jsp" class="btn btn-light" type="submit"> <i class="fa-solid fa-gear"></i> Setting</a>
        <button class="btn btn-light mx-1 " type="submit"><i class="fa-solid fa-square-phone"></i> Contact Us</button>
      </form>
    </div>
  </div>
</nav>