package com.spring.employee;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class AllExceptionHandler {
	
	@ExceptionHandler(value=NullPointerException.class)
	public String customExceptionHandler(Model m) {
		m.addAttribute("message", "Null Point Exception Has Occured");
		return "null_pointer";
	}
	
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=Exception.class)
	public String globalExceptionHandler(Model m) {
		m.addAttribute("message2", "Exception Has Occured");
		return "exception";
	}
	
}
