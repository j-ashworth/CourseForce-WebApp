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

	/**
	 * This class handles the Member objects and the login component of the web
	 * app.
	 */
	static Connection currentCon = null;
	static ResultSet rs = null;

	public static User login(User user) {

		/**
		 * This method attempts to find the member that is trying to log in by
		 * first retrieving the username and password entered by the user.
		 */
		Statement stmt = null;

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
			// connect to DB
			currentCon = DbUtil.getConnection();
			stmt = currentCon.createStatement();
			rs = stmt.executeQuery(searchQuery);
			boolean more = rs.next();

			/**
			 * If there are no results from the query, set the member to false.
			 * The person attempting to log in will be redirected to the home
			 * page when isValid is false.
			 */
			
			if (!more) {
				user.setValid(false);
			}

			/**
			 * If the query results in an database entry that matches the
			 * username and password, assign the appropriate information to
			 * the Member object.
			 */
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
		/**
		 * Return the Member object.
		 */
		return user;

	}
	
	public static boolean createUser(String un, String pw, String fn, String ln) {

		Statement stmt = null;
		String hashPassword  = "";
		boolean query = false;

		
		try {
			hashPassword = HashText.sha256(pw);
		} catch (NoSuchAlgorithmException e) {
			System.out.println("Error in password hashing!");
		}
		
		String insertQuery = "insert into Users (username, pswd, firstName, lastName) values ("
				+ un + ", " + hashPassword + ", " + fn + ", " + ln + ");" ;

		try {
			// connect to DB
			currentCon = DbUtil.getConnection();
			
			PreparedStatement preparedStatement = currentCon
					.prepareStatement("insert into Users (username, pswd, firstName, lastName) values (?, ?, ?, ? )");
			// Parameters start with 1
			preparedStatement.setString(1, un);
			preparedStatement.setString(2, hashPassword);
			preparedStatement.setString(3, fn);
			preparedStatement.setString(4, ln);
			preparedStatement.executeUpdate();
		}

		catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("User creation failed: An Exception has occurred! "
					+ ex);
		}
		
		return query;

	}
}
