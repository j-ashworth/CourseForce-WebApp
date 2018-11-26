package com.mie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;

import com.mie.model.Course;
import com.mie.util.DbUtil;


public class CourseDao {

	private Connection connection;
	
	public CourseDao() {
		connection = DbUtil.getConnection();
	}
	
	
	/**
	 * This method returns the list of all course in the form of a List
	 * object.
	 */
	public ArrayList<Course> getAllCourses() {
		
		ArrayList<Course> courses = new ArrayList<Course>();
		try {
			Statement statement = connection.createStatement();
			// System.out.println("getting students from table");
			ResultSet rs = statement.executeQuery("select * from Course");
			while (rs.next()) {
				Course course = new Course();
				course.setCourseCode(rs.getString("courseCode"));
				course.setCourseLevel(rs.getInt("courseLevel"));
				course.setCs((rs.getInt("cs")));
				course.setDept(rs.getString("dept"));
				course.setDescription(rs.getString("description"));
				course.setHss(rs.getInt("hss"));
				course.setLecHours(rs.getInt("lecHours"));
				course.setName(rs.getString("name"));
				course.setNs(rs.getInt("ns"));
				course.setPraHours(rs.getInt("praHours"));
				course.setTutHours(rs.getInt("tutHours"));
				courses.add(course);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return courses;
	}
	
	
	//this method returns a list of courses matching the user's search query
	
	public ArrayList<Course> getCourseByKeyWord(String keyword) {
		ArrayList<Course> courses = new ArrayList<Course>();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from course where "
							+ "courseCode LIKE ? OR name LIKE ? OR description LIKE ?");

			preparedStatement.setString(1, "%" + keyword + "%");
			preparedStatement.setString(2, "%" + keyword + "%");
			preparedStatement.setString(3, "%" + keyword + "%");
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Course course = new Course();
				course.setCourseCode(rs.getString("courseCode"));
				course.setCourseLevel(rs.getInt("courseLevel"));
				course.setCs((rs.getInt("cs")));
				course.setDept(rs.getString("dept"));
				course.setDescription(rs.getString("description"));
				course.setHss(rs.getInt("hss"));
				course.setLecHours(rs.getInt("lecHours"));
				course.setName(rs.getString("name"));
				course.setNs(rs.getInt("ns"));
				course.setPraHours(rs.getInt("praHours"));
				course.setTutHours(rs.getInt("tutHours"));
				courses.add(course);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return courses;
	}

	public ArrayList<Course> getCourseByLevel(int level, ArrayList<Course> courses) {
		
		ArrayList<Course> allMatchingInDB = new ArrayList<Course>();
		
		try{
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Course where courseLevel=?");  
			preparedStatement.setInt(1, level);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				Course course = new Course();
				course.setCourseCode(rs.getString("courseCode"));
				course.setCourseLevel(rs.getInt("courseLevel"));
				course.setCs((rs.getInt("cs")));
				course.setDept(rs.getString("dept"));
				course.setDescription(rs.getString("description"));
				course.setHss(rs.getInt("hss"));
				course.setLecHours(rs.getInt("lecHours"));
				course.setName(rs.getString("name"));
				course.setNs(rs.getInt("ns"));
				course.setPraHours(rs.getInt("praHours"));
				course.setTutHours(rs.getInt("tutHours"));
				allMatchingInDB.add(course);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return allMatchingInDB;

	}
	public ArrayList<String> getCourseByLevelString(int level) {
		
		ArrayList<String> allMatchingInDB = new ArrayList<String>();
		
		try{
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Course where courseLevel=?");  
			preparedStatement.setInt(1, level);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				allMatchingInDB.add(rs.getString("courseCode"));
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return allMatchingInDB;

	}
	
	public ArrayList<Course> getCourseByDept(String faculty, ArrayList<Course> courses) {
		
		try{
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Course where dept=?");  
			preparedStatement.setString(1, faculty);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				Course course = new Course();
				course.setCourseCode(rs.getString("courseCode"));
				course.setCourseLevel(rs.getInt("courseLevel"));
				course.setCs((rs.getInt("cs")));
				course.setDept(rs.getString("dept"));
				course.setDescription(rs.getString("description"));
				course.setHss(rs.getInt("hss"));
				course.setLecHours(rs.getInt("lecHours"));
				course.setName(rs.getString("name"));
				course.setNs(rs.getInt("ns"));
				course.setPraHours(rs.getInt("praHours"));
				course.setTutHours(rs.getInt("tutHours"));
				if(!courses.contains(course))
					courses.remove(course);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return courses;

	}
	
	public ArrayList<String> getCourseByDeptString(String faculty) {
		
		ArrayList<String> courses = new ArrayList<String>();
		
		try{
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Course where dept=?");  
			preparedStatement.setString(1, faculty);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				Course course = new Course();
				courses.add(rs.getString("courseCode"));
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return courses;

	}
	
	//returns a list of courses in a given faculty
	
	//returns a list of courses in a given department
	/*****************TODO*******************/
	//fix sql to be an inner join between course and department
	
	public List<Course> getCourseByFaculty(String faculty, ArrayList<Course> courses) {
		
		String query = "select * from Course C, Department D where C.dept = D.dept AND D.faculty = '" + faculty + "'";
		
		try{
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(query);

			while (rs.next()) {
				Course course = new Course();
				course.setCourseCode(rs.getString("courseCode"));
				course.setCourseLevel(rs.getInt("courseLevel"));
				course.setCs((rs.getInt("cs")));
				course.setDept(rs.getString("dept"));
				course.setDescription(rs.getString("description"));
				course.setHss(rs.getInt("hss"));
				course.setLecHours(rs.getInt("lecHours"));
				course.setName(rs.getString("name"));
				course.setNs(rs.getInt("ns"));
				course.setPraHours(rs.getInt("praHours"));
				course.setTutHours(rs.getInt("tutHours"));
				if(!courses.contains(course))
					courses.remove(course);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return courses;

	}
	
	
	public String getCourseFaculty(Course c) {

		String query = "select * from Course C, Department D where C.dept = D.dept AND C.courseCode = '" + c.getCourseCode() + "'";
		String result = null;
		
		try{
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(query);

			while (rs.next()) {
				result = rs.getString("faculty");
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;

	}
	
	//returns a list of courses by elective type
	
	public List<Course> getCourseByType(String type, ArrayList<Course> courses) {
		

		String qry = "";
		
		if(type.equals("hss")){
			qry = "select * from Course where hss=-1"; //bit type column, true = -1 false = 0
		}
		else if(type.equals("cs")){
			qry = "select * from Course where cs=-1";
		}
		else{
			qry = "select * from Course where ns=-1";
		}
		
		try{
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(qry);

			while (rs.next()) {
				Course course = new Course();
				course.setCourseCode(rs.getString("courseCode"));
				course.setCourseLevel(rs.getInt("courseLevel"));
				course.setCs((rs.getInt("cs")));
				course.setDept(rs.getString("dept"));
				course.setDescription(rs.getString("description"));
				course.setHss(rs.getInt("hss"));
				course.setLecHours(rs.getInt("lecHours"));
				course.setName(rs.getString("name"));
				course.setNs(rs.getInt("ns"));
				course.setPraHours(rs.getInt("praHours"));
				course.setTutHours(rs.getInt("tutHours"));
				if(!courses.contains(course))
					courses.remove(course);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return courses;
		
	}
	
	public List<String> getCourseByTypeString(String type) {
		
		String qry = "";
		ArrayList<String> courses = new ArrayList<String>();
		
		if(type.equals("hss")){
			qry = "select * from Course where hss=-1"; //bit type column, true = -1 false = 0
		}
		else if(type.equals("cs")){
			qry = "select * from Course where cs=-1";
		}
		else{
			qry = "select * from Course where ns=-1";
		}
		
		try{
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(qry);

			while (rs.next()) {
				Course course = new Course();
				courses.add(rs.getString("courseCode"));
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return courses;
		
	}
	
	//returns a hashmap of course codes to writing workload reviews
	
	public HashMap<String, Integer> getWritingWorkload(){
		
		HashMap<String, Integer> ratings = new HashMap<String, Integer>();
		
		try {
			Statement statement = connection.createStatement();
			// System.out.println("getting students from table");
			ResultSet rs = statement.executeQuery("select * from Rating");
			while (rs.next()) {
				ratings.put(rs.getString("courseCode"), rs.getInt("writingWorkload"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		for(Course c : getAllCourses()){
			if(!ratings.containsKey(c.getCourseCode()))
				ratings.put(c.getCourseCode(), null);
		}
		return ratings;
	}
	
	//get class hours
	public Double getClassHours(Course course){
		Double totalHours = (double) (course.getLecHours() + course.getTutHours() + course.getPraHours());	
		return totalHours;
	}
	
	public Course getCoursebyCourseCode(String courseCode){
		Course course = new Course();
		course.setCourseCode(courseCode);
		
		String query = "select * from Course C, Department D where C.dept = D.dept AND courseCode = '" + courseCode + "'";
		
		try{
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(query);
			while(rs.next()) {
				course.setCourseLevel(rs.getInt("courseLevel"));
				course.setCs((rs.getInt("cs")));
				course.setDept(rs.getString("fullName"));
				course.setDescription(rs.getString("description"));
				course.setHss(rs.getInt("hss"));
				course.setLecHours(rs.getInt("lecHours"));
				course.setName(rs.getString("name"));
				course.setNs(rs.getInt("ns"));
				course.setPraHours(rs.getInt("praHours"));
				course.setTutHours(rs.getInt("tutHours"));
				course.setFaculty(rs.getString("faculty"));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return course;
	}
	
	public boolean isValidCourse(String courseCode) {
		boolean valid = false;
		
		String query = "select * from Course where courseCode = '" + courseCode + "'";
		
		try{
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(query);
			if (rs.next()) {
				valid = true;
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return valid;
	}
	
	
}
