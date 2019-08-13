<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Demo</title>
</head>
<body>
	<h1>... View Categories...</h1>
	
		 <table border="1">
		<tr>
			<th>Category Id</th>
			<th>Category Name</th>
			<th>Category Description</th>
			<th colspan="2">Options</th>
		</tr>
		
		<c:forEach items="${cList}" var="cl">
			<tr>
				<td>${cl.categoryId}</td>
				<td>${cl.categoryName}</td>
				<td>${cl.description}</td>
				<td><a href="updateCategory/${cl.categoryId}">Update</a></td>
				<td><a href="deleteCategory/${cl.categoryId}">Delete</a></td>				
			</tr>
			
		</c:forEach>
	</table>
	
	<p ><a href="getCategoryForm">Add Category</a></p>
	<p ><a href="home">Homepage</a></p>
</body>
</html>