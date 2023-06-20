<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<form action='Login' style="margin:150px 350px 450px 350px">
<div class='h1 text-center'>Login</div>
<div class='row mt-5'>
<div class='col'> <label>UserName : </label><input type='text' name='userName' class='form-control'/></div>
</div>
<div class='row'>
<div class='col'> <label>Password : </label><input type='password' name='password' class='form-control'/> </div>
</div>
<br/>
<input type='submit' value='Login' class='form-control bg-success'/>
</form>
</body>
</html>