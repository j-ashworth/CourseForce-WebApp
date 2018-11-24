<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.controller.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://bootswatch.com/4/cosmo/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>  Course Recommendation   </title>
</head>
<body>

<%@ include file="navbar_new.jsp"%>

<h1> Login </h1>
<form method="POST" action='CourseRecoController' name="frmAddUser">
	Q1. What type of elective do you need?:<br>
	<input type="checkbox" name="elective" value = "cs"> Complementary Studies (CS) <br>
	<input type="checkbox" name="elective" value = "hss"> Humanities and Social Science (HSS) <br>
	<input type="checkbox" name="elective" value = "ns"> Natural Science (NS) <br>
	Q2. Would you prefer to take a class with engineering students or students in other faculties?:<br>
	<input type="radio" name="classmate preference" value = "Engineering"> Engineering<br>
	<input type="radio" name="classmate preference" value = "Non Engineering"> Non Engineering<br>
	<input type="radio" name="classmate preference" value = "No Preference"> No Preference<br>
	Q3. How much written work would you like in your course?:<br>
	<input type="radio" name="written preference" value = "none"> I want as little writing as possible<br>
	<input type="radio" name="written preference" value = "some"> Neutral, don't want a ton but wouldn't mind if some was involved<br>
	<input type="radio" name="written preference" value = "alot"> I want a course with writing<br>
	Q4. How many hours/week are you willing to put into your course? (in class + out of class):<br>
	<input type="radio" name="hours" value = "lowest"> 0-3<br>
	<input type="radio" name="hours" value = "low"> 3-6<br>
	<input type="radio" name="hours" value = "middle"> 6-9<br>
	<input type="radio" name="hours" value = "high"> 9-12<br>
	<input type="radio" name="hours" value = "highest"> 12-15<br>
	<input type="submit" value = "Submit" >
</form>
</body></html>
