package com.mie.model;

public class User {
	private String username;
	private String pswd;
	private String firstName;
	private String lastName;
	private String email;
	private boolean valid;
	
	public String getUsername() { return username; }
	
	public String getPassword() { return pswd; }

	public String getFirstName() { return firstName; }
	
	public String getLastName() { return firstName; }
	
	public String getEmail() { return email; }

	public void setUsername(String newUsername) { this.username = newUsername; }

	public void setPassword(String newPassword) { this.pswd = newPassword; }

	public void setFirstName(String newFirstName) { this.firstName = newFirstName; }

	public void setLastName(String newLastName) { this.lastName = newLastName; }

	public void setEmail(String newEmail) { this.email = newEmail; }
	
	public boolean isValid() { return valid; }
	
	public void setValid(boolean newValid) { valid = newValid; }
	
	@Override
	public String toString() {
		return "User [Username: "+ username + ", First Name: " + firstName + ", Last Name: " + lastName + ", Email: " + email +"]";
	}
}
