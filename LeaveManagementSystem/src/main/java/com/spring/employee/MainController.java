package com.spring.employee;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.Null;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
//import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.apache.log4j.*;

@Controller
public class MainController {
    
	List<Employee> employeeList = new ArrayList<Employee>();
	public static Logger log = Logger.getLogger(MainController.class);
	
	@Autowired
	private EmployeeDAO employeeDAO;
	
	@RequestMapping("/login")    
    public String login(@ModelAttribute(name = "employeeLogin") Login loginEmployee,Model m){    
		log.info("Login Page Initiated");
        return "login";    
    } 
	
	@RequestMapping("/register")
	public String SignIn(@ModelAttribute("employee") Employee employee,Model m) {
		List<String> gender = new ArrayList<String>();
		gender.add("Male");
		gender.add("Female");
		m.addAttribute("gender", gender);
		log.info("Registration Page Initiated");
		return "register";
	}
	
	@RequestMapping("/loginvalidation")
	public String loginValidation(Model model, @ModelAttribute(name = "employeeLogin") Login loginEmployee, Errors errors  ) {
		if(errors.hasErrors()) {
			log.warn("Invalid Login");
			return "login";
		}
       Employee validatedEmployee=employeeDAO.getEmployeeByEmail(loginEmployee.getEmail());
		if(validatedEmployee!=null && validatedEmployee.getPassword().equals(loginEmployee.getPassword())) {
			model.addAttribute("employee1", validatedEmployee);
			log.info("Login Successful");
				return "employee";
		}
		else {
			return "login";
		}

		}
	
	@RequestMapping(path = "/details/{id}")
	public String employeeProfile(@PathVariable("id") long userId, Model model) {
		log.info("Employee Profile Accessed");
		Employee employee = employeeDAO.getEmployeeById(userId);
		model.addAttribute("currentEmployee", employee);
		return "employeeprofile";
	}
	
	@RequestMapping("/viewemployee")    
    public String viewemp(Model m){    
        List<Employee> list=employeeDAO.getEmployees(); 
        m.addAttribute("list",list);  
        return "viewemployee";    
    }    
	
	@RequestMapping(path = "/editemployee/{id}")    
    public String viewemp(@PathVariable(name = "id") int id,Model m){    
        Employee employee = employeeDAO.getEmployeeById(id);   
        m.addAttribute("command",employee); 
        List<String> gender = new ArrayList<String>();
		gender.add("Male");
		gender.add("Female");
        m.addAttribute("gender", gender);
        return "editprofile";
    }    
	
	@RequestMapping(path = "/updateemployee")    
    public String viewemp(@ModelAttribute Employee employee,Model m){    
        employeeDAO.updateEmployee(employee);  
        List<Employee> list=employeeDAO.getEmployees();    
        m.addAttribute("list",list); 
        return "viewemployee";    
    }   
}
