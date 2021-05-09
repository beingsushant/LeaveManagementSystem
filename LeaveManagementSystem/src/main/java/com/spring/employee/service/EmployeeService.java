package com.spring.employee.service;

import java.util.List;

import com.spring.employee.model.Employee;
import com.spring.employee.model.EmployeeDTO;
import com.spring.employee.model.Login;

public interface EmployeeService {

	public void saveEmployee(Employee c);

	public void updateEmployee(Employee c);

	public void deleteEmployee(Employee c);

	public List<String> initGender();

	public boolean employeeValidation(Login loginEmployee);

	public Employee getEmployeeByEmail(String email);	

	public Employee getEmployeeById(long userId);

	public List<Employee> getEmployees();
	
	public boolean isValidPassword(String password, long id);
	
	public Employee mapEmployee(EmployeeDTO employeeDto);


}
