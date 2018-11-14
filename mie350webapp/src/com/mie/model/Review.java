package com.mie.model;

public class Review {
	
	private int overallCourseRating;
	private int courseDifficulty;
	private int textbookUsefullness;
	private int writingWorkload;
	private String academicSession;
	private String writtenReview;
	private String courseCode;
	private String username;
	private int rId;
	
	public int getRid() {
		return rId;
	}
	
	public void setRid(int rid) {
		rId = rid;
	}
	
	public String getCourseCode() {
		return courseCode;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String un) {
		 username = un;
	}
	
	public void setCourseCode(String cc) {
		courseCode = cc;
	}
	
	public int getOverallCourseRating() {
		return overallCourseRating;
	}
	
	
	public int getCourseDifficulty() {
		return courseDifficulty;
	}
	
	public int getTextbookUsefullness() {
		return textbookUsefullness;
	}
	
	public int getWritingWorkload() {
		return writingWorkload;
	}
	
	public String getAcademicSession() {
		return academicSession;
	}
	
	public String getWrittenReview() {
		return writtenReview;
	}
	
	public void setOverallCourseRating(int cr) {
		overallCourseRating = cr;
	}
	
	public void setCourseDifficulty(int cd) {
		courseDifficulty = cd;
	}
	
	public void setTextbookUsefullness(int tbu) {
		textbookUsefullness = tbu;
	}
	
	public void setWritingWorklaod(int ww) {
		writingWorkload = ww;
	}
	
	public void setAcademicSession(String as) {
		academicSession = as;
	}
	
	public void setWrittenReview(String wr) {
		writtenReview = wr;
	}
	
	@Override
	public String toString() {
		return "Review: [Overall Course Rating: " + overallCourseRating + ", Course Difficulty: " + courseDifficulty +
				", Textbook Usefullness: " + textbookUsefullness + ", Writing Workload: " + writingWorkload +
				", Academic Session: " + academicSession + ", Written Review: " + writtenReview;
	}

}
