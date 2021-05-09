package com.spring.employee.dao;

import java.util.List;

import com.spring.employee.model.Employee;

public interface EmployeeDaoInterface {

	public void saveEmployee(Employee c);

	public void updateEmployee(Employee c);

	public void deleteEmployee(Employee c);

	public Employee getEmployeeById(long userId);

	public List<Employee> getEmployees();

	public Employee getEmployeeByEmail(String email);

}
