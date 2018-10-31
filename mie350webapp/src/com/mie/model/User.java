package com.mie.model;

public class User {
	private String username;
	private String pswd;
	private String firstName;
	private String lastName;
	
	public String getUsername() { return username; }
	
	public String getPassword() { return pswd; }

	public String getFirstName() { return firstName; }
	
	public String getLastName() { return firstName; }
	
	public void setUsername(String newUsername) { this.username = newUsername; }

	public void setPassword(String newPassword) { this.pswd = newPassword; }

	public void setFirstName(String newFirstName) { this.firstName = newFirstName; }

	public void setLastName(String newLastName) { this.lastName = newLastName; }
	
	@Override
	public String toString() {
		return "User [Username: "+ username + ", First Name: " + firstName + ", Last Name: " + lastName +"]";
	}
}
