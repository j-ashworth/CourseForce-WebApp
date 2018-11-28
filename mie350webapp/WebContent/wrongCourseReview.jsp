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
<title>Review Submission</title>

<link rel="stylesheet" type="text/css" href="css/reviewStyle.css">
<%@ include file="navbar_new.jsp"%>
</head>
<body><div style="padding:15px;">


<center><h1>Tell Us What You Thought</h1>
<div class="alert alert-dismissible alert-danger">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>Oops! </strong>The course you tried to submit a review for isn't in our database. Make sure there is no spaces in your submission!
</div>
<form method="POST" action=ReviewController name="review">
<div class="form-group">
  <label class="col-form-label col-form-label-lg" for="inputLarge">Course Code</label>
  <input class="form-control form-control-lg" name="courseCode" type="text" placeholder="SOC100" id="inputLarge">
</div>
	Overall Course Rating (1 very poor - 5 very good)<br>
  <div class="form-group">
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio1" name="overallCourseRating" value="1" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio1"> 1 </label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio2" name="overallCourseRating" value="2" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio2"> 2</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3" name="overallCourseRating" value="3" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio3"> 3 </label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio4" name="overallCourseRating" value="4" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio4"> 4</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio5" name="overallCourseRating" value="5" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio5"> 5</label>
    </div>
    </div>
    Course Difficulty (1 very easy - 5 very hard)
  <div class="form-group">
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio1a" name="courseDifficulty" value="1" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio1a"> 1 </label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio2a" name="courseDifficulty" value="2" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio2a"> 2</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3a" name="courseDifficulty" value="3" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio3a"> 3 </label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio4a" name="courseDifficulty" value="4" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio4a"> 4</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio5a" name="courseDifficulty" value="5" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio5a"> 5</label>
    </div>
    </div>
	Textbook Usefuleness (1 not useful at all - 5 very useful)<br>
	<div class="form-group">
	   <div class="custom-control custom-radio">
      <input type="radio" id="customRadio0b" name="tbUsefulness" value="0" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio0b"> Course had no Required Book </label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio1b" name="tbUsefulness" value="1" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio1b"> 1 </label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio2b" name="tbUsefulness" value="2" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio2b"> 2</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3b" name="tbUsefulness" value="3" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio3b"> 3 </label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio4b" name="tbUsefulness" value="4" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio4b"> 4</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio5b" name="tbUsefulness" value="5" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio5b"> 5</label>
    </div>
    </div>
	Writing Workload (1 no writing - 5 lots of writing)<br>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio1c" name="writingWorkload" value="1" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio1c"> 1 </label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio2c" name="writingWorkload" value="2" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio2c"> 2</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3c" name="writingWorkload" value="3" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio3c"> 3 </label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio4c" name="writingWorkload" value="4" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio4c"> 4</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio5c" name="writingWorkload" value="5" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio5c"> 5</label>
    </div>
	Academic Session <br>
	<div class="form-group">
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio1d" name="academicSesion" value="Fall" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio1d"> Fall </label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio2d" name="academicSesion" value="Winter" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio2d"> Winter</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3d" name="academicSesion" value="Summer" class="custom-control-input" required>
      <label class="custom-control-label" for="customRadio3d"> Summer</label>
    </div>
    </div>
	    <div class="form-group">
      <label for="exampleTextarea"> Other Comments  (max: 255 characters)</label>
      <textarea class="form-control" name="writtenReview" id="exampleTextarea" rows="3" 
      style="margin-top: 0px; margin-bottom: 0px; height: 78px;" required placeholder="Voice your opinion, what should a prospective student know about this course?"
      ></textarea>
    </div>

	<button type="submit" class="btn btn-primary">Submit</button>
</form></center></div>
	<%@ include file="footer.jsp"%>

</body></html>