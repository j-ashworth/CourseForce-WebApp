<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<title>Course Recommendation</title>

<body>

<%@ include file="navbar_new.jsp"%>
<div style="padding:15px;">
				<center>
				<!--took our the class="sortable" -->
					<table border=1 class="table table-hover">
						<thead>
							<tr>
      								<th scope="col">Course Code</th>
      								<th scope="col">Score</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${recommendations}" var="course">
								<tr class="table-light">
									<td align="center"><c:out
											value="${course.key}" /></td>
									<td align="center"><c:out 
											value="${course.value}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</center></div>
	<%@ include file="footer.jsp"%>
</body>
</html>
