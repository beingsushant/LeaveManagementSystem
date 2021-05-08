<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leave Management System</title>
<style>
	body{  
 		background-color: #1b93e1; 
	}
.divTitle{
  border:solid; 3px outset;
  background-color: #333333;   
  text-align: center;
  font-weight: bolder;
  font-size:40px;
  color: #ffffff;
  height: 50px;
  width: 1354px;
  margin-left: -8px;
}

</style>
</head>
<body>
<%-- <img src="<c:url value='/images/hello.jpg'/>"/> --%>
<div class ="divTitle"> Leave Management System</div>
	<div align="right" class="Container">
		<a href="adminLogin"><h3> Admin Login</h3></a>
		</div>
	<div align="center" class="container">
		<form>
			<table align= "center">
				<tr>
					<td><h3>Employee Id:</td>
					<td><input type="text"></h3></td>
				</tr> 
				<tr>
					<td align="right"><h3>Password:</td>
					<td><input type = "password"></h3></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value ="Login"></td>
				</tr>
			</table>
		</form>	
	</div>
	
<%-- 	<form:form> --%>
<!-- 		<div align="center" class="container"> -->
<%-- 			Employee Id:<form:input path="employeeId"/> --%>
<%-- 			Password:<form:input path="employeePassword"/> --%>
<%-- 			<form:button name="submit">Submit</form:button>		 --%>
<!-- 		</div> -->
<%-- 	</form:form> --%>
	
</body>
</html>