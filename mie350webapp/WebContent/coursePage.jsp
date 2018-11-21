<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<title>Search for Course Information and Reviews</title>
</head>
<body>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-left">
				Please enter a valid course code<Br />
				<Br />
				<center>
				
					<form method="POST" action='CoursePageController' name="frmAddUser">
						Course Code: 
						<input type="text" name="courseCode">
						<input type="submit" class="btn btn-info" value="Submit" />
					</form>
				</center>

			</div>
		</div>
	</div>
</body>
</html>