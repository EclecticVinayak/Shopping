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
	<h1>...Add Category...</h1>


	<hr/>
	
	<form:form action="addCategory" modelAttribute="cObj" method="post">
		<table>
			<tr>
				<td>Category Name</td>
				<td>
					<form:input path="categoryName" />
				</td>
			</tr>
			
			<tr>
			<td>Description</td>
			<td>
				<form:input path="description" />
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