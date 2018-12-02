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
import com.mie.model.Course;

public class CourseRecoController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String RECOMMENDATIONS = "/courseRecoOutput.jsp";
	private CourseDao cDao;
	private ReviewDao rDao;
	
	public CourseRecoController() {
		super();
		cDao = new CourseDao();
		rDao = new ReviewDao();
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
	

		//initial list of all courses
		ArrayList<Course> recoList = new ArrayList<Course>(cDao.getAllCourses());
		
		//hashmap used to keep track of scores
		HashMap<Course, Integer> reco = new HashMap<Course, Integer>();
		
		//retrieve responses to question 1
		//add courses to reco matching each selected elective type, not going to add courses that don't match elective type
		
		ListIterator<Course> iter1 = recoList.listIterator();
		String q1 = request.getParameter("elective");
		
		while(iter1.hasNext()){ 
			Course currCourse = (Course) iter1.next();
			String[] temp = currCourse.getBreadthReq().trim().toLowerCase().split(" ");
			ArrayList<String> types = new ArrayList<String>(Arrays.asList(temp));
			if(!types.contains(q1)) 
				iter1.remove();
		}
		
		for(Course c : recoList){
			if(!reco.containsKey(c))
				reco.put(c,1);
		}
		

		//System.out.println("q1" + reco);
		
		//retrieve responses to question 2
		String q2 = request.getParameter("classmate preference");
		
		if(q2 != null && q2.equals("Non Engineering")){	
			for(Course c : reco.keySet())
				if(!c.getDept().equals("APS") && !c.getDept().equals("CIV") && !c.getDept().equals("CHE"))
					reco.put(c, reco.get(c)+ 1);
					//System.out.println(c.getCourseCode());
		}
		else if( q2 != null && q2.equals("Engineering")){
			for(Course c : reco.keySet())
				if(c.getDept().equals("APS") || c.getDept().equals("CIV") || c.getDept().equals("CHE"))
					reco.put(c, reco.get(c)+ 1);
					//System.out.println(c.getCourseCode());
		}
		
		//System.out.println("q2" + reco);
		
		//q3
		String q3 = request.getParameter("written preference");
		if(q3 != null && q3.equals("none")){
			for(Course c: reco.keySet()){
				if(rDao.getWrritenAvg(c.getCourseCode()) <= 1.5){
					System.out.println("test" + rDao.getWrritenAvg(c.getCourseCode()));
					reco.put(c, reco.get(c)+ 1);
				}
			}
		}
		else if(q3 != null && q3.equals("some")){
			for(Course c: reco.keySet()){
				if(rDao.getWrritenAvg(c.getCourseCode()) > 1.5 && rDao.getWrritenAvg(c.getCourseCode()) <= 3.5){
					System.out.println("test" + rDao.getWrritenAvg(c.getCourseCode()));
					reco.put(c, reco.get(c)+ 1);
				}
			}
		}
		else if(q3 != null && q3.equals("alot")){
			for(Course c: reco.keySet()){
				if(rDao.getWrritenAvg(c.getCourseCode()) > 3.5){
					System.out.println("test" + rDao.getWrritenAvg(c.getCourseCode()));
					reco.put(c, reco.get(c)+ 1);
				}
			}
		}
		
		//q4
		String q4 = request.getParameter("hours");
		double score = 0.0;
		if (q4 != null && q4.equals("lowest")){
			for(Course c : reco.keySet()){
				if(getCourseHours(c) <= 3){
					reco.put(c, reco.get(c)+ 1);
				}
			}
		}
		else if (q4 != null && q4.equals("low")){
			for(Course c : reco.keySet()){
				if(getCourseHours(c) <= 6){
					reco.put(c, reco.get(c)+ 1);
				}
			}
			
		}
		else if (q4 != null && q4.equals("middle")){
			for(Course c : reco.keySet()){
				if(getCourseHours(c) <= 9){
					reco.put(c, reco.get(c)+ 1);
				}
			}
		}
		else if (q4 != null && q4.equals("high")){
			for(Course c : reco.keySet()){
				if(getCourseHours(c) <= 12){
					reco.put(c, reco.get(c)+ 1);
				}
			}
		}
		else if(q4 != null && q4.equals("highest")){
			for(Course c : reco.keySet()){
				if(getCourseHours(c) <= 15){
					reco.put(c, reco.get(c)+ 1);
				}
			}
		}
		
		//no parameters were input, return all courses
		if(reco.isEmpty()){
			
		}
			
		
		HashMap<String, Integer> recoSorted = new HashMap<String, Integer>();
		for(Course c : reco.keySet()){
			recoSorted.put(c.getCourseCode(), reco.get(c));
		}
		
		
		
		//send responses to recommendation file, return list of courses
		RequestDispatcher view = request.getRequestDispatcher(RECOMMENDATIONS);
		request.setAttribute("recommendations", sortByValue(recoSorted));
		view.forward(request, response);
		//send list of courses to courseRecoOutput.jsp

	}
	
	public Double getCourseHours(Course course){
		Double totalHours = cDao.getClassHours(course);
		Double difficultyAdjustment = rDao.getDifficultyAvg(course.getCourseCode());
		if(difficultyAdjustment != null){
			totalHours += difficultyAdjustment;
		}
		totalHours += rDao.getNumHardReviews(course)*.25; //add 15 mins to every review that said the course was hard
		
		return totalHours;
	}
	
	//sort responses by descending value
    public static HashMap<String, Integer> sortByValue(HashMap<String, Integer> hm){ 
        // Create a list from elements of HashMap 
        List<Map.Entry<String, Integer> > list = 
               new LinkedList<Map.Entry<String, Integer> >(hm.entrySet()); 
  
        // Sort the list 
        Collections.sort(list, new Comparator<Map.Entry<String, Integer> >() { 
            public int compare(Map.Entry<String, Integer> o1,  
                               Map.Entry<String, Integer> o2) 
            { 
                return (o2.getValue()).compareTo(o1.getValue()); 
            } 
        }); 
          
        // put data from sorted list to hashmap  
        HashMap<String, Integer> temp = new LinkedHashMap<String, Integer>(); 
        for (Map.Entry<String, Integer> aa : list) { 
            temp.put(aa.getKey(), aa.getValue()); 
        } 
        return temp; 
    } 
	
	
}