package com.mie.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.model.*;
import com.mie.dao.*;

public class FilterController extends HttpServlet {

	private static String FILTERED = "/courseRecoOutput.jsp";
	private CourseDao dao;
	
	public FilterController() {
		super();
		dao = new CourseDao();
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
	
		ArrayList<Course> filteredList = new ArrayList<Course>();
		
		//get filter requests
		//dep
		String dep = request.getParameter("dep");
	/*	Integer ns = Integer.parseInt(request.getParameter("ns"));
		Integer cs = Integer.parseInt(request.getParameter("cs"));
		Integer level = Integer.parseInt(request.getParameter("level"));
		Integer lecHours = Integer.parseInt(request.getParameter("lecHours"));
		Integer praHours = Integer.parseInt(request.getParameter("praHours"));
		Integer tutHours = Integer.parseInt(request.getParameter("tutHours"));
		
		//get list of courses from recommendations 
		//TODO: how to get listfrom courseRecoController
		
		for(Course c : dao.getCourseByType(s))
				if(c.getDept().equals(dep) && c.getNs().equals(ns) && c.getCS().equals(cs) && c.getCourseLevel().equals(level) )
					&& c.getLecHours().equals(lecHours) && c.getTutHours.equals(tutHours) && c.praHours.equals(praHours))
					filteredList.add(c);
		}
		
		*/
		for(Course C: dao.get)
		//send responses to recommendation file, return list of courses
		RequestDispatcher view = request.getRequestDispatcher(FILTERED);
		request.setAttribute("filtered", filteredList);
		view.forward(request, response);
		//send list of filtered courses to courseRecoOutput.jsp
	
	
	}
}