package com.spring.employee;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.ValueGenerationType;

@Entity
@Table(name="employee")
public class Employee {
	
    @Id
	private long id;
	@NotEmpty(message = " First Name Can't Be Empty")
	private String firstName;
	@NotEmpty(message = " Last Name Can't Be Empty")
	private String lastName;
	@NotEmpty(message = " Email Is Required")
	private String email;
	@NotEmpty(message = " Password Is Required")
	private String password;
	@NotNull(message = " Phone Number Is Required")
	private long phone;
	@NotEmpty(message = " Designation Is Required")
	private String designation;
	@NotEmpty(message = " Gender Is Required")
	private String gender;
	@NotEmpty(message = " Father's Name Is Required")
	private String fatherName;
	@NotEmpty(message = " Mother's Name Is Required")
	private String motherName;
	@NotNull(message = " Aadhar Number Is Required")
	private long aadharNumber;
	@NotNull(message = " PAN Is Required")
	private String pan;
	@NotEmpty(message = " Education Is Required")
	private String education; 
	
	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}
	
	
	

	public Employee( long id, @NotEmpty(message = " First Name Can't Be Empty") String firstName,
			@NotEmpty(message = " Last Name Can't Be Empty") String lastName,
			@NotEmpty(message = " Email Is Required") String email,
			@NotEmpty(message = " Password Is Required") String password,
			@NotNull(message = " Phone Number Is Required") long phone,
			@NotEmpty(message = " Designation Is Required") String designation,
			@NotEmpty(message = " Gender Is Required") String gender,
			@NotEmpty(message = " Father's Name Is Required") String fatherName,
			@NotEmpty(message = " Mother's Name Is Required") String motherName,
			@NotNull(message = " Aadhar Number Is Required") long aadharNumber,
			@NotNull(message = " PAN Is Required") String pan,
			@NotEmpty(message = " Education Is Required") String education) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.designation = designation;
		this.gender = gender;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.aadharNumber = aadharNumber;
		this.pan = pan;
		this.education = education;
	}



	public long getId() {
		return id;
	}



	public void setId(long id) {
		this.id = id;
	}



	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public long getAadharNumber() {
		return aadharNumber;
	}
	public void setAadharNumber(long aadharNumber) {
		this.aadharNumber = aadharNumber;
	}
	public String getPan() {
		return pan;
	}
	public void setPan(String pan) {
		this.pan = pan;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", phone=" + phone + ", designation=" + designation + ", gender=" + gender + ", fatherName="
				+ fatherName + ", motherName=" + motherName + ", aadharNumber=" + aadharNumber + ", pan=" + pan
				+ ", education=" + education + "]";
	}
	
}
