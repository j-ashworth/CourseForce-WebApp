package com.mie.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.CourseDao;
import com.mie.model.Course;

public class CourseRecoController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String RECOMMENDATIONS = "/courseRecoOutput.jsp";
	private CourseDao dao;
	
	public CourseRecoController() {
		super();
		dao = new CourseDao();
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
	
		
		HashMap<Course, Integer> reco = new HashMap<Course, Integer>();
		
		
		//retrieve responses to question 1
		//add courses to reco matching each selected elective type
		String [] q1 = request.getParameterValues("elective");
		for(String s : q1){
			for(Course c : dao.getCourseByType(s.toLowerCase()))
				reco.put(c, 0);
		}
		
		//retrieve responses to question 2
		String q2 = request.getParameter("classmate preference");
		
		if(q2.equals("Engineering")){	
			for(Course c : reco.keySet())
				if(!c.getDept().equals("APS") && !c.getDept().equals("CIV") && !c.getDept().equals("CHE"))
					reco.remove(c.getCourseCode());
					//System.out.println(c.getCourseCode());
		}
		
		else if(q2.equals("Non Engineering")){
			for(Course c : reco.keySet())
				if(c.getDept().equals("APS") || c.getDept().equals("CIV") || c.getDept().equals("CHE"))
					reco.remove(c.getCourseCode());
					//System.out.println(c.getCourseCode());
		}
		
		System.out.println(reco);
		
		//send responses to recommendation file, return list of courses
		RequestDispatcher view = request.getRequestDispatcher(RECOMMENDATIONS);
		request.setAttribute("recommendations", reco);
		view.forward(request, response);
		//send list of courses to courseRecoOutput.jsp

	}
}