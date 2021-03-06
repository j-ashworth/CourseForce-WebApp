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
	private static String COURSE_PAGE = "/coursePageResult.jsp";
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String courseCode = request.getParameter("courseCode");
		Course course = cDao.getCoursebyCourseCode(courseCode);
		List<Review> reviews = rDao.getAllReviews(courseCode);
		String writtenAvg = Float.toString(rDao.getWrritenAvg(courseCode));
		String tbAvg = Float.toString(rDao.getTBUsefulnessAvg(courseCode));
		String difficultyAvg = Double.toString(rDao.getDifficultyAvg(courseCode));
		String overallAvg = Double.toString(rDao.getOverallRatingAvg(courseCode));
		
		System.out.println(overallAvg);
		
//		System.out.println(course);
//		System.out.println(reviews.size());
//		for(Review r : reviews) {
//			System.out.println(r);
//		}
		if (cDao.isValidCourse(courseCode)) {
			RequestDispatcher view = request.getRequestDispatcher(COURSE_PAGE);
			request.setAttribute("course", course);
			request.setAttribute("reviews", reviews);
			request.setAttribute("writtenAvg", writtenAvg);
			request.setAttribute("tbAvg", tbAvg);
			request.setAttribute("difficultyAvg", difficultyAvg);
			request.setAttribute("overallAvg", overallAvg);
			view.forward(request, response);
		}else {
			response.sendRedirect("invalid_course_code.jsp");
		}
		
	}



}
