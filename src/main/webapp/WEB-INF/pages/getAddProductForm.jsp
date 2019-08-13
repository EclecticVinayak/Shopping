<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>...Add Product...</h1>


	<hr/>
	
	<form:form action="addCatgeory" modelAttribute="pObj" method="post">
		<table>

			<tr>
				<td>
					Product Id
				</td>
				<td>
					<form:input path="productId" />
				</td>
			</tr>
			
			<tr>
				<td>Product Name</td>
				<td>
					<form:input path="productName" />
				</td>
			</tr>
			
			<tr>
			<td>Product Description</td>
			<td>
				<form:input path="prodesc" />
			</td>
			</tr>
			
			<tr>
			<td>Product Category</td>
			<td>
				<form:input path="prodesc" />
			</td>
			</tr>
			
			
			
			<td></td>
			<td>
				<input type="Submit" value="ADD"/>
			</td>		
		</table>
	</form:form> 
</body>
</html>