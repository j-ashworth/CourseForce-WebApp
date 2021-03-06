<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Course Page Search</title>
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
<div style="padding:15px;">
<h1> Course Information and Reviews </h1>
	<div class="container-fluid text-center">
		<center>
			<form method="POST" action='CoursePageController' name="frmAddUser">

				<div class="form-group has-danger">
				  <label class="form-control-label" for="inputDanger1">Valid Course Code: </label>
				  <input type="text" placeholder="APS444" name="courseCode" class="form-control is-invalid" id="inputInvalid" required>
				  <div class="invalid-feedback">Sorry, that is not a valid course code. Please try again.</div>
				</div>
				<input type="submit" value="Submit" class="btn btn-primary btn-sm"></input>
			</form>
		</center>
	</div></div>
	<%@ include file="footer.jsp"%>
</body>
</html>