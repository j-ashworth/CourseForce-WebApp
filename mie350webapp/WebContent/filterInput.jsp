<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

					<form method="GET" action='FilterController' name="frmAddUser">
						<select name="dep">
  							<option value="ASP" name = "dep">ASP</option>
  							<option value="MIE" name = "dep">MIE</option>
  							<option value="AST" name = "dep">AST</option>
 							<option value="CSC" name = "dep">CSC</option>
						</select>
						<input type="submit" class="btn btn-info" value = "Submit" >
					</form>
									</center>

</body>
</html>