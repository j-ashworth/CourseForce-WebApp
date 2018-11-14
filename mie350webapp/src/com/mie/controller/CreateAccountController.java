package com.mie.controller;

import java.io.*;
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

		/**
		 * Retrieve the entered username and password from the login.jsp form.
		 */
		
		String username = request.getParameter("un");
		String password = request.getParameter("pw");
		String firstName = request.getParameter("fn");
		String lastName = request.getParameter("ln");
		
		boolean createdUser = false;

		try {
			/**
			 * Try to see if the member can create an account.
			 */
			
			createdUser = UserDao.createUser(username, password, firstName, lastName);

			/**
			 * If the isValid value is true, assign session attributes to the
			 * current member.
			 */
			if (createdUser) {

				HttpSession session = request.getSession(true);
				/**
				 * Redirect to the login page.
				 */
				response.sendRedirect("login.jsp");

				/**
				 * Set a timeout variable of 900 seconds (15 minutes) for this
				 * member who has logged into the system.
				 */
				session.setMaxInactiveInterval(900);
			}

			else {
				/**
				 * Otherwise, redirect the user to the invalid login page and
				 * ask them to log in again with the proper credentials.
				 */
				response.sendRedirect("invalid_login.jsp");
			}
		}

		catch (Throwable theException) {
			/**
			 * Print out any errors.
			 */
			System.out.println(theException);
		}
	}
}
