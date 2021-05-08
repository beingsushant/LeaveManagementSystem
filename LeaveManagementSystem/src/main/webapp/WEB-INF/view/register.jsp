<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	background-color: #1b93e1;
}
</style>
</head>
<body>
	<div>
	<style>
.button4 {
	background-color: #1b2e35;
	border-style: hidden;
	font-weight: bold;
	font-size: 16px;
	color: #ffffff;
	width: 7%;
	margin-right: 7px;
	height: 23.5px;
	transition-duration: 0.4s;
	cursor: pointer;
}

.button5 {
	transition-duration: 0.4s;
}
	</style>
		<h3 align="right"
			style="color: #1b2e35; font-family: sans-serif; font-size: medium;"
			style="color: #1b2e35;">
			<button type="button" class="button4 button5">Language: </button><a href="?lang=en">English</a> | <a href="?lang=fr">French</a>
		</h3>
	</div>
	<div style="margin-left: 8%;margin-top: 7%; " align="left" class="Container">
			<style>
.button2 {
	background-color: #1b93e1;
	border-style: hidden;
	font-weight: bold;
	font-size: 16px;
	color: #000000;
	width: 100px;
	height: 25px;
	transition-duration: 0.4s;
	cursor: pointer;
}

.button3 {
	transition-duration: 0.4s;
}

.button3:hover {
	background-color: #ffffff;
	color: #1b2e35;
}
</style>
		<img style="width: 40%; position:relative ; top: 170px;" src='<c:url value="/images/register.jpg"/>'>
	</div>
	<div style="margin-right: 130px; margin-top: -531px;padding-bottom:  100px;" align="right"
		class="container">
		<h1 align="right"
			style="color: #1b2e35; font-family: sans-serif; margin-right: 101px">Employee
			Registration</h1>
		<form:form action="uservalidation" modelAttribute="employee">
			<table
				style="background-color: #1b2e35; border-style: !important; border-spacing: 29px;">
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.firstName" /></td>
					<td style="border: hidden;"><form:input path="firstName" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.lastName" /></td>
					<td style="border: hidden;"><form:input path="lastName" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.email" /></td>
					<td style="border: hidden;"><form:input path="email" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.password" /></td>
					<td style="border: hidden;"><form:input path="password" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.phone" /></td>
					<td style="border: hidden;"><form:input path="phone" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.designation" /></td>
					<td style="border: hidden;"><form:input path="designation" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.gender" /></td>
					<td style="border: hidden; color: white; "><form:radiobuttons items="${gender}" path="gender" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.fatherName" /></td>
					<td style="border: hidden;"><form:input path="fatherName" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.motherName" /></td>
					<td style="border: hidden;"><form:input path="motherName" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.aadharNumber" /></td>
					<td style="border: hidden;"><form:input path="aadharNumber" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.pan" /></td>
					<td style="border: hidden;"><form:input path="pan" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.education" /></td>
					<td style="border: hidden;"><form:input path="education" /><br><form:errors path="education" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"
						style="border: hidden; font-weight: bold;"><input
						type="submit" class="button2 button3"
						value=<spring:message code="label.submit" />></td>
				</tr>
			</table>
		</form:form>
	</div>
	
	<style>
.vl {
  border-left: 2px solid white;
  height: 640px;
  margin-left: 635px;
  margin-top: -770px;
}
</style>

<div class="vl"></div>
	
	<div style="margin-right: 275px; margin-top: 55px;" align="right"
		class="Container">
		<style>
.button {
	background-color: #1b2e35;
	border-style: hidden;
	font-weight: bold;
	font-size: 16px;
	color: #ffffff;
	width: 11.5%;
	height: 29px;
	transition-duration: 0.4s;
	cursor: pointer;
}

.button1 {
	transition-duration: 0.4s;
}

.button1:hover {
	background-color: #000000;
	color: #1b93e1;
}
</style>
		<button type="button" onclick="location.href='register'"
			class="button button1">Admin Login</button>
			
		<button type="button" onclick="location.href='login'"
			class="button button1">Login</button>
	</div>
</body>
</html>