<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- <title>Leave Management System</title> -->
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
	<div style="margin-left: 8%;" align="left" class="Container">
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
		<img style="width: 40%;" src='<c:url value="/images/test.jpg"/>'>
	</div>
	<div style="margin-right: 130px; margin-top: -431px;" align="right"
		class="container">
		<h1 align="right"
			style="color: #1b2e35; font-family: sans-serif; margin-right: 101px">Employee
			Login</h1>
		<form:form action="employeedashboard" modelAttribute="employeeLogin">
			<table
				style="background-color: #1b2e35; border-style: !important; border-spacing: 29px;">
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.email" /></td>
					<td style="border: hidden;"><form:input path="email" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;"><spring:message
							code="label.password" /></td>
					<td style="border: hidden;"><form:password path="password" /></td>
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
  height: 350px;
  margin-left: 695px;
  margin-top: -259px;
}
</style>

<div class="vl"></div>
	
	<div style="margin-right: 220px; margin-top: -44px;" align="right"
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
			<button type="button" onclick="location.href='register'"
			class="button button1">Register Now</button>
	</div>
</body>
</html>