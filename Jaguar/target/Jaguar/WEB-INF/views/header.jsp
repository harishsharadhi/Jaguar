<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jquery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled javascript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/3.3.7/css/font-awesome.min.css" rel="stylesheet"> 
<title>SAROVARA MODEL</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
	<div class="navbar-header">
	<a class="navbar-brand" href="#">JAGUAR ONLINE BUSSINESS</a>
	
	
	
	
	
</div>
<ul class="nav navbar-nav">
<li class="active"><a href="index">Home</a>
<li><a href="contact"><i class="fa fa-address-book" aria-hidden="true"></i></a></li>
<li><a href="productList">ProductList</a></li>
<li><a href="adding">Admin</a></li>
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin List</a></li>
<ul class="dropdown-menu">
<li><a href="${pageContext.request.contextPath }/productlist">Product</a></li>
<li><a href="${pageContext.request.contextPath }/supplierlist">Supplier</a></li>
<li><a href="${pageContext.request.contextPath }/categorylist">Category</a></li>
</ul>

<li><a href="goToregister">Register</a></li>
</ul>

<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">
Category Choice<span class="caret"></span></a>
<ul class="dropdown-menu">
<c:forEach var="catVal" items="${catList }">

<li><a href="${pageConetxt.request.contextPath }/productCustList?cid=${catVal.cid}">${catVal.cname }</a></li>
</c:forEach>
</ul>




<ul class="nav navbar-nav navbar-right">
	<li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a>
	<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a>
</ul>
</div>
</nav>
</body>
</html>
