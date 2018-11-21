<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="GET" action='SearchController' name="frmAddUser">
	Filter by: <br>
	<br>
	Breadth Requirement: <br>
	<input type="checkbox" value="any" name = "Breadth Requirement" checked>Any<br>
	<input type="checkbox" value="cs" name = "Breadth Requirement" >CS<br>
	<input type="checkbox" value="hss" name = "Breadth Requirement">ASP<br>
	<input type="checkbox" value="ns" name = "Breadth Requirement">MIE<br>
	 <br><br>
	Faculty: <br>
	<input type="checkbox" value="any" name = "Faculty" checked>Any<br>
	<input type="checkbox" value="engineering" name = "Faculty">Engineering<br>
	<input type="checkbox" value="AandS" name = "Faculty">Arts & Science<br>
	 <br><br>
	Department: <br>
	<input type="checkbox" value="any" name = "Department" checked>Any<br>
	<input type="checkbox" value="ASP" name = "Department">ASP<br>
	<input type="checkbox" value="MIE" name = "Department">MIE<br>
	<input type="checkbox" value="AST" name = "Department">AST<br>
	<input type="checkbox" value="CSC" name = "Department">SOC<br>
	 <br><br>
	Course Level: <br>
	<input type="checkbox" value="any" name = "Course Level" checked>Any<br>
	<input type="checkbox" value="ASP" name = "Course Level">100<br>
	<input type="checkbox" value="MIE" name = "Course Level">200<br>
	<input type="checkbox" value="AST" name = "Course Level">300<br>
	<input type="checkbox" value="CSC" name = "Course Level">400<br>
	 <br><br>
	Overall Rating: <br>
	<input type="checkbox" value="any" name = "Rating" checked>Any<br>
	<input type="checkbox" value="1" name = "Rating">1<br>
	<input type="checkbox" value="2" name = "Rating">2<br>
	<input type="checkbox" value="3" name = "Rating">3<br>
	<input type="checkbox" value="4" name = "Rating">4<br>
	<input type="checkbox" value="5" name = "Rating">5<br>
	 <br><br>
	Course Hours per Week: <br>
	<input type="checkbox" value="any" name = "Cours Hours Per Week" checked>Any<br>
	<input type="checkbox" value="lowest" name = "Cours Hours Per Week">2<br>
	<input type="checkbox" value="low" name = "Cours Hours Per Week">3<br>
	<input type="checkbox" value="middle" name = "Cours Hours Per Week">4<br>
	<input type="checkbox" value="high" name = "Cours Hours Per Week">5<br>
	<input type="checkbox" value="highest" name = "Cours Hours Per Week">6<br>
	<input type="submit" class="btn btn-info" value="Submit" />
</form>
								

</body>
</html>