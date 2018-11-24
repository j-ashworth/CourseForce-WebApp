package com.mie.controller;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;
import com.mie.model.*;
import com.mie.dao.*;

/**
 * Servlet implementation for LoginController.
 * 
 * This class handles the login servlet and assigns session attributes for users
 * who succesfully log into the system.
 */

public class CreateAccountController extends HttpServlet {
	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		
		String username = request.getParameter("un");
		String password = request.getParameter("pw");
		String firstName = request.getParameter("fn");
		String lastName = request.getParameter("ln");
		String email = request.getParameter("e");
		
		boolean createdUser = false;

		
		try {
			
			//check to see if user's email has a mail.utoronto.ca domain
			if(!email.contains("@")) {
				response.sendRedirect("invalidEmail.jsp");
				throw new Exception("You must enter a valid email address.");
			}
			
			String domain = email.split("@")[1];

			
			if (!domain.equals("mail.utoronto.ca")) {
				response.sendRedirect("invalidEmail.jsp");
				throw new Exception("You must be registered as a University of Toronto student in order to user CourseForce.");
			}
			
			//check to see if user is already created
			List<User> users = new ArrayList<User>();
			users = UserDao.getAllUsers();

			for(User u : users) {
				if (u.getEmail().equals(email)) {
					response.sendRedirect("invalidDupEmail.jsp");
					throw new Exception("Email has already been used.");
				}
				if (u.getUsername().equals(username)){
					response.sendRedirect("invalidUsername.jsp");
					throw new Exception("User has already been created. Please log in.");
				}
			}
			
			createdUser = UserDao.createUser(username, password, firstName, lastName, email);
			
			if (createdUser) {
				HttpSession session = request.getSession(true);
				response.sendRedirect("login.jsp");
				session.setMaxInactiveInterval(900);
			} 
			else {
				response.sendRedirect("invalidLogin.jsp");
			}
		}catch (Throwable theException) {
			System.out.println(theException);
		}
	}
}
