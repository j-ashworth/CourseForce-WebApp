<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.controller.*" 
	import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>  Course Review  </title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://bootswatch.com/4/cosmo/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>

<%@ include file="navbar_loggedin.jsp"%>

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
	<input type="radio" name="overallCourseRating" value = "1"> 1 <br>
	<input type="radio" name="overallCourseRating" value = "2"> 2 <br>
	<input type="radio" name="overallCourseRating" value = "3"> 3 <br>
	<input type="radio" name="overallCourseRating" value = "4"> 4<br>
	<input type="radio" name="overallCourseRating" value = "5"> 5 <br>
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