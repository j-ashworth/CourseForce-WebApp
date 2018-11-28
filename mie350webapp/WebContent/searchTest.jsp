<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<link rel="stylesheet" type="text/css" href="home.css">
<title>Search A Course</title>
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

<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
<%@ include file="navbar_new.jsp"%>

<body>

<div style="padding:15px;">

<div class="container">
  <div class="row">
    <div class="col-md-12"> 
    
    	<center>
    	<br><br>
    	<h1>Search Courses</h1>
		Enter a course code, course name or keyword <Br />
		<Br />
		<form method="POST" action='SearchController' name="frmAddUser">
		<div class="form-group row">
		<div class="col-xs-4">
		<div class="form-inline">
			<input class="form-control form-control-lg" type="text" name="keyword" placeholder="Ex: physics" id="ex4"
			value="<c:out value="${course.searchword}" />">
			<input type="submit" class="btn btn-primary" value="Search" name = "action"/>
			<br><br><br>
			</div>
	</div>
			</div>
		</center>
	  	
      <div class="row">
        <div class="col-sm-3" style="background-color:lightgray;">
        <br>
	        <h2>Filter by: </h2><br>
			Breadth Requirement: <br>
			
		    <div class="form-group">
		    <div class="form-check">
			<input class="form-check-input" type="checkbox" value="any" name = "Breadth Requirement" checked>Any<br>
			<input class="form-check-input" type="checkbox" value="cs" name = "Breadth Requirement">CS<br>
			<input class="form-check-input" type="checkbox" value="hss" name = "Breadth Requirement">HSS<br>
			<input class="form-check-input" type="checkbox" value="ns" name = "Breadth Requirement">NS<br>
			 </div>
			 </div>
			 <br>
			Faculty: <br>
			    <div class="form-group">
		    <div class="form-check">
			<input class="form-check-input" type="checkbox" value="any" name = "Faculty" checked>Any<br>
			<input class="form-check-input" type="checkbox" value="Applied Science and Engineering" name = "Faculty">Engineering<br>
			<input class="form-check-input" type="checkbox" value="Arts and Science" name = "Faculty">Arts and Science<br>
			 
			 </div>
			 </div>

			Course Level: <br>
			<div class="form-group">
		    <div class="form-check">
			<input class="form-check-input" type="checkbox" value="any" name = "Course Level" checked>Any<br>
			<input class="form-check-input" type="checkbox" value="100" name = "Course Level">100<br>
			<input class="form-check-input" type="checkbox" value="200" name = "Course Level">200<br>
			<input class="form-check-input" type="checkbox" value="300" name = "Course Level">300<br>
			<input class="form-check-input" type="checkbox" value="400" name = "Course Level">400<br>
			 <br>
			 </div>
			 </div>
			Overall Rating: <br>
			<div class="form-group">
		    <div class="form-check">
			<input class="form-check-input" type="checkbox" value="any" name = "Rating" checked>Any<br>
			<input class="form-check-input" type="checkbox" value="1" name = "Rating">1<br>
			<input class="form-check-input" type="checkbox" value="2" name = "Rating">2<br>
			<input class="form-check-input" type="checkbox" value="3" name = "Rating">3<br>
			<input class="form-check-input" type="checkbox" value="4" name = "Rating">4<br>
			<input class="form-check-input" type="checkbox" value="5" name = "Rating">5<br>
			 <br>
			 </div>
			 </div>
			Course Hours per Week: <br>
			<div class="form-group">
		    <div class="form-check">
		    <label class="form-check-label">
			<input class="form-check-input" type="radio" value="any" name = "Cours Hours Per Week" checked>Any<br>
			<input class="form-check-input" type="radio" value="5" name = "Cours Hours Per Week">Less than 5<br>
			<input class="form-check-input" type="radio" value="6" name = "Cours Hours Per Week">Less than 6<br>
			<input class="form-check-input" type="radio" value="7" name = "Cours Hours Per Week">Less than 7<br>
			<input class="form-check-input" type="radio" value="8" name = "Cours Hours Per Week">Less than 8<br>
			<input class="form-check-input" type="radio" value="9" name = "Cours Hours Per Week">Less than 9<br><br>
			</label>
			</div>
			</div>
		
		</div>
		 </form>
        <div class="col-sm-9">
        <table class="table table-hover">
			<thead>
				<tr align="center">
					<th style="width:20%;" scope="col">Course Code</th>
					<th style="width:25%;" scope="col">Name</th>
					<th style="width:50%;" scope="col">Description</th>
					<th style="width:15%;" scope="col">Breadth Requirement</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${courses}" var="course">
					<tr class=" table table-light">
						<td align="center"><c:out
								value="${course.getCourseCode()}"/></td>
						<td align="center"><c:out
								value="${course.getName()}" /></td>
						<td align="center"><c:out
								value="${course.getDescription()}" /></td>
						<td align="center"><c:out
								value="${course.getBreadthReq()}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
        </div>
        </div>
      
      </div>
    </div>
  </div>	</div>	<%@ include file="footer.jsp"%>
  
</body>
</html>



