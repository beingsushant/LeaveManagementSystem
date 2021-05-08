<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>


<head>
<meta charset="ISO-8859-1">
<title >Employee Dashboard</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<jsp:include page="menu.jsp" />

	<div align="center" class="container">

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


		<h1 align="center" style="color: #1b2e35; font-family: sans-serif;">Edit
			Your Details</h1>
		<form:form action="/LeaveManagementSystem/updateemployee/${currentEmployee.id}"
			method="POST">
			<table
				style="background-color: #1b2e35; border-style: !important; border-spacing: 29px;">
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">First Name:</td>
					<td style="border: hidden;"><form:input path="firstName" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Last Name:</td>
					<td style="border: hidden;"><form:input path="lastName" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">E-Mail:</td>
					<td style="border: hidden;"><form:input path="email" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Password:</td>
					<td style="border: hidden;"><form:input path="password" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Phone:</td>
					<td style="border: hidden;"><form:input path="phone" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Designation:</td>
					<td style="border: hidden;"><form:input path="designation" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Gender:</td>
					<td style="border: hidden; color: white;"><form:radiobuttons
							items="${gender}" path="gender" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Father Name:</td>
					<td style="border: hidden;"><form:input path="fatherName" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Mother Name:</td>
					<td style="border: hidden;"><form:input path="motherName" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Aadhar Number:</td>
					<td style="border: hidden;"><form:input path="aadharNumber" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">PAN:</td>
					<td style="border: hidden;"><form:input path="pan" /></td>
				</tr>
				<tr style="font-weight: bold; font-family: sans-serif;">
					<td style="border: hidden; color: white;">Education:</td>
					<td style="border: hidden;"><form:input path="education" /><br>
						<form:errors path="education" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"
						style="border: hidden; font-weight: bold;"><input
						type="submit" class="button2 button3" value='Update'></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>