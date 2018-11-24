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
<head>
<%@ include file="navbar_new.jsp"%>
<title>  Create Account   </title>
</head>
<body>
        <h1> Create Account </h1>
        <p> Please enter the following information to create your account</p>
        <form method="GET" action="CreateAccountController">
                  <div class="form-group">
      <label for="exampleInputFName">First Name:</label>
      <input type="firstName" class="form-control" id="exampleInputFName" placeholder="Alex" name="fn">
    </div>
              <div class="form-group">
      <label for="exampleLastName">Last Name: </label>
      <input type="lastName" class="form-control" id="exampleInputLName" placeholder=Smtih name="ln">
    </div>
              <div class="form-group">
      <label for="exampleInputEmail">Email: </label>
      <input type="email" class="form-control" id="exampleInputEmail" placeholder="example@mail.utoronto.ca" name="e">
    </div>
          <div class="form-group">
      <label for="exampleInputUsername">Username: </label>
      <input type="username" class="form-control" id="exampleInputUsername" placeholder="UofTEngGod" name="un">
    </div>
          <div class="form-group">
      <label for="exampleInputPassword1">Password:</label>
      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="pw">
    </div>
        </form>
</body></html>