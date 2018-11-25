<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 Sample Web App - Search Students</title>
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
<h1> Course Information and Reviews </h1>
	<div class="container-fluid text-center">
		<center>
			<form method="POST" action='CoursePageController' name="frmAddUser">
				Valid Course Code: 
				<div class="inline fields">
				<div class="form-group">
  <label class="col-form-label col-form-label-lg" for="inputLarge"></label>
  <input class="form-control form-control-lg" type="text" placeholder="APS444" id="inputLage" name="courseCode" required>
</div>
				<button type="Submit" class="btn btn-primary btn-lg"> Submit</button>
				</div>
			</form>
		</center>
	</div>
</body>
</html>