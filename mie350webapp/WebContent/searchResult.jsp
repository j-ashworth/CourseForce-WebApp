<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<h1>Search A Course - Results</h1>
				The following course match your search keyword "<b><font
					color=red><%=request.getAttribute("keyword")%></font></b>":<br> <br>
				<center>
					<table border=1 class="sortable">
						<thead>
							<tr>
								<th>Course Code</th>
								<th>Name</th>
								<th>Department</th>
								<th>Description</th>
								<th>HSS</th>
								<th>CS</th>
								<th>NS</th>
								<th>Course Level</th>
								<th>Lecture Hours</th>
								<th>Tutorial Hours</th>
								<th>Practical Hours</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${courses}" var="course">
								<tr>
									<td align="center"><c:out
											value="${course.getCourseCode}" /></td>
									<td align="center"><c:out
											value="${course.getName}" /></td>
									<td align="center"><c:out
											value="${course.getDepartment}" /></td>
									<td align="center"><c:out
											value="${course.getHss}" /></td>
									<td align="center"><c:out
											value="${course.getCs}" /></td>	
									<td align="center"><c:out
											value="${course.getNs}" /></td>	
									<td align="center"><c:out
											value="${course.getCourseLevel}" /></td>
									<td align="center"><c:out
											value="${course.getLecHours}" /></td>
									<td align="center"><c:out
											value="${course.getPraHours}" /></td>
									<td align="center"><c:out
											value="${course.getTutHours}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</center>
</body>
</html>


