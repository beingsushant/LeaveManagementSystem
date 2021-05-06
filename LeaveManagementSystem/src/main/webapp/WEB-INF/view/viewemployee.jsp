<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
  
<h1>Employee List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Employee ID</th><th>First Name</th><th>Last Name</th><th>E-Mail</th><th>Password</th><th>Phone Number</th><th>Designation</th><th>Gender</th><th>Father Name</th><th>Mother Name</th><th>Aadhar Number</th><th>PAN</th><th>Education</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="employee" items="${list}">   
   <tr>  
   <td>${employee.id}</td>
   <td>${employee.firstName}</td>  
   <td>${employee.lastName}</td>  
   <td>${employee.email}</td>  
   <td>${employee.password}</td>
   <td>${employee.phone}</td>  
   <td>${employee.designation}</td>  
   <td>${employee.gender}</td>  
   <td>${employee.fatherName}</td>  
   <td>${employee.motherName}</td> 
   <td>${employee.aadharNumber}</td>  
   <td>${employee.pan}</td>  
   <td>${employee.education}</td>  
   <td><a href="applyleave/${employee.id}">Apply Leave</a></td>  
   <td><a href="deleteapplication/${employee.id}">Delete Leave Application</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="register">Logout</a>  