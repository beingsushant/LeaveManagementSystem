package com.spring.employee.controller;
import java.util.List;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.employee.model.Employee;
import com.spring.employee.model.Login;
import com.spring.employee.service.EmployeeServiceImplementation;


@Controller
public class MainController {
	
	@Autowired
	EmployeeServiceImplementation service;
	private String gender = "gender";
    
	private static final Logger log = Logger.getLogger(MainController.class);
	
	@RequestMapping("/login")    
    public String login(@ModelAttribute(name = "employeeLogin") Login loginEmployee,Model m){    
		log.info("Login Page Initiated");
        return "login";    
    } 
	
	@RequestMapping("/test")    
    public String login(){    
		log.info("Login Page Initiated");
        return "home";    
    } 
	
	
	@RequestMapping("/register")
	public String signIn(@ModelAttribute("employee") Employee employee1,Model m) {
		
		Employee employee = employee1;
		m.addAttribute(gender, service.initGender());
		log.info("Registration Page Initiated");
		return "register";
		
	}
	
	@RequestMapping("/employeedashboard")
	public String loginValidation(Model model, @ModelAttribute(name = "employeeLogin") Login loginEmployee, Errors errors  ) {
		if(errors.hasErrors()) {
			log.warn("Invalid Login");
			return "login";
		}
		
		if(service.employeeValidation(loginEmployee)) {
			model.addAttribute("currentEmployee", service.getEmployeeByEmail(loginEmployee.getEmail()));
			log.info("Login Successful");
			return "employeedashboard";
		}
		else {
			return "redirect:/login";
		}

	}
	
	@RequestMapping("/uservalidation")
	public String userValidation(Model model, @Valid @ModelAttribute("employee") Employee employee1, BindingResult result ) {
		
		Employee employee = employee1;
		
		if(result.hasErrors()) {
			log.warn("Invalid Login");
			model.addAttribute(gender, service.initGender());
			return "register";
		}
        service.saveEmployee(employee);
        model.addAttribute("currentEmployee", employee);
		log.info("Login Successful");
			return "employeedashboard";
		}
	
	@RequestMapping(path = "/details/{id}")
	public String employeeProfile(@PathVariable("id") long userId, Model model) {
		log.info("Employee Profile Accessed");
		
		Employee employee = service.getEmployeeById(userId);
		model.addAttribute("currentEmployee", employee);
		return "employeeprofile";
	}
	
	@RequestMapping("/viewemployee")    
    public String viewemp(Model m){    
		
        List<Employee> list=service.getEmployees(); 
        m.addAttribute("list",list);  
        return "viewemployee";
    }    
	
	@RequestMapping(path = "/editemployee/{id}")    
    public String viewemp(@PathVariable(name = "id") int id,Model m){    
		
        Employee employee = service.getEmployeeById(id);   
        m.addAttribute("command",employee); 
        m.addAttribute("currentEmployee", employee);
        m.addAttribute(gender, service.initGender());
        return "editprofile";
    }    
	
	@RequestMapping(path = "/updateemployee/{id}")    
    public String viewemp(@ModelAttribute Employee employee1,Model m){  
		Employee employee = employee1;
        service.updateEmployee(employee);  
        List<Employee> list=service.getEmployees();
        m.addAttribute("currentEmployee", employee);
        m.addAttribute("list",list); 
        return "employeeprofile";  
    }  
	
	@RequestMapping(path = "/updatepassword/{id}")    
    public String updatePassword(@PathVariable(name = "id") int id,Model m){  
		Employee employee = service.getEmployeeById(id);
		m.addAttribute("command", employee);
        m.addAttribute("currentEmployee", employee);
        return "changepassword";
    }
	
	@RequestMapping(path = "/changepassword/{id}")
	public String updatePassword(@RequestParam("password") String password, @PathVariable(name = "id") int id, Model m) {
			Employee employee = service.getEmployeeById(id);
			employee.setPassword(password);
			service.updateEmployee(employee);
			m.addAttribute("currentEmployee", employee);
			return "employeedashboard";
		
	}
}
