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
	private String faculty;
	
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
		this.courseCode = cc;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setDept(String dept) {
		this.dept = dept;
	}
	
	public void setDescription(String d) {
		this.description = d;
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
		this.courseLevel = cl;
	}
	
	public void setLecHours(int lh) {
		this.lecHours = lh;
	}
	
	public void setPraHours(int ph) {
		this.praHours = ph;
	}
	
	public void setTutHours(int th) {
		this.tutHours = th;
	}
	
	public String getBreadthReq() {
		StringBuilder br = new StringBuilder();
		if (this.hss == 1) {
			br.append("HSS ");
		}
		if (this.cs == 1) {
			br.append("CS ");
		}
		if (this.ns == 1) {
			br.append("NS ");
		}
		return br.toString();
	}
	
	public String getFaculty() {
		return faculty;
	}
	
	public void setFaculty(String newFaculty) {
		this.faculty = newFaculty;
	}
	
	@Override
	public String toString() {
		return "Course: [Course Code: " + courseCode + ", Name: " + name + ", Department: " + dept +
				", Faculty: " + faculty + ", Description: " + description + ", HSS: " + hss + ", CS: " + cs + ", NS: " + ns  +
				", Course Level: " + courseLevel + ", Lecture Hours: " + lecHours + ", Practical Hours: " +
				praHours + ", Tutorial Hours: " + tutHours + "]";
	}
	
	@Override
	public boolean equals(Object obj) {
		   return (this == obj);
		}
	
}
