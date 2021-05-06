<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Profile</title>
</head>
<body>
<h1>Welcome ${currentEmployee.firstName}</h1>
	<br> ${currentEmployee}
	<br>
<a href="/LeaveManagementSystem/editemployee/${currentEmployee.id}">Edit Profile</a>
</body>
</html>