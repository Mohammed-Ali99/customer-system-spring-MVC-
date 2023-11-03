<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fo" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Customer</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
	<fo:form action="save" modelAttribute="customer" method="GET">
		<div class="form-row">
		    <fo:hidden path="id"/>
		    <div class="form-group col-md-6">
		      <label>first Name</label>
		      <fo:input path="firstName" class="form-control" placeholder="First Name"/>
		    </div>
		    
		    <br>
		    
		    <div class="form-group col-md-6">
			    <label for="inputAddress">last Name</label>
			    <fo:input path="lastName" class="form-control" placeholder="Last Name"/>
			</div>
			
			<br>
			
			<div class="form-group  col-md-6">
			    <label for="inputAddress2">address</label>
			    <fo:input path="address" class="form-control" placeholder="Address"/>
			</div>
			
			<br>
			
			<div class="form-group  col-md-6">
			    <label for="inputAddress2">Phone</label>
			    <fo:input path="phone" class="form-control" placeholder="phone"/>
			</div>
			
			<br>
			
			<div class="form-group  col-md-6">
			    <label for="inputAddress2">email</label>
			    <fo:input path="email" class="form-control" placeholder="email"/>
			</div>
		</div>
	  	<button type="submit" class="btn btn-primary">Done !</button>
	</fo:form>
</body>
</html>