<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title >Employee Dashboard</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<jsp:include page="menu.jsp" />

<div align="center"
		class="container">
		<h1 align="center"
			style="color: #1b2e35; font-family: sans-serif;">Change Password</h1>
		<form:form action="/LeaveManagementSystem/changepassword/${currentEmployee.id}">
			<table
				style="background-color: #1b2e35; border-style: !important; border-spacing: 29px;">
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">New Password</td>
					<td style="border: hidden;"><form:password path="password" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"
						style="border: hidden; font-weight: bold;"><input
						type="submit" class="button2 button3"
						value=Submit></td>
				</tr>
			</table>
		</form:form>
		
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
	</div>
	
</body>
</html>