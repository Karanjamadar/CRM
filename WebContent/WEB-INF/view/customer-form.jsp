<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@  taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save the Customer</title>

	<link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	>
	<link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"
	>
</head>
<body>

		<div id= "wrapper">
			<div id ="header">
						<h2>CRM - Customer Relationship management</h2>
			</div>
		</div>
		<div id = "container">
		<h2>Save Customer</h2>
	<form:form action="saveCustomer" modelAttribute="customer" method="POST" >
	
	<!-- need to associate this data to our selected customer id-->
	
	<form:hidden path="id"/>
		
		<table>
		<tbody>
		
		 <tr>
				<td> <label> First name :</label> </td>		
				<td> <form:input path="firstName" /> </td>
		</tr> 
		
		<tr>
				<td> <label> Last name :</label> </td>		
				<td> <form:input path="lastName" /> </td>
		</tr>
		
		<tr>
				<td> <label> Email :</label> </td>		
				<td> <form:input path="email" /> </td>
		</tr>
		
		<tr>
				<td> <label> </label> </td>		
				<td> <input type="submit" value ="save" class = "save"/> </td>
		</tr>
		
		
		</tbody>
		</table>
		</form:form>
		
		<div style="clear; both;">
		<a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
		</div>
		</div>

</body>
</html>