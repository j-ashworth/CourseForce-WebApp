<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.controller.*" 
	import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://bootswatch.com/4/cosmo/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<title>Submission Successful</title>
<link rel="stylesheet" type="text/css" href="css/reviewStyle.css">
<%@ include file="navbar_new.jsp"%>
</head>
<body><div style="padding:15px;">


<center>
<div class="jumbotron">
  <h1 class="display-3">Thanks for the Review!</h1>
  <p class="lead">We appreciate the feedback as it helps us provide better recommendations for students like you.</p>
  <hr class="my-4">
  <p class="lead">
    <a class="btn btn-primary btn-lg" href="reviewInput.jsp" role="button">Submit Another?</a>
  </p></div>
  </center>
</div>	<%@ include file="footer.jsp"%>

</body></html>