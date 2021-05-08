<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<h1 align="center">Employee Login</h1>
<form:form action="loginvalidation" modelAttribute="employeeLogin">
		<h3 align="center">
			<a href="?lang=en">English</a> | <a href="?lang=fr">French</a>
		</h3>
		<table border="2" align="center"}>
			<tr>
				<td><spring:message code="label.email" /></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.password" /></td>
				<td><form:password path="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit"
					value=<spring:message code="label.submit" />></td>
			</tr>
</table>
</form:form>
</body>
</html>