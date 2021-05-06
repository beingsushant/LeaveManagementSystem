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
	
	public Employee getEmployeeById(int s){ 
		List<Employee> employee=new ArrayList<Employee>();
		employee=(List<Employee>) template.findByNamedParam("from Employee as e where e.id= :id", "id", s);
		Employee c=employee.get(0);
		return c;
	} 
	
	public List<Employee> getEmployees(){    
		List<Employee> employee=new ArrayList<Employee>();
		employee=(List<Employee>) template.find("from Employee");
		
		return employee;
	}
	}  