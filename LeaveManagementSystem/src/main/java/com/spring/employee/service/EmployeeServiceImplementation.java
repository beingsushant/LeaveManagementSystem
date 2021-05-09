package com.spring.employee.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.employee.dao.EmployeeDaoInterface;
import com.spring.employee.model.Employee;
import com.spring.employee.model.EmployeeDTO;
import com.spring.employee.model.Login;

@Service
public class EmployeeServiceImplementation implements EmployeeService{
	
    @Autowired
	private EmployeeDaoInterface employeeDAO;

    @Override
	public void saveEmployee(Employee c){  
		
		employeeDAO.saveEmployee(c);
		
	}  
    
	@Override
	public void updateEmployee(Employee c){  
	
		employeeDAO.updateEmployee(c);
	
	}  	 

	@Override
	public void deleteEmployee(Employee c){  
		
		employeeDAO.deleteEmployee(c);
	
	} 


	@Override
	public List<String> initGender(){
		List<String> gender = new ArrayList<>();
		gender.add("Male");
		gender.add("Female");
		return gender;
	}
	

	@Override
	public boolean employeeValidation(Login loginEmployee) {
		
		Employee validatedEmployee=employeeDAO.getEmployeeByEmail(loginEmployee.getEmail());
		return (validatedEmployee!=null&&validatedEmployee.getPassword().equals(loginEmployee.getPassword()));
	
	}
	

	@Override
	public Employee getEmployeeByEmail(String email){ 

		return employeeDAO.getEmployeeByEmail(email);

	}


	@Override
	public Employee getEmployeeById(long userId){ 
		
		return employeeDAO.getEmployeeById(userId);
		
	} 

	@Override
	public List<Employee> getEmployees(){  

		return employeeDAO.getEmployees();

	}
	
	@Override
	public boolean isValidPassword(String password, long id) {
		Employee employee = employeeDAO.getEmployeeById(id);
		return (employee.getPassword().equals(password));
	}
	
	@Override
	public Employee mapEmployee(EmployeeDTO employeeDto) {
		
		Employee employee = new Employee();
		employee.setId(employeeDto.getId());
		employee.setFirstName(employeeDto.getFirstName());
		employee.setLastName(employeeDto.getLastName());
		employee.setPhone(employeeDto.getPhone());
		employee.setPassword(employeeDto.getPassword());
		employee.setEmail(employeeDto.getEmail());
		employee.setFatherName(employeeDto.getFatherName());
		employee.setMotherName(employeeDto.getMotherName());
		employee.setDesignation(employeeDto.getDesignation());
		employee.setPan(employeeDto.getPan());
		employee.setAadharNumber(employeeDto.getAadharNumber());
		employee.setEducation(employeeDto.getEducation());
		employee.setGender(employeeDto.getGender());
		return employee;
		
	}
}
