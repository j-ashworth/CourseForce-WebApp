package com.mie.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
	public List<Course> getAllCourses() {
		
		List<Course> courses = new ArrayList<Course>();
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
	
	public List<Course> getCourseByKeyWord(String keyword) {
		List<Course> courses = new ArrayList<Course>();
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
	
	//returns a list of courses in a given department
	
	public List<Course> getCourseByDept(String dept) {
		List<Course> courses = new ArrayList<Course>();
		try{
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Course where dept=?");
			preparedStatement.setString(1, dept);
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
	
	//returns a list of courses by elective type
	
	public List<Course> getCourseByType(String type) {
		
		List<Course> courses = new ArrayList<Course>();
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
				courses.add(course);
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
	
	
}
