package com.spring.employee;


import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public class EmployeeDAO {
	
	@Autowired
	private HibernateTemplate template;
	
	public void saveEmployee(Employee c){  
       template.save(c);
	   System.out.println("Done");
	}  
	
	public void updateEmployee(Employee c){  
	    template.update(c);
	}  
	 
	
	public void deleteEmployee(Employee c){  
	    template.delete(c);
	} 
	
	public Employee getEmployeeById(long userId){ 
		List<Employee> employee=new ArrayList<Employee>();
		employee=(List<Employee>) template.findByNamedParam("from Employee as e where e.id= :id", "id", userId);
		Employee c=employee.get(0);
		return c;
	} 
	
	public List<Employee> getEmployees(){    
		List<Employee> employee=new ArrayList<Employee>();
		employee=(List<Employee>) template.find("from Employee");
		
		return employee;
	}
	
	public Employee getEmployeeByEmail(String email){ 
		List<Employee> employee=new ArrayList<Employee>();
		employee=(List<Employee>) template.findByNamedParam("from Employee as e where e.email= :email", "email", email);
		Employee c;
		if(employee.size()>0) {
			c=employee.get(0);
			}
		else {
			c=null;
			}
		return c;
	} 
	}  