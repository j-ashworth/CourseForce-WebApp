<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html><head>
<title>  Course Recommendation   </title>
</head>
<body>
<h1> Login </h1>
<form method="POST" action="CourseRecoController">
Q1. What type of elective do you need?:<br>
<input type="checkbox" name="elective" value = "cs"> Complementary Studies (CS) <br>
<input type="checkbox" name="elective" value = "hss"> Humanities & Social Science (HSS) <br>
<input type="checkbox" name="elective" value = "ns"> Natural Science (NS) <br>
Q2. Would you prefer to take a class with engineering students or students in other faculties?:<br>
<input type="radio" name="classmate preference" value = "Engineering"> Engineering<br>
<input type="radio" name="classmate preference" value = "Non Engineering"> Non Engineering<br>
<input type="radio" name="classmate preference" value = "No Preference"> No Preference<br>
<input type="submit" class="btn btn-info" value = "Submit" >
</form>
</body></html>
