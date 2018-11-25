<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.controller.*" 
	import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>
<%@ include file="navbar_new.jsp"%>
</head>
<body>

<%
	session = request.getSession();
	System.out.println(session);
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	
	User user = (User) session.getAttribute("currentSessionUser");
	String username = (String) session.getAttribute("username");
%>


<h1> Review </h1>
<form method="POST" action=ReviewController name="review">
	CourseCode <br>
	<input type="text" name="courseCode"><br>
	Overall Course Rating <br>
	<div class="rate">
	<input type="radio" id="star5" name="overallCourseRating" value = "1">
	<label for="star5" title="text">5 stars</label>
	<input type="radio" id="star4" name="overallCourseRating" value = "2">
	<label for="star5" title="text">4 stars</label>
	<input type="radio" id="star3" name="overallCourseRating" value = "3">
	<label for="star5" title="text">3 stars</label>
	<input type="radio" id="star2" name="overallCourseRating" value = "4">
	<label for="star5" title="text">2 stars</label>
	<input type="radio" id="star1" name="overallCourseRating" value = "5">
	<label for="star5" title="text">1 stars</label>
	</div>
	Course Difficulty <br>
	<input type="radio" name="courseDifficulty" value = "1"> 1 <br>
	<input type="radio" name="courseDifficulty" value = "2"> 2<br>
	<input type="radio" name="courseDifficulty" value = "3"> 3<br>
	<input type="radio" name="courseDifficulty" value = "4"> 4<br>
	<input type="radio" name="courseDifficulty" value = "5"> 5<br>
	Textbook Usefuleness <br>
	<input type="radio" name="tbUsefulness" value ="0"> No textbook for this course<br>
	<input type="radio" name="tbUsefulness" value ="1"> 1<br>
	<input type="radio" name="tbUsefulness" value ="2"> 2<br>
	<input type="radio" name="tbUsefulness" value ="3"> 3<br>
	<input type="radio" name="tbUsefulness" value ="4"> 4<br>
	<input type="radio" name="tbUsefulness" value ="5"> 5 <br>
	Writing Workload <br>
	<input type="radio" name="writingWorkload" value = "1"> 1<br>
	<input type="radio" name="writingWorkload" value = "2"> 2<br>
	<input type="radio" name="writingWorkload" value = "3"> 3<br>
	<input type="radio" name="writingWorkload" value = "4"> 4<br>
	<input type="radio" name="writingWorkload" value = "5"> 5<br> 
	Academic Session <br>
	<input type="radio" name="academicSesion" value="Fall"> Fall<br>
	<input type="radio" name="academicSesion" value="Winter"> Winter<br>
	<input type="radio" name="academicSesion" value="Summer"> Summer<br>
	Other Comments <br>
	<input type="text" name="writtenReview"><br>
	
	
	<input type="submit" value = "Submit" >
</form>
</body></html>