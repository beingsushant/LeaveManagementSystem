<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.divTitle{
   border: 3px outset;
  background-color: #1b2e35 ;    
  text-align: center;
  font-family:sans-serif;
  font-weight: bolder;
  font-size:40px;
  color: #ffffff;
  height: 50px;
  width: 1400px;
  border-style:none;
  position: relative;top: -8px;left:-8px;
}
.topnav {
  border-bottom: 30px;
  overflow: hidden;
  background-color: #1b93e1;
  width: 1400px;
  border-style:none;
  position: relative;top: -8px;left:-8px;
}

.topnav a {
  float: left;
  color: black;
  font-weight:bold;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 20px;
  
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

</style>
</head>
<body>
	<div class="topnav">
		<a href="/LeaveManagementSystem/details/${currentEmployee.id}">Home</a>
		<a href="/LeaveManagementSystem/details/${currentEmployee.id}">Employee</a>
		<a href="/LeaveManagementSystem/details/${currentEmployee.id}">LeaveRequests</a>
		<a href="/LeaveManagementSystem/details/${currentEmployee.id}">LeaveQuota</a>
		<a href="/LeaveManagementSystem/details/${currentEmployee.id}">Profile</a>
		<a href="/LeaveManagementSystem/updatepassword/${currentEmployee.id}">ChangePassword</a> 
		<a href="/LeaveManagementSystem/login">Logout</a>
	</div>
</body>
</html>