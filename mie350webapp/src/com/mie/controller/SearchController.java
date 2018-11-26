package com.mie.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.lang.Math;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.CourseDao;
import com.mie.dao.ReviewDao;
import com.mie.model.Course;

public class SearchController extends HttpServlet {
	/**
	 * This class only handles the SEARCH feature of the web app.
	 * 
	 * These are variables that lead to the appropriate JSP pages.
	 * 
	 * SEARCH_USER leads to the search results page.
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static String SEARCH_USER = "/searchTest.jsp";
	private CourseDao dao;
	private ReviewDao rDao;

	/**
	 * Constructor for this class.
	 */
	public SearchController() {
		super();
		dao = new CourseDao();
		rDao = new ReviewDao();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		/**
		 * This method handles the retrieval of the search keyword entered by
		 * the user.
		 */
		String keyword = request.getParameter("keyword");
		
		String[] breadthReqTemp = request.getParameterValues("Breadth Requirement");
		ArrayList<String> breadthReq = new ArrayList<String>(Arrays.asList(breadthReqTemp));
		
		String[] facultyTemp = request.getParameterValues("Faculty");
		ArrayList<String> faculty = new ArrayList<String>(Arrays.asList(facultyTemp));


		String[] courseLevelTemp = request.getParameterValues("Course Level");
		ArrayList<String> courseLevel = new ArrayList<String>(Arrays.asList(courseLevelTemp));

		String[] ratingTemp = request.getParameterValues("Rating");
		ArrayList<String> rating = new ArrayList<String>(Arrays.asList(ratingTemp));

		String hours = request.getParameter("Cours Hours Per Week");


		
		
		ArrayList<Course> result = new ArrayList<Course>();


		
			
		if(keyword != ""){
			result.addAll(filter(dao.getCourseByKeyWord(keyword), breadthReq, faculty, courseLevel, rating, hours));
		}
		else{
			result.addAll(filter(dao.getAllCourses(), breadthReq, faculty, courseLevel, rating, hours));
		}
		
		RequestDispatcher view = request.getRequestDispatcher(SEARCH_USER);
		request.setAttribute("keyword", keyword);
		request.setAttribute("courses", result);
		/**
		 * Redirect to the search results page after the list of courses
		 * matching the keywords has been retrieved.
		 */ 

		view.forward(request, response);

	}
	
	public ArrayList<Course> filter(ArrayList<Course> result, ArrayList<String> breadthReq, ArrayList<String> faculty,
			ArrayList<String> courseLevel, ArrayList<String> rating, String hours){
		
		ListIterator<Course> iter1 = result.listIterator();
		
		if(!breadthReq.contains("any")){
			while(iter1.hasNext()){ 
				Course currCourse = (Course) iter1.next();
				String[] temp = currCourse.getBreadthReq().trim().toLowerCase().split(" ");
				ArrayList<String> types = new ArrayList<String>(Arrays.asList(temp));
				for(String s : types){
				}
				if(Collections.disjoint(types, breadthReq)) 
					iter1.remove();
			}
		}
		
		ListIterator<Course> iter2 = result.listIterator();
		
		if(!faculty.contains("any")){
			while(iter2.hasNext()){ 
				Course currCourse = (Course) iter2.next();
				if(!faculty.contains(dao.getCourseFaculty(currCourse))) 
					iter2.remove();
			}
		}
		
		ListIterator<Course> iter4 = result.listIterator();		

		if(!courseLevel.contains("any")){
			while(iter4.hasNext()){ 
				Course currCourse = (Course) iter4.next();
				if(!courseLevel.contains(Integer.toString(currCourse.getCourseLevel())))	
					iter4.remove();
			}
		}

		ListIterator<Course> iter5 = result.listIterator();
		
		if(!rating.contains("any")){
			while(iter5.hasNext()){
				Double temp = rDao.getOverallRatingAvg(iter5.next().getCourseCode());
				if(!rating.contains((int)Math.round(temp))) 
					iter5.remove();
			}
			
		}

		ListIterator<Course> iter6 = result.listIterator();

		if(!hours.equals("any")){
			while(iter6.hasNext()){ 
				Course currCourse = (Course) iter6.next();
				Double totalHours = dao.getClassHours(currCourse);
				if((int)Math.round(totalHours) > Integer.parseInt(hours)) 
					iter6.remove();
			}
			
		}

		return result;
	}
	
}