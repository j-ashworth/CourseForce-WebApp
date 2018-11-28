package com.mie.controller;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Map.Entry;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.dao.CourseDao;
import com.mie.dao.ReviewDao;
import com.mie.dao.UserDao;
import com.mie.model.Course;
import com.mie.model.Review;
import com.mie.model.User;

public class ReviewController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	private static String REVIEW_PAGE = "/reviewInput.jsp";
	private CourseDao cDao;
	private ReviewDao rDao;
	
	public ReviewController() {
		super();
		cDao = new CourseDao();
		rDao = new ReviewDao();
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		
		Integer ocr = Integer.parseInt(request.getParameter("overallCourseRating"));
		Integer cd = Integer.parseInt(request.getParameter("courseDifficulty"));
		Integer tbu = Integer.parseInt(request.getParameter("tbUsefulness"));
		Integer ww = Integer.parseInt(request.getParameter("writingWorkload"));
		String wr = request.getParameter("writtenReview");
		String as = request.getParameter("academicSesion");
		
		boolean validReview = false;
		boolean validReviewLength = false;
		boolean notNull = false;
		
		if (ocr == null || cd == null || tbu == null || ww == null || wr == null || as == null) {
			notNull = false;
		}
		
		else {
			notNull = true;
		}
		
		if (wr.length() > 255) {
			validReviewLength = false;
			response.sendRedirect("tooLongReview.jsp");
		}
		
		else {
			validReviewLength = true;
		}
		
		
		if (as.equals("Fall")) {
			as = "F";
		}
		if (as.equals("Winter")) {
			as = "W";
		}
		if (as.equals("Summer")) {
			as = "S";
		}
		
		String cc = request.getParameter("courseCode");
		
		HttpSession session = request.getSession(true);
		User user = (User) session.getAttribute("currentSessionmember");
		
		String username = user.getUsername();
		
		ArrayList<Course> courses = new ArrayList<Course>();
		courses = cDao.getAllCourses();
		for (Course c : courses) {
			if (cc.equalsIgnoreCase(c.getCourseCode())) {
				validReview = true;
				break;
			}
		}
		
		if (validReview == false) {
			response.sendRedirect("wrongCourseReview.jsp");
		}
		
		//if they put a review for a course that doesn't exist let them try again
		if (validReview && notNull && validReviewLength) {
			rDao.addReview(cc, username, ocr, tbu, cd, ww, as, wr);
			response.sendRedirect("sucessfulReview.jsp");
		}
		
		/**
		 * Redirect to the search results page after the list of courses
		 * matching the keywords has been retrieved.
		 */ 
		
	}
}
