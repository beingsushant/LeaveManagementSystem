package com.spring.employee.dao;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.spring.employee.model.Employee;

@Transactional
@Repository("employeeDAO")
public class EmployeeDAO implements EmployeeDaoInterface{
	
	@Autowired
	private HibernateTemplate template;
	
	@Override
	public void saveEmployee(Employee c){  
       template.save(c);
	}  
	
	@Override
	public void updateEmployee(Employee c){  
	    template.update(c);
	}  
	 
	@Override
	public void deleteEmployee(Employee c){  
	    template.delete(c);
	} 
	
	@Override
	public Employee getEmployeeById(long userId){ 
		List<Employee> employee;
		employee=(List<Employee>) template.findByNamedParam("from Employee as e where e.id= :id", "id", userId);
		return employee.get(0);
	} 
	
	@Override
	public List<Employee> getEmployees(){    
		List<Employee> employee;
		employee=(List<Employee>) template.find("from Employee");
		
		return employee;
	}
	

	@Override
	public Employee getEmployeeByEmail(String email){ 
		List<Employee> employee;
		employee=(List<Employee>) template.findByNamedParam("from Employee as e where e.email= :email", "email", email);
		Employee c;
		if(!employee.isEmpty()) {
			c=employee.get(0);
			}
		else {
			c=null;
			}
		return c;
	} 
	}  