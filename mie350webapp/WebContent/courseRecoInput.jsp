<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.controller.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>  Course Recommendation   </title>
</head>
<body>
<h1> Login </h1>
<form method="POST" action='RecoController' name="frmAddUser">
	Q1. What type of elective do you need?:<br>
	<input type="checkbox" name="elective" value = "cs"> Complementary Studies (CS) <br>
	<input type="checkbox" name="elective" value = "hss"> Humanities and Social Science (HSS) <br>
	<input type="checkbox" name="elective" value = "ns"> Natural Science (NS) <br>
	Q2. Would you prefer to take a class with engineering students or students in other faculties?:<br>
	<input type="radio" name="classmate preference" value = "Engineering"> Engineering<br>
	<input type="radio" name="classmate preference" value = "Non Engineering"> Non Engineering<br>
	<input type="radio" name="classmate preference" value = "No Preference"> No Preference<br>
	<input type="submit" value = "Submit" >
</form>
</body></html>
