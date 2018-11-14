package com.mie.model;

public class Course {
	private String courseCode;
	private String name;
	private String dept;
	private String description;
	private int hss;
	private int cs;
	private int ns;
	private int courseLevel;
	private int lecHours;
	private int tutHours;
	private int praHours;
	
	public String getCourseCode() {
		return courseCode;
	}
	
	public String getName() {
		return name;
	}
	
	public String getDept() {
		return dept;
	}
	
	public String getDescription() {
		return description;
	}
	
	public int getHss() {
		return hss;
	}
	
	public int getNs() {
		return ns;
	}
	
	public int getCs() {
		return cs;
	}
	
	public int getCourseLevel() {
		return courseLevel;
	}
	
	public int getLecHours() {
		return lecHours;
	}
	
	public int getTutHours() {
		return tutHours;
	}
	
	public int getPraHours() {
		return praHours;
	}
	
	public void setCourseCode(String cc) {
		courseCode = cc;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setDept(String dept) {
		this.dept = dept;
	}
	
	public void setDescription(String d) {
		description = d;
	}
	
	public void setHss(int hss) {
		this.hss = hss;
	}
	
	public void setNs(int ns) {
		this.ns = ns;
	}
	
	public void setCs(int cs) {
		this.cs = cs;
	}
	
	public void setCourseLevel(int cl) {
		courseLevel = cl;
	}
	
	public void setLecHours(int lh) {
		lecHours = lh;
	}
	
	public void setPraHours(int ph) {
		praHours = ph;
	}
	
	public void setTutHours(int th) {
		tutHours = th;
	}
	
	public String getBreadthReq() {
		String br = "";
		if (hss == 1) {
			br = br + "HSS ";
		}
		else if (cs == 1) {
			br = br + "CS ";
		}
		else if (ns == 1) {
			br = br + "NS ";
		}
		else {
			br = "N/A";
		}
	}
	
	@Override
	public String toString() {
		return "Course: [Course Code: " + courseCode + ",Name: " + name + ",Department: " + dept +
				",Description: " + description + ",HSS: " + hss + ",CS: " + cs + ",NS: " + ns  +
				",Course Level: " + courseLevel + ",Lecture Hours: " + lecHours + ",Practical Hours: " +
				praHours + ",Tutorial Hours: " + tutHours + "]";
	}
	
}
