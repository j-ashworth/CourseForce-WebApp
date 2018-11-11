package com.mie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mie.model.Course;
import com.mie.model.Student;
import com.mie.util.DbUtil;


public class CourseDao {

	private Connection connection;
	
	public CourseDao() {
		connection = DbUtil.getConnection();
	}
	
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
	
}
