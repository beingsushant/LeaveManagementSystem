<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Edit Customer</h1>  
       <form:form method="POST" action="/SpringCustomerManagement/updatecustomer">    
        <table>    
        <tr>  
        <td></td>    
         <td><form:hidden  path="id" /></td>  
         </tr>     
         <tr>    
          <td>First Name : </td>   
          <td><form:input path="firstname"  /></td>  
         </tr>    
         <tr> 
         <tr>    
          <td>Last Name : </td>   
          <td><form:input path="lastname"  /></td>  
         </tr>    
         <tr>    
          <td>E-Mail :</td>    
          <td><form:input path="email" /></td>  
         </tr>   
         <tr>    
          <td>Phone :</td>    
          <td><form:input path="phone" /></td>  
         </tr>   
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form>    