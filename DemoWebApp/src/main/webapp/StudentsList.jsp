<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.DemoWebApp.NewConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file='Logout.jsp' %>
 <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
<meta charset="ISO-8859-1">
<title>Students List</title>
<h1 class='text-center mb-4'>Students List</h1>
</head>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
String username=(String)session.getAttribute("username");
if(username==null){
	response.sendRedirect("Login.jsp");
}
String sql="SELECT * FROM cs_employee limit 10";
NewConnection connection = new NewConnection();
ResultSet rs=(ResultSet)connection.GetData(sql);
int row= rs.getRow();
System.out.print(row);
out.println("<b style='margin:15px'>ID</b>");
out.println("<b style='margin:15px'>Student Roll</b>");
out.println("<b style='margin:15px'>Student Name</b>");
out.println("<hr/><br/>");
do{
	for(int i=1;i<4;i++){
		out.print("<b style='margin:15px'>"+rs.getString(i)+"</b>");
		}
	out.println("<hr/>");
 } 
 while(rs.next());
%>

<body>
<form>

</form>

</body>
</html>