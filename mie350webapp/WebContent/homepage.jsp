<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--carousel: course info, course reco, course review course search  -->
<html>
<head>
   <link rel="stylesheet" type="text/css" href="css/mystyle.css">
  <title>CourseForce Homepage</title>
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

<div class="jumbotron" style = "background-image: url(img/hero.jpg);background-size: cover; height = 500px;">

  <h1 class="display-2"><br>Looking for a course?<br></h1><br>
  <p class="lead"> CourseForce is the ultimate guide to choosing UofT courses. <br>Get access to course descriptions, reviews, recommendations and MORE!</p>
  <br> <br>
  <p class="lead">
    <a href="searchTest.jsp" class="btn btn-primary btn-lg" href="#" role="button">Search Courses</a>
  </p>

</div>
<div style="padding:15px;">
<div class="container">
	<div class="row">
 		<div class="col-md-12"> 
 			<h2>Welcome to <b>CourseForce</b></h2>
	 		<br>
	 		<p>This web page is developed for an undergraduate course, MIE350 - Design and Analysis of Information Systems. The application is only available to University of Toronto students and only features University of Toronto courses. The purpose of the application is to provide centralized information regarding courses for University of Toronto Engineering students to aid in their course enrollment decisions. 
	 		<br><br>
	 		The main functionality of the web application is the following: <br>
	 		(1) Read official course descriptions <br>
	 		(2) Access reviews written by other peers <br>
	 		(3) Access overall course ratings from peers <br>
	 		(4) View course textbook(s) <br> 
	 		(5) View total hours of class/tutorial/labs<br> 
	 		(6) View course information (Department, breadth requirement classification, faculty, hours per week)  
	 		</p>
	 		
 		</div>	
  	</div>
</div>

<div class=" container container-fluid grey-bg">
	<div class="row">
 		<div class="col-md-12">  
 		<br><h2>What is <b>CourseForce</b>?</h2>
	 		<br><p>
	 		<b>CourseForce</b> allows student to: <br>
	 		(1) Read official course descriptions <br>
	 		(2) Access reviews written by other peers <br>
	 		(3) Access overall course ratings from peers <br>
	 		(4) View course textbook(s) <br> 
	 		(5) View total hours of class/tutorial/labs<br> 
	 		(6) View course information (Department, breadth requirement classification, faculty, hours per week)  
	 		</p>
	 		
	 	</div>

  	</div>
</div>

<div class="container">
  	<br><h2>Meet the team!</h2>
  	<br>
  	<p>The development team consists of seven Industrial Engineering undergraduate students studying at the University of Toronto. The application is built using Java, HTML, JSP, JDBC and Servlets. Disclaimer: this website is not monitored regularly for updates/changes, this website has not affiliation with the University of Toronto, this website does not feature every University of Toronto course.</p>
  	<br>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <div class="card text-white bg-primary mb-3 border-0" style="max-width: 20rem;">
            <img class="card-img-top" src="img/ata.jpg">
  				<div class="card-header">Ata Artan</div>
  				<div class="card-body">
    			<h4 class="card-title">Project Manager</h4>
    			<p class="card-text">Raptors fanatic, architecture enthusiast. </p>
  				</div>
			</div>
        </div>
        <div class="col-sm-4"> 
             <div class="card text-white bg-primary mb-3 border-0" style="max-width: 20rem;">
             <img class="card-img-top" src="img/julian.JPG">
  				<div class="card-header">Julian Ashworth</div>
  				<div class="card-body">
    			<h4 class="card-title">Full Stack Developer</h4>
    			<p class="card-text">Outdoor enthusiast, social justice warrior.</p>
  				</div>
			</div>
        </div>
         <div class="col-sm-4">
             <div class="card text-white bg-primary mb-3 border-0" style="max-width: 20rem;">
             <img class="card-img-top" src="img/daniel.jpg">
  				<div class="card-header">Daniel Bedrossian</div>
  				<div class="card-body">
    			<h4 class="card-title">Full Stack Developer</h4>
    			<p class="card-text">Photo enthusiast, treble maker, trilingual.</p>
  				</div>
			</div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row mt-4">
        <div class="col-sm-4">
            <div class="card text-white bg-primary mb-3 border-0" style="max-width: 20rem;">
  				<img class="card-img-top" src="img/jack.jpg">
  				<div class="card-header">Jack Berkshire</div>
  				<div class="card-body">
    			<h4 class="card-title">Full Stack Developer</h4>
    			<p class="card-text">East Coaster, varsity sprinter</p>
  				</div>
			</div>
        </div>
        <div class="col-sm-4">
             <div class="card text-white bg-primary mb-3 border-0" style="max-width: 20rem;">
             <img class="card-img-top" src="img/matteo.jpg">
  				<div class="card-header">Matteo Ciserani </div>
  				<div class="card-body">
    			<h4 class="card-title">Project Manager</h4>
    			<p class="card-text">From italy, loves soccer, forza inter.</p>
  				</div>
			</div>
        </div>
         <div class="col-sm-4">
             <div class="card text-white bg-primary mb-3 border-0" style="max-width: 20rem;">
             <img class="card-img-top" src="img/malak.png">
  				<div class="card-header">Malak Mostafa</div>
  				<div class="card-body">
    			<h4 class="card-title">Project Manager</h4>
    			<p class="card-text">Aspiring lawyer, loves dancing.</p>
  				</div>
			</div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row mt-4">
        <div class="col-sm-4">
            <div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
  				<img class="card-img-top" src="img/ita.jpg">
				<div class="card-header">Ita Zaporozhets</div>
  				<div class="card-body">
    			<h4 class="card-title">Project Manager</h4>
    			<p class="card-text"> Cat person, loves painting.</p>
  				</div>
			</div>
        </div>
     </div>
</div>
<div class="container">
    <div class="row mt-4">
    </div>
    </div>
</div>
<%@ include file="footer.jsp"%>

</body>

</html>