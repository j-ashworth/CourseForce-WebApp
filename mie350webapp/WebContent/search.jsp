<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 Sample Web App - Search Students</title>
</head>
<body>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-left">
				<h1>Search A Course</h1>

				Enter a course code, course name or keyword <Br />
				<Br />
				<center>
					<form method="POST" action='SearchController' name="frmAddUser">
						Keyword: <input type="text" name="keyword"
							value="<c:out value="${course.searchword}" />">
							Filter by: <br>
	<br>
	Breadth Requirement: <br>
	<input type="checkbox" value="any" name = "Breadth Requirement" checked>Any<br>
	<input type="checkbox" value="cs" name = "Breadth Requirement" >CS<br>
	<input type="checkbox" value="hss" name = "Breadth Requirement">HSS<br>
	<input type="checkbox" value="ns" name = "Breadth Requirement">MIE<br>
	 <br><br>
	Faculty: <br>
	<input type="checkbox" value="any" name = "Faculty" checked>Any<br>
	<input type="checkbox" value="Applied Science and Engineering" name = "Faculty">Applied Science and Engineering<br>
	<input type="checkbox" value="Arts and Science" name = "Faculty">Arts and Science<br>
	 <br><br>
	Course Level: <br>
	<input type="checkbox" value="any" name = "Course Level" checked>Any<br>
	<input type="checkbox" value="100" name = "Course Level">100<br>
	<input type="checkbox" value="200" name = "Course Level">200<br>
	<input type="checkbox" value="300" name = "Course Level">300<br>
	<input type="checkbox" value="400" name = "Course Level">400<br>
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
							<input type="submit" class="btn btn-info" value="Submit" /> <br>
					</form>
				</center>

			</div>
		</div>
	</div>
</body>
</html>

