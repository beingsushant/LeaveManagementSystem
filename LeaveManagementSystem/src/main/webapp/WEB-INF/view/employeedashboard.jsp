<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Dashboard</title>
</head>
<body>

<jsp:include page="header.jsp"/>
<jsp:include page="menu.jsp"/>
<h1>Welcome ${currentEmployee.firstName}</h1>
	<br>
</body>
</html>