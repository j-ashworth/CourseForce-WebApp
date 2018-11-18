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
	
		ArrayList<Course> filtered = new ArrayList<Course>();
		
		//get filter requests
		//dep
		String[] breadthReq = request.getParameterValues("Breadth Requirement");
		String[] faculty = request.getParameterValues("Breadth Requirement");
		String[] department = request.getParameterValues("Department");
		String[] courseLevel = request.getParameterValues("Rating");
		String[] rating = request.getParameterValues("Rating");
		String[] hours = request.getParameterValues("Cours Hours Per Week");
		
		
		
	}
}