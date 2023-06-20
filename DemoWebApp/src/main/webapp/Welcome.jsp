<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file='Logout.jsp' %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
String username=(String)session.getAttribute("username");
if(username==null){
	response.sendRedirect("Login.jsp");
}
%>
<body style="background-color: tomato; text-align:center">
<h1>Welcome to Demo Application</h1>
<div style="display: flex; margin-top: 280px; margin-left: 480px">
<form action="AddStudent.jsp" class='mr-5'>
<input type='submit' value='AddStudent' class="form-control bg-success mt-5 mr-5"/>
</form>
<form action="StudentsList.jsp" class='ml-5'>
<input type='submit' value='Students List' class="form-control bg-info mt-5 ml-5"/>
</form>
</div>
</body>
</html>