<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Edit Employee</h1>  
       <form:form method="POST" action="/LeaveManagementSystem/updateemployee">    
        <table>    
        <tr>  
        <td></td>    
         <td><form:hidden  path="id" /></td>  
         </tr>     
         <tr>    
          <td>First Name : </td>   
          <td><form:input path="firstName"  /></td>  
         </tr>    
         <tr> 
         <tr>    
          <td>Last Name : </td>   
          <td><form:input path="lastName"  /></td>  
         </tr>    
         <tr>    
          <td>E-Mail :</td>    
          <td><form:input path="email" /></td>  
         </tr>   
         <tr>    
          <tr>    
          <td>Password : </td>   
          <td><form:password path="password"  /></td>  
         </tr>    
         <tr> 
          <td>Phone :</td>    
          <td><form:input path="phone" /></td>  
         </tr>   
          <tr>    
          <td>Designation :</td>    
          <td><form:input path="designation" /></td>  
         </tr>   
          <tr>    
          <td>Gender :</td>    
          <td><form:radiobuttons items="${gender}" path="gender" /></td>  
         </tr>   
          <tr>    
          <td>Father Name :</td>    
          <td><form:input path="fatherName" /></td>  
         </tr>   
          <tr>    
          <td>Mother Name :</td>    
          <td><form:input path="motherName" /></td>  
         </tr>   
          <tr>    
          <td>Aadhar Number :</td>    
          <td><form:input path="aadharNumber" /></td>  
         </tr>   
          <tr>    
          <td>PAN :</td>    
          <td><form:input path="pan" /></td>  
         </tr>   
          <tr>    
          <td>Education :</td>    
          <td><form:input path="education" /></td>  
         </tr>   
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Update" /></td>    
         </tr>    
        </table>    
       </form:form>    