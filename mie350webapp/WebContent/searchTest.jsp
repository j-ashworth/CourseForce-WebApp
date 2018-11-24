<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 Sample Web App - Search Students</title>
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

<div class="navbar navbar-default visible-xs">
  <div class="container-fluid">
    <button class="btn btn-default navbar-btn" data-toggle="collapse" data-target="#filter-sidebar">
      <i class="fa fa-tasks"></i> Toggle Sidebar
    </button>
  </div>
</div>

<div class="container-fluid">

  <div class="row">

    <!-- filter sidebar -->
    <div id="filter-sidebar" class="col-xs-6 col-sm-3 visible-sm visible-md visible-lg collapse sliding-sidebar">

      <div>
        <h4 data-toggle="collapse" data-target="#group-1">
          <i class="fa fa-fw fa-caret-down parent-expanded"></i>
          <i class="fa fa-fw fa-caret-right parent-collapsed"></i>
          Artist
        </h4>
        <div id="group-1" class="list-group collapse in">
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
        </div>
      </div>
      
      <div>
        <h4 data-toggle="collapse" data-target="#group-2">
          <i class="fa fa-fw fa-caret-down parent-expanded"></i>
          <i class="fa fa-fw fa-caret-right parent-collapsed"></i>
          Artist
        </h4>
        <div id="group-2" class="list-group collapse in">
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
        </div>
      </div>
      
      <div>
        <h4 data-toggle="collapse" data-target="#group-3">
          <i class="fa fa-fw fa-caret-down parent-expanded"></i>
          <i class="fa fa-fw fa-caret-right parent-collapsed"></i>
          Artist
        </h4>
        <div id="group-3" class="list-group collapse in">
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
        </div>
      </div>
      
      <div>
        <h4 data-toggle="collapse" data-target="#group-4">
          <i class="fa fa-fw fa-caret-down parent-expanded"></i>
          <i class="fa fa-fw fa-caret-right parent-collapsed"></i>
          Artist
        </h4>
        <div id="group-4" class="list-group collapse in">
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
          <a class="list-group-item" href="#">
            <span class="badge">3</span> John Lennon
          </a>
        </div>
      </div>
      
    </div>



	<div class="container-fluid text-center">
		<div class="row content">
			
			<div class="col-sm-8 text-left">
				<h1>Search A Course</h1>

				Enter a course code, course name or keyword <Br />
				<Br />
				
					<form method="POST" action='SearchController' name="frmAddUser">
							Keyword: <input type="text" name="keyword"
							value="<c:out value="${course.searchword}" />">
							<br>
							

							Filter by: <br>
							Breadth Requirement: <br>
								<input type="checkbox" value="any" name = "Breadth Requirement" checked>Any<br>
								<input type="checkbox" value="cs" name = "Breadth Requirement" >CS<br>
								<input type="checkbox" value="hss" name = "Breadth Requirement">HSS<br>
								<input type="checkbox" value="ns" name = "Breadth Requirement">MIE<br>
								 <br>
								Faculty: <br>
								<input type="checkbox" value="any" name = "Faculty" checked>Any<br>
								<input type="checkbox" value="engineering" name = "Faculty">Engineering<br>
								<input type="checkbox" value="AandS" name = "Faculty">Arts & Science<br>
								 <br>
								Department: <br>
								<input type="checkbox" value="any" name = "Department" checked>Any<br>
								<input type="checkbox" value="APS" name = "Department">ASP<br>
								<input type="checkbox" value="MIE" name = "Department">MIE<br>
								<input type="checkbox" value="AST" name = "Department">AST<br>
								<input type="checkbox" value="CSC" name = "Department">SOC<br>
								<input type="checkbox" value="Applied Science and Engineering" name = "Faculty">Applied Science and Engineering<br>
								<input type="checkbox" value="Arts and Science" name = "Faculty">Arts and Science<br>
								 <br>
								Course Level: <br>
								<input type="checkbox" value="any" name = "Course Level" checked>Any<br>
								<input type="checkbox" value="100" name = "Course Level">100<br>
								<input type="checkbox" value="200" name = "Course Level">200<br>
								<input type="checkbox" value="300" name = "Course Level">300<br>
								<input type="checkbox" value="400" name = "Course Level">400<br>
								 <br>
								Overall Rating: <br>
								<input type="checkbox" value="any" name = "Rating" checked>Any<br>
								<input type="checkbox" value="1" name = "Rating">1<br>
								<input type="checkbox" value="2" name = "Rating">2<br>
								<input type="checkbox" value="3" name = "Rating">3<br>
								<input type="checkbox" value="4" name = "Rating">4<br>
								<input type="checkbox" value="5" name = "Rating">5<br>
								 <br>
								Course Hours per Week: <br>
								<input type="checkbox" value="any" name = "Cours Hours Per Week" checked>Any<br>
								<input type="checkbox" value="lowest" name = "Cours Hours Per Week">2<br>
								<input type="checkbox" value="low" name = "Cours Hours Per Week">3<br>
								<input type="checkbox" value="middle" name = "Cours Hours Per Week">4<br>
								<input type="checkbox" value="high" name = "Cours Hours Per Week">5<br>
								<input type="checkbox" value="highest" name = "Cours Hours Per Week">6<br>
								<input type="submit" class="btn btn-info" value="Submit" /> <br>
						
					</form>
			

			</div>
		</div>
	</div>
	
 <div class="col-sm-9">
 	<table class="table table-striped table-hover table-responsive">
		<thead>
			<tr>
				<th>Course Code</th>
				<th>Name</th>
				<th>Department</th>
				<th>Description</th>
				<th>Breadth Requirement</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${courses}" var="course">
				<tr>
					<td align="center"><c:out
							value="${course.getCourseCode()}"/></td>
					<td align="center"><c:out
							value="${course.getName()}" /></td>
					<td align="center"><c:out
							value="${course.getDept()}" /></td>
					<td align="center"><c:out
							value="${course.getDescription()}" /></td>
					<td align="center"><c:out
							value="${course.getBreadthReq()}" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
 	
 </div>	

</body>
</html>





