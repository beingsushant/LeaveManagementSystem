package com.spring.employee.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.employee.dao.EmployeeDAO;
import com.spring.employee.model.Employee;
import com.spring.employee.model.Login;

@Service
public class EmployeeServiceImplementation implements EmployeeService{
	
    @Autowired
	private EmployeeDAO employeeDAO;

	public void saveEmployee(Employee c){  
		
		employeeDAO.saveEmployee(c);
		
	}  
    
	
	public void updateEmployee(Employee c){  
	
		employeeDAO.updateEmployee(c);
	
	}  	 

	public void deleteEmployee(Employee c){  
		
		employeeDAO.deleteEmployee(c);
	
	} 


	public List<String> initGender(){
		List<String> gender = new ArrayList<>();
		gender.add("Male");
		gender.add("Female");
		return gender;
	}
	

	public boolean employeeValidation(Login loginEmployee) {
		
		Employee validatedEmployee=employeeDAO.getEmployeeByEmail(loginEmployee.getEmail());
		return (validatedEmployee!=null&&validatedEmployee.getPassword().equals(loginEmployee.getPassword()));
	
	}
	

	public Employee getEmployeeByEmail(String email){ 

		return employeeDAO.getEmployeeByEmail(email);

	}


	public Employee getEmployeeById(long userId){ 
		
		return employeeDAO.getEmployeeById(userId);
		
	} 

	public List<Employee> getEmployees(){  

		return employeeDAO.getEmployees();

	}
	
	public boolean isValidPassword(String password, long id) {
		Employee employee = employeeDAO.getEmployeeById(id);
		return (employee.getPassword().equals(password));
	}
}
