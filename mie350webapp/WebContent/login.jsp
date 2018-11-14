<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html><head>
<title>  Login   </title>
</head>
<body>
        <h1> Login </h1>
        <p> Please enter your username and password</p>
        <form action="LoginController">
          Username:<br>
          <input type="text" name="un"><br>
          Password:<br>
          <input type="password" name="pw"/> <input type="submit" class="btn btn-info" value = "Submit" >
        </form>
</body></html>

