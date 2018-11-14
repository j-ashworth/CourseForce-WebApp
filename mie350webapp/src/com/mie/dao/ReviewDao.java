package com.mie.dao;

import com.mie.util.DbUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.mie.model.Course;
import com.mie.model.Review;

public class ReviewDao {

	private Connection connection;
	
	public ReviewDao() {
		connection = DbUtil.getConnection();
	}
	
	public List<Review> getAllReviews(String courseCode) {
		
		List<Review> reviews = new ArrayList<Review>();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Rating where courseCode=?");
			preparedStatement.setString(1, courseCode);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Review review = new Review();
				review.setRid(rs.getInt("rID"));
				review.setCourseCode(rs.getString("courseCode"));
				review.setUsername(rs.getString("username"));
				review.setOverallCourseRating(rs.getInt("overallRating"));
				review.setTextbookUsefullness(rs.getInt("tbUsefullness"));
				review.setCourseDifficulty(rs.getInt("difficulty"));
				review.setWritingWorklaod(rs.getInt("writingWorkload"));
				review.setAcademicSession(rs.getString("academicSession"));
				review.setWrittenReview(rs.getString("review"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reviews;
	}
	
}
