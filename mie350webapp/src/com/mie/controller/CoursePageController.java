package com.mie.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.lang.Math;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.CourseDao;
import com.mie.dao.ReviewDao;
import com.mie.model.Course;
import com.mie.model.Review;

/**
 * Servlet implementation class CoursePageController
 */
public class CoursePageController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static String COURSE_PAGE = "/coursePage.jsp";
	private CourseDao cDao;
	private ReviewDao rDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public CoursePageController() {
        super();
        cDao = new CourseDao();
        rDao = new ReviewDao();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String courseCode = request.getParameter("courseCode");
		Course course = cDao.getCoursebyCourseCode(courseCode);
		List<Review> reviews = rDao.getAllReviews(courseCode);
		
		RequestDispatcher view = request.getRequestDispatcher(COURSE_PAGE);
		request.setAttribute("courseCode", courseCode);
		request.setAttribute("course", course);
		request.setAttribute("reviews", reviews);
		
		
		
	}



}
