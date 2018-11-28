<%@ page session="true" 
	import="com.mie.model.*"%>
<%
	
	User user = (User) session.getAttribute("currentSessionUser");
	String username = (String) session.getAttribute("username");
	String firstName = (String) session.getAttribute("firstname");
	String lastName = (String) session.getAttribute("lastname");
%>

<nav class="navbar navbar-expand navbar-dark bg-primary">
  <a class="navbar-brand" href="homepage.jsp"><img class="navbar-brand" style="height:30px;" src="img/CourseForce.png"></a>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto" style="float: left;">
      <li class="nav-item">
        <a class="nav-link" href="searchTest.jsp">Course Search</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="coursePage.jsp">Course Information</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="courseRecoInput.jsp">Course Recommendation</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="reviewInput.jsp">Course Review</a>
      </li>
        <li class="nav-item">
        <a class = "nav-link"> </a>
      </li>
    </ul>
    <div style="float: right;"><font color="orange">Welcome, ${sessionScope.firstname}!</font></div>
  </div>
</nav>
