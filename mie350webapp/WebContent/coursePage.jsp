<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Course course = (Course) request.getAttribute("course");%>
<html lang="en">
<h1>Course Page for <font color=red><<c:out value="${course.getName()}"/></font></h1>
<body>
<p>Course Code: <c:out value="${course.getCourseCode()}"/></p>
<p>Description: <c:out value="${course.getDescription()}"/></p>
<p>Course Level: <c:out value="${course.getCourseLevel()}"/></p>
<p>Department: <c:out value="${course.getDept()}"/></p>
<p>Faculty: <c:out value="${course.getFaculty()}"/></p>
<p>Breadth Requirements: <c:out value="${course.getBreadthReq()}"/></p>
<p>Lecture Hours: <c:out value="${course.getLecHours()}"/></p>
<p>Tutorial Hours: <c:out value="${course.getTutHours()}"/></p>
<p>Practical Hours: <c:out value="${course.getPraHours()}"/></p>

					<center>
					<table border=1 class="sortable">
						<thead>
							<tr>
								<th>Overall Course Rating</th>
								<th>Course Difficulty</th>
								<th>Textbook Usefulness</th>
								<th>Writing Workload</th>
								<th>Academic Session</th>
								<th>Written Review</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${reviews}" var="review">
								<tr>
									<td align="center"><c:out
											value="${review.overallCourseRating()}" /></td>
									<td align="center"><c:out
											value="${review.getCourseDifficulty()}" /></td>
									<td align="center"><c:out
											value="${review.getTextbookUsefullness()}" /></td>
									<td align="center"><c:out
											value="${review.getWritingWorkload()}" /></td>
									<td align="center"><c:out
											value="${review.getAcademicSession()}" /></td>
									<td align="center"><c:out
											value="${review.writtenReview()}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</center>

</body>
</html>


