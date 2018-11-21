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

import com.mie.dao.CourseDao;
import com.mie.dao.ReviewDao;
import com.mie.dao.UserDao;
import com.mie.model.Course;
import com.mie.model.Review;

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
		
		int ocr = Integer.parseInt(request.getParameter("overallCourseRating"));
		int cd = Integer.parseInt(request.getParameter("courseDifficulty"));
		int tbu = Integer.parseInt(request.getParameter("tbUsefullness"));
		int ww = Integer.parseInt(request.getParameter("writingWorkload"));
		String wr = request.getParameter("writtenReview");
		String as = request.getParameter("academicSession");
		String cc = request.getParameter("courseCode");
		String username = request.getParameter("username");
		
		
		boolean validReview = false;
		
		ArrayList<Course> courses = new ArrayList<Course>();
		courses = cDao.getAllCourses();
		for (Course c : courses) {
			if (c.equals(cc)) {
				validReview = true;
				break;
			}
		}
		
		//if they put a review for a course that doesn't exist let them try again
		if (validReview == false) {
			response.sendRedirect("reveiwInput.jsp");
		}
		//send back to make another review
		else {
		rDao.addReview(cc, username, ocr, tbu, cd, ww, as, wr);
		response.sendRedirect("reviewInput.jsp");
		}
		
	}
}
