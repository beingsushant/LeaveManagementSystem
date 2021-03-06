package com.spring.employee.model;

import javax.validation.constraints.NotEmpty;

public class Login {
    
	@NotEmpty(message = "E-Mail Can't Be Empty")
	private String email;
	@NotEmpty(message = "Password Can't Be Empty")
	private String password;

	public Login(@NotEmpty(message = "E-Mail Can't Be Empty") String email,
			@NotEmpty(message = "Password Can't Be Empty") String password) {
		super();
		this.email = email;
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Login() {
		// Constructor
	}
	@Override
	public String toString() {
		return "Login [email=" + email + ", password=" + password + "]";
	}

}
