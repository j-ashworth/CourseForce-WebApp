<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>  Create Account   </title>
</head>
<body>
        <h1> Create Account </h1>
        <p> Please enter your username and password</p>
        <form method="GET" action="CreateAccountController">
          First Name:<br>
          <input type="text" name="fn"><br>
          Last Name:<br>
          <input type="text" name="ln"><br>
          Username:<br>
          <input type="text" name="un"><br>
          Password:<br>
          <input type="password" name="pw"/> <input type="submit" class="btn btn-info" value = "Create Account" >
        </form>
</body></html>

