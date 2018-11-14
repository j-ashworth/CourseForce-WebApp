<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
				<center>
					<table border=1 class="sortable">
						<thead>
							<tr>
								<th>Course Code</th>
								<th>Name</th>
								<th>Department</th>
								<th>Score</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${recommendations}" var="course">
								<tr>
									<td align="center"><c:out
											value="${course.key.getCourseCode()}" /></td>
									<td align="center"><c:out
											value="${course.key.getName()}" /></td>
									<td align="center"><c:out 
											value="${course.key.getDept()}" /></td>
									<td align="center"><c:out 
											value="${course.value}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</center>
</body>
</html>
