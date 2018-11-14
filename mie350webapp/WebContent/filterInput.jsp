<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

					<form method="GET" action='FilterController' name="frmAddUser">
						<select name="dep">
  							<option value="ASP" name = "dep">ASP</option>
  							<option value="MIE" name = "dep">MIE</option>
  							<option value="AST" name = "dep">AST</option>
 							<option value="CSC" name = "dep">CSC</option>
						</select>
						<input type="submit" class="btn btn-info" value = "Submit" >
					</form>
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