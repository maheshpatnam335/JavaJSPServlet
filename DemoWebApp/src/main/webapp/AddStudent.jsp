<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file='Logout.jsp' %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Add Student</title>
</head>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
String username= (String)session.getAttribute("username");
if(username==null){
	response.sendRedirect("Login.jsp");
}
%>
<body>
<form style="margin:120px">
<h1 class='text-center'>Add Student</h1>
<div class="row">
<div class='col'>First Name : <input type='text' name='firstName' class="form-control"/></div>
<div class='col'>Last Name : <input type='text' name='lastName' class="form-control"/></div>
</div>
<div class="row">
<div class='col'>Email : <input type='email' name='email' class="form-control"/></div>
<div class='col'>Mobile Number : <input type='text' name='mobileNumber' class="form-control"/></div>
</div>
<div class="row">
<div class='col'>DateOfBirth : <input type='date' name='dob' class="form-control"/></div>
<div class='col'>Branch : <input type='text' name='branch' class="form-control"/> </div>
</div>

<input type='submit' value='Add' class="form-control bg-success mt-5">
</form>
</body>
</html>