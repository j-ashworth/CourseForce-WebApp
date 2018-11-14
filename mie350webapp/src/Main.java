/*
import java.util.HashMap;
import java.sql.*;

import com.mie.model.*;
import com.mie.dao.*;

public class Main {

	public static void main(String[] args) {
		
		HashMap<Course, Integer> reco = new HashMap<Course, Integer>();
		CourseDao dao = new CourseDao();
		System.out.print("hi");
		/*
		String q2 = "Engineering";
		if(q2.equals("Engineering")){	
			for(Course c : dao.getAllCourses())
				if(!c.getDept().equals("APS") && !c.getDept().equals("CIV") && !c.getDept().equals("CHE"))
					reco.remove(c.getCourseCode());
		}
		
		else if(q2.equals("Non Engineering")){
			for(Course c : reco.keySet())
				if(c.getDept().equals("APS") && c.getDept().equals("CIV") && c.getDept().equals("CHE"))
					reco.remove(c.getCourseCode());
		}
		
		//System.out.print(reco);
		
	}

}

/////////////////////////////////////////
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

public class RecoController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String RECOMMENDATIONS = "/courseRecoOutput.jsp";
	private CourseDao dao;
	
	public RecoController() {
		super();
		dao = new CourseDao();
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
	
		
		HashMap<Course, Integer> reco = new HashMap<Course, Integer>();
		
		/*
		//retrieve responses to question 1
		//add courses to reco matching each selected elective type
		String [] courseType = request.getParameterValues("elective");
		for(String s : courseType){
			for(Course c : dao.getCourseByType(s.toLowerCase()))
				reco.put(c, 0);
		}
		
		//retrieve responses to question 2
		String q2 = request.getParameter("classmate preference");
		String [] courseType = request.getParameterValues("elective");
		System.out.println(courseType);
		System.out.println(q2);
		
		if(q2.equals("Engineering")){	
			for(Course c : dao.getAllCourses())
				if(!c.getDept().equals("APS") && !c.getDept().equals("CIV") && !c.getDept().equals("CHE"))
					reco.remove(c.getCourseCode());
		}
		
		else if(q2.equals("Non Engineering")){
			for(Course c : reco.keySet())
				if(c.getDept().equals("APS") && c.getDept().equals("CIV") && c.getDept().equals("CHE"))
					reco.remove(c.getCourseCode());
		}
		
		//System.out.print(dao.getAllCourses());
		
		//send responses to recommendation file, return list of courses
		RequestDispatcher view = request.getRequestDispatcher(RECOMMENDATIONS);
		request.setAttribute("recommendations", reco);
		view.forward(request, response);
		//send list of courses to courseRecoOutput.jsp

	}
}

*/