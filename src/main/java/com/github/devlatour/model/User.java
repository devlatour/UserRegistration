package com.github.devlatour.model;

import java.util.Date;

public class User {
	private Long id;
		
	private String emailAddress;

	private String firstName;

	private String lastName;
	
	private String password;
	
	private String gender;
	
	private Date dateOfBirth;
	
	private String phoneNumber;
	
	private String altPhoneNumber;
	
	public User(){
		
	}
	
	public User(Long id, String firstName, String lastName, String emailAddress, String phoneNumber){
		this.firstName = firstName;
		this.lastName = lastName;
		this.emailAddress = emailAddress;
		this.password = phoneNumber;
		this.id = id;
	}
	
	
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
		
	public String getGender() {
		return gender;
	}
	
	public String getFirstName() {
		return firstName;
	}

	public Long getId() {
		return id;
	}

	public String getLastName() {
		return lastName;
	}

	public String getPassword() {
		return password;
	}

	public String getEmailAddress() {
		return emailAddress;
	}
	
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}	

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setPhoneNumber(String phoneNumber){
		this.phoneNumber = phoneNumber;
	}

	public void setAltPhoneNumber(String altPhoneNumber){
		this.altPhoneNumber = altPhoneNumber;
	}
	
	public String getPhoneNumber(){
		return phoneNumber;
	}
	
	public String getAltPhoneNumber(){
		return altPhoneNumber;
	}
}
