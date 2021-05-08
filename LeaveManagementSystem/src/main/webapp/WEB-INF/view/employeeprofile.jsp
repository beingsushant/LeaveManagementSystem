<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<title>Employee Dashboard</title>
</head>
<body>

<jsp:include page="header.jsp"/>
<jsp:include page="menu.jsp"/>

<h1>Welcome ${currentEmployee.firstName}</h1>

<div style="margin-right: 0; margin-top: 0;" align="center"
		class="container">
		<h1 align="center"
			style="color: #1b2e35; font-family: sans-serif; " > User Details</h1>
			<table
				style="background-color: #1b2e35; border-style: !important; border-spacing: 29px;">
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">First Name:</td>
					<td style="border: hidden;color: white;">${currentEmployee.firstName}</td>
				</tr>
				
								<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Last Name:</td>
					<td style="border: hidden;color: white;">${currentEmployee.lastName}</td>
				</tr>
				
								<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">E-Mail:</td>
					<td style="border: hidden;color: white;">${currentEmployee.email}</td>
				</tr>
				
								<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Password:</td>
					<td style="border: hidden;color: white;">${currentEmployee.password}</td>
				</tr>
				
								<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Phone:</td>
					<td style="border: hidden;color: white;">${currentEmployee.phone}</td>
				</tr>
				
								<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Designation:</td>
					<td style="border: hidden;color: white;">${currentEmployee.designation}</td>
				</tr>
				
								<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Gender:</td>
					<td style="border: hidden;color: white;">${currentEmployee.gender}</td>
				</tr>
				
								<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Father Name:</td>
					<td style="border: hidden;color: white;">${currentEmployee.fatherName}</td>
				</tr>
				
								<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Mother Name:</td>
					<td style="border: hidden;color: white;">${currentEmployee.motherName}</td>
				</tr>
				
								<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Aadhar Number:</td>
					<td style="border: hidden;color: white;">${currentEmployee.aadharNumber}</td>
				</tr>
				
								<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">PAN:</td>
					<td style="border: hidden;color: white;">${currentEmployee.pan}</td>
				</tr>
				
								<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Education:</td>
					<td style="border: hidden;color: white;">${currentEmployee.education}</td>
				</tr>
				
			</table>
	</div>
	
		<div style="margin-top: 20px;" align="center"
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
		<button type="button" onclick="location.href='/LeaveManagementSystem/editemployee/${currentEmployee.id}'"
			class="button button1">Edit Profile</button>
	</div>
</body>
</html>