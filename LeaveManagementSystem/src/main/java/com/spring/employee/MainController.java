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
import org.springframework.web.bind.annotation.ResponseBody;
import org.apache.log4j.*;

@Controller
public class MainController {
    
	List<Employee> employeeList = new ArrayList<Employee>();
	public static Logger log = Logger.getLogger(MainController.class);
	
	@Autowired
	private EmployeeDAO employeeDAO;
	
	@RequestMapping(value="/home",method = RequestMethod.GET)
	public String home() {
//		String string=null;
//		string.length();
		log.info("Home Page Initiated");
		return "test";	}
	
	@RequestMapping("/exception_practice")
	public String exceptionPractice() {
		String string="Java is the best";
		Integer.parseInt(string);
		return "index";
	}
	
	
	@RequestMapping("/login")
	public String SignIn(@ModelAttribute("employee") Employee employee,Model m) {
		List<String> gender = new ArrayList<String>();
		gender.add("Male");
		gender.add("Female");
		m.addAttribute("gender", gender);
		log.info("Login Page Initiated");
		return "login";
	}
	
	@RequestMapping("/uservalidation")
	public String userValidation(Model model, @Valid @ModelAttribute("employee") Employee employee, Errors errors  ) {
		if(errors.hasErrors()) {
			log.warn("Invalid Login");
			return "login";
		}
		log.info("--------------------------"+employee.getId());
		employeeList.add(employee);
		employeeDAO.saveEmployee(employee);
		model.addAttribute("Name", employee.getFirstName());
		log.info("Login Successful");
			return "redirect:/viewemployee";
		}
	
	
	@RequestMapping(path = "/details/{name}")
	public String studentProfile(@PathVariable("name") String user, Model model) {
		log.info("Employee Profile Accessed");
		for (Employee employee : employeeList) {
			if (employee.getFirstName().equals(user)) {
				model.addAttribute("usern", employee);
			}
		}
		
		return "employee";
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
        return "editemployee";
    }    
	
	@RequestMapping(path = "/updateemployee")    
    public String viewemp(@ModelAttribute Employee employee,Model m){    
        employeeDAO.updateEmployee(employee);  
        List<Employee> list=employeeDAO.getEmployees();    
        m.addAttribute("list",list); 
        return "viewemployee";    
    }   
	
	
	
//	@ExceptionHandler(value=NullPointerException.class)
//	public String CustomExceptionHandler(Model m) {
//		m.addAttribute("message", "Null Point Exception Has Occured");
//		return "null_pointer";
//	}
//	
//	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
//	@ExceptionHandler(value=Exception.class)
//	public String GlobalExceptionHandler(Model m) {
//		m.addAttribute("message2", "Exception Has Occured");
//		return "exception";
//	}
}
