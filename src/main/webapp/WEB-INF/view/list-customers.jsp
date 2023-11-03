<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Customers</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
	<table class="table table-dark">
	  <thead >
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">First Name</th>
	      <th scope="col">Last Name</th>
	      <th scope="col">Address</th>
	      <th scope="col">Phone</th>
	      <th scope="col">email</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach var="customer" items="${customers}">
	  		<tr>
	  			<td>${customer.id}</td>
	  			<td>${customer.firstName}</td>
	  			<td>${customer.lastName}</td>
	  			<td>${customer.address}</td>
	  			<td>${customer.phone}</td>
	  			<td>${customer.email}</td>
	  			
	  			<td>
	  				<c:url var="editCustomer" value="/customer/show">
	  					<c:param name="customerId" value="${customer.id}"></c:param>
	  				</c:url>
	  				<a href="${editCustomer}" type="button" class="btn btn-primary">edit</a>
	  				
	  				<c:url var="deleteCustomer" value="/customer/delete">
	  					<c:param name="customerId" value="${customer.id}"></c:param>
	  				</c:url>
	  				<a href="${deleteCustomer}" type="button" class="btn btn-danger">delete</a>
	  			</td>
	  		</tr>
	  	</c:forEach>
	  	
	  </tbody>
	</table>
	<a href="add"  type="button" class="btn btn-primary">Add Customer</a>    
	 
</body>
</html>