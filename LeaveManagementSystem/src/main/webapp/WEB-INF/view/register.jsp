<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer</title>
</head>
<body>
	<h1 align="center">Employee Registration</h1>
	<form:form action="uservalidation" modelAttribute="employee">
		<h3 align="center">
			<a href="?lang=en">English</a> | <a href="?lang=fr">French</a>
		</h3>
		<table border="2" align="center"}>
			<tr>
				<td><spring:message code="label.firstName" /></td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
			<tr>
				<td><spring:message code="label.lastName" /></td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.email" /></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.password" /></td>
				<td><form:password path="password" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.phone" /></td>
				<td><form:input path="phone" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.designation" /></td>
				<td><form:input path="designation" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.gender" /></td>
				<td><form:radiobuttons items="${gender}" path="gender" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.fatherName" /></td>
				<td><form:input path="fatherName" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.motherName" /></td>
				<td><form:input path="motherName" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.aadharNumber" /></td>
				<td><form:input path="aadharNumber" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.pan" /></td>
				<td><form:input path="pan" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.education" /></td>
				<td><form:input path="education" /></td>
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