<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
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

<%@ include file="navbar_new.jsp"%>
<h1>Search A Course - Results</h1>
				"The following courses match your search keyword"<b><font
					color=blue><%=request.getAttribute("keyword")%></font></b>":<br> <br>
				<center>
					<table border=1 class="table table-hover">
						<thead>
							<tr>
								<th scope="col">Course Code</th>
								<th scope="col">Name</th>
								<th scope="col">Department</th>
								<th scope="col">Description</th>
								<th scope="col">Breadth Requirement</th>
								<th scope="col">Course Level</th>
								<th scope="col">Lecture Hours</th>
								<th scope="col">Tutorial Hours</th>
								<th scope="col">Practical Hours</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${courses}" var="course">
								<tr class="table-light">
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
									<td align="center"><c:out
											value="${course.getCourseLevel()}" /></td>
									<td align="center"><c:out
											value="${course.getLecHours()}" /></td>
									<td align="center"><c:out
											value="${course.getPraHours()}" /></td>
									<td align="center"><c:out
											value="${course.getTutHours()}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</center>

</body>
</html>


