package com.mie.dao;

import com.mie.util.HashText;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.mie.util.DbUtil;
import com.mie.model.*;
import com.mie.controller.*;

import com.mie.util.*;

public class UserDao {	
	
	public static User login(User user){

		Connection connection;
		Statement stmt = null;
		connection = DbUtil.getConnection();

		String username = user.getUsername();
		String password = user.getPassword();
		String hashPassword = "";
		
		try {
			hashPassword = HashText.sha256(password);
		} catch (NoSuchAlgorithmException e) {
			System.out.println("Error in password hashing!");
		}
		
		String searchQuery = "select * from Users where username='"
				+ username + "' AND pswd='" + hashPassword + "'";
	
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(searchQuery);
			boolean more = rs.next();

			
			if (!more) {
				user.setValid(false);
			}

			else if (more) {
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");

				user.setFirstName(firstName);
				user.setLastName(lastName);
				user.setValid(true);
			}
		}

		catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! "
					+ ex);
		} 
		return user;

	}
	
	public static boolean createUser(String un, String pw, String fn, String ln) {

		Connection connection;
		connection = DbUtil.getConnection();
		String hashPassword  = "";
		boolean result = false;

		
		try {
			hashPassword = HashText.sha256(pw);
		} catch (NoSuchAlgorithmException e) {
			System.out.println("Error in password hashing!");
		}
		
		try {			
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into Users (username, pswd, firstName, lastName) values (?, ?, ?, ? )");
			// Parameters start with 1
			preparedStatement.setString(1, un);
			preparedStatement.setString(2, hashPassword);
			preparedStatement.setString(3, fn);
			preparedStatement.setString(4, ln);
			preparedStatement.executeUpdate();
			result = true;
		}

		catch (Exception ex) {
			result = false;
			ex.printStackTrace();
			System.out.println("User creation failed: An Exception has occurred! "
					+ ex);
		}
		
		return result;

	}
	
	public static List<User> getAllUsers(){		
		
		Connection connection;
		connection = DbUtil.getConnection();
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * from Users");
			while (rs.next()){
				User user = new User();
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("pswd"));
				users.add(user);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return users;
	}
	
	public static void main(String[] args) {
		User user = new User();
		user.setFirstName("John");
		user.setLastName("Doe");
		user.setPassword("sample");
		user.setUsername("sample");
		System.out.println(user);
		
		User user1 = login(user);
		
	}
	
}
