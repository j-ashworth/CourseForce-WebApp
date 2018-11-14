<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" type="text/css" href="Main_page.css">
  <title>  CourseForce.ca   </title>
</head>
<body>
<h1>Search A Course</h1>

				Type in any keyword to search for a course <Br />
				<Br />
				<center>
					<form method="POST" action='SearchController' name="frmAddUser">
						Keyword: <input type="text" name="keyword"
							value="<c:out value="${keyword}" />"><input
							type="submit" class="btn btn-info" value="Submit" />
					</form>
				</center>
</body>
</html>