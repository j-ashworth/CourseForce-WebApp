<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html><head>
<title>  Login   </title>
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

</head>
<body>
<%@ include file="navbar_new.jsp"%>
        <h1> Login </h1>
        <p> Please enter your username and password</p>
        <form action="LoginController">
            <div class="form-group">
      <label for="exampleInputPassword1">Username: </label>
      <input type="username" class="form-control" id="exampleInputPassword1" name="un" placeholder="user12345">
    </div>
        <div class="form-group">
      <label for="exampleInputPassword1">Password: </label>
      <input type="password" class="form-control" id="exampleInputPassword1" name="pw" placeholder="use safe passwords!">
    </div>
    <input type="submit" value="Login" class="btn btn-primary"></input>
        </form>
</body></html>

