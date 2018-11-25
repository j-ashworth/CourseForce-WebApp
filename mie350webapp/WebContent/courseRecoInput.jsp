<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.controller.*"%>
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
<title>  Course Recommendation   </title>
</head>
<center><body>

<%@ include file="navbar_new.jsp"%>

<h1> Find a Course For You! </h1>
<form method="POST" action='CourseRecoController' name="frmAddUser">
	Q1. What type of elective do you need?<br>
	<div class="form-group">
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio1" name="elective" class="custom-control-input" value="cs">
      <label class="custom-control-label" for="customRadio1">Complementary Studies (CS)</label>
    </div>
      <div class="custom-control custom-radio">
      <input type="radio" id="customRadio2" name="elective" class="custom-control-input" value="hss">
      <label class="custom-control-label" for="customRadio2">Humanities and Social Science (HSS)</label>
    </div>
          <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3" name="elective" class="custom-control-input" value="NS">
      <label class="custom-control-label" for="customRadio3">  Natural Science (NS)</label>
    </div>
      </div>
	Q2. Would you prefer to take a class with engineering students or students in other faculties?<br>
		<div class="form-group">
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio1a" name="class preference" class="custom-control-input" value="Engineering">
      <label class="custom-control-label" for="customRadio1a">Engineering</label>
    </div>
      <div class="custom-control custom-radio">
      <input type="radio" id="customRadio2a" name="class preference" class="custom-control-input" value="Non Engineering">
      <label class="custom-control-label" for="customRadio2a">Non Engineering</label>
    </div>
          <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3a" name="class preference" class="custom-control-input" value="No Preference">
      <label class="custom-control-label" for="customRadio3a">  No Preference</label>
    </div>
      </div>
	Q3. How much written work would you like in your course?<br>
	<div class="form-group">
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio1b" name="written preference" class="custom-control-input" value="none">
      <label class="custom-control-label" for="customRadio1b">I want as little writing as possible</label>
    </div>
      <div class="custom-control custom-radio">
      <input type="radio" id="customRadio2b" name="written preference" class="custom-control-input" value="some">
      <label class="custom-control-label" for="customRadio2b">Neutral, don't want a ton but wouldn't mind if some was involved</label>
    </div>
          <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3b" name="written preference" class="custom-control-input" value="alot">
      <label class="custom-control-label" for="customRadio3b">I want a course with writing</label>
    </div>
      </div>
	Q4. How many hours/week are you willing to put into your course? (in class + out of class)<br>
	<div class="form-group">
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio1c" name="lowest" class="custom-control-input" value="none">
      <label class="custom-control-label" for="customRadio1c">0-3</label>
    </div>
      <div class="custom-control custom-radio">
      <input type="radio" id="customRadio2c" name="low" class="custom-control-input" value="some">
      <label class="custom-control-label" for="customRadio2c">3-6</label>
    </div>
          <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3c" name="written preference" class="custom-control-input" value="middle">
      <label class="custom-control-label" for="customRadio3c">6-9</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3d" name="written preference" class="custom-control-input" value="high">
      <label class="custom-control-label" for="customRadio3d">9-12</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3e" name="written preference" class="custom-control-input" value="highest">
      <label class="custom-control-label" for="customRadio3e">12-15</label>
    </div>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body></center></html>
