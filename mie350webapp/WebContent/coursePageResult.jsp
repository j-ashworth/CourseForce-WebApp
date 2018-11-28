<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Course Page Result</title>
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


<%Course course = (Course) request.getAttribute("course");
String writtenAvg = (String) request.getAttribute("writtenAvg");
String tbAvg = (String) request.getAttribute("tbAvg");
String difficultyAvg = (String) request.getAttribute("difficultyAvg");
String overallAvg = (String) request.getAttribute("overallAvg");%>

<body>
<%@ include file="navbar_new.jsp"%><div style="padding:15px;">
<h1>Course Page for <font class="text-primary"><c:out value="${course.getName()}"/></font><font class="text-muted"> (<c:out value ="${course.getCourseCode().toUpperCase()}"/>)</font></h1>
<p><br>Description: <c:out value="${course.getDescription()}"/></p>

<p style="float:left;">Course Level: <c:out value="${course.getCourseLevel()}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Breadth Requirement(s): <c:out value="${course.getBreadthReq()}"/>
<br>Department: <c:out value="${course.getDept()}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Faculty: <c:out value="${course.getFaculty()}"/>
<br>Lecture Hours: <c:out value="${course.getLecHours()}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Tutorial Hours: <c:out value="${course.getTutHours()}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Practical Hours: <c:out value="${course.getPraHours()}"/></p>
<p style="float:right;">Overall Rating Average: <c:out value="${overallAvg}"/>
<br>Difficulty Average: <c:out value="${difficultyAvg}"/>
<br>Textbook Usefulness Average: <c:out value="${tbAvg}"/>
<br>Writing Workload Average: <c:out value="${writtenAvg}"/></p>

					<center>
					<table style="width:90%;" class="table table-hover">
						<thead style="align: center;">
							<tr>
								<th style="width:10%;" scope="col"> Overall Course Rating</th>
								<th style="width:10%;" scope="col">Course Difficulty</th>
								<th style="width:10%;" scope="col">Textbook Usefulness</th>
								<th style="width:10%;" scope="col">Writing Workload</th>
								<th style="width:10%;" scope="col">Academic Session</th>
								<th style="width:40%;" scope="col">Written Review</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${reviews}" var="review">
								<tr class="table-light">
									<td align="center"><c:out
											value="${review.getOverallCourseRating()}" /></td>
									<td align="center"><c:out
											value="${review.getCourseDifficulty()}" /></td>
									<td align="center"><c:out
											value="${review.getTextbookUsefullness()}" /></td>
									<td align="center"><c:out
											value="${review.getWritingWorkload()}" /></td>
									<td align="center"><c:out
											value="${review.getAcademicSession()}" /></td>
									<td align="center"><c:out
											value="${review.getWrittenReview()}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</center>
</div>
	<%@ include file="footer.jsp"%>
</body>
</html>


