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
import com.mie.model.Student;
import com.mie.model.User;

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
				review.setTextbookUsefullness(rs.getInt("tbUsefulness"));
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
	
	public int getRid() {
		int rid = 0;
		try {
			ArrayList<Integer> ratings = new ArrayList<Integer>();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from Rating");
			while (rs.next()) {
				ratings.add(rs.getInt("rid"));
			}
			rid = ratings.size();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rid;
	}
	
	
	public void addReview(String courseCode, String user, int overallRating, int tbUsefullness, int difficulty, 
			int writingWorkload, String academicSession, String review) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into Rating (rID, courseCode, username, overallRating, tbUsefulness,"
							+ "difficulty, writingWorkload, ACADEMICSESSION, review) values (?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			preparedStatement.setInt(1, getRid() + 1);
			preparedStatement.setString(2, courseCode);
			preparedStatement.setString(3, user);
			preparedStatement.setInt(4, overallRating);
			preparedStatement.setInt(5, tbUsefullness);
			preparedStatement.setInt(6, difficulty);
			preparedStatement.setInt(7, writingWorkload);
			preparedStatement.setString(8, academicSession);
			preparedStatement.setString(9, review);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	 
	//added by Julian
	//get writing review average
	public float getWrritenAvg(String courseCode) {
		float avg = 0; 
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select AVG(writingWorkload) as avg from Rating where courseCode=?");
			preparedStatement.setString(1, courseCode);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()){
				avg = rs.getFloat("avg");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		return avg;
	}
	
	//get average difficulty rating
	public Double getDifficultyAvg(String courseCode) {
		Double avg = 0.0; 
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select AVG(difficulty) as avg from Rating where courseCode=?");
			preparedStatement.setString(1, courseCode);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()){
				avg = rs.getDouble("avg");
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
		System.out.print("Difficulty of " + courseCode + " " + avg);
		return avg;
	}
	
	//get average course rating
	public Double getOverallRatingAvg(String courseCode) {
		Double avg = 0.0; 
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select AVG(overallRating) as avg from Rating where courseCode=?");
			preparedStatement.setString(1, courseCode);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()){
				avg = rs.getDouble("avg");
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
		System.out.print("Difficulty of " + courseCode + " " + avg);
		return avg;
	}
	
	
	//by Julian, for course recommender
	//returns that number of reviews for a course that said it was hard
	public int getNumHardReviews(Course course){
		/**
		 * This method retrieves a list of students that matches the keyword
		 * entered by the user.
		 */
		int count = 0;
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Rating "
							+ "where review LIKE ? OR review LIKE ? OR review LIKE ? OR review LIKE ?"
							+ "AND courseCode = ?");

			preparedStatement.setString(1, "%" + "hard" + "%");
			preparedStatement.setString(2, "%" + "difficult" + "%");
			preparedStatement.setString(3, "%" + "challenging" + "%");
			preparedStatement.setString(4, "%" + "demanding" + "%");
			preparedStatement.setString(5, course.getCourseCode());

			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				count++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.print("rDao count test: " + count);
		return count;
	}
	
	
	
	
}