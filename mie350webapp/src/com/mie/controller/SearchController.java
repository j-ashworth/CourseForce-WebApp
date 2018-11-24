package com.mie.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
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
	private static String SEARCH_USER = "/searchResult.jsp";
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

		String[] hoursTemp = request.getParameterValues("Cours Hours Per Week");
		ArrayList<String> hours = new ArrayList<String>(Arrays.asList(hoursTemp));

		
		ArrayList<Course> result = new ArrayList<Course>();
		
		System.out.println("TTTTTTTEEEEEEEESSSSSSSTTTTTTTT: " + faculty);

		//user has entered search query
		if(keyword != ""){
			result.addAll(filter(dao.getCourseByKeyWord(keyword), breadthReq, faculty, 
					courseLevel, rating, hours));
		}
		//user hasn't entered a search query
		else{
			result.addAll(filter(dao.getAllCourses(), breadthReq, faculty, 
					courseLevel, rating, hours));
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
			ArrayList<String> courseLevel, ArrayList<String> rating, ArrayList<String> hours){
		
		ListIterator<Course> iter1 = result.listIterator();
		
		if(!breadthReq.contains("any")){
			for(String s : breadthReq){
				List<Course> temp = dao.getCourseByType(s.toLowerCase(), result);
				while(iter1.hasNext()){ 
					if(!temp.contains(iter1.next())) 
						result.remove(iter1.next());
				}
			}
		}
		
		ListIterator<Course> iter2 = result.listIterator();
		
		if(!faculty.contains("any")){
			for(String s : faculty){
				List<Course> temp = dao.getCourseByFaculty(s, result);
				while(iter2.hasNext()){ 
					if(!temp.contains(iter2.next())) 
						result.remove(iter2.next());
				}
			}
		}
		
		ListIterator<Course> iter4 = result.listIterator();		
		
		if(!courseLevel.contains("any")){
			for(String s : courseLevel){
				List<Course> temp = dao.getCourseByLevel(s.toLowerCase(), result);
				while(iter4.hasNext()){ 
					if(!temp.contains(iter4.next())) 
						result.remove(iter4.next());
				}
			}
		}
		
		ListIterator<Course> iter5 = result.listIterator();

		
		if(!rating.contains("any")){
			for(String s : rating){
				while(iter5.hasNext()){
					Double temp = rDao.getOverallRatingAvg(iter5.next().getCourseCode());
					if((int)Math.round(temp) != Integer.parseInt(s)) 
						iter5.remove();
				}
			}
		}

		ListIterator<Course> iter6 = result.listIterator();

		if(!hours.contains("any")){
			for(String s : hours){
				while(iter6.hasNext()){ 
					Double totalHours = dao.getClassHours(iter6.next());
					if((int)Math.round(totalHours) != Integer.parseInt(s)) 
						result.remove(iter6.next());
				}
			}
		}

		return result;
	}
	
}