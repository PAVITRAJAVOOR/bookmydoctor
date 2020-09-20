<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.booking.beans.*"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment List</title>
</head>
<body>
<%

	List<Appointment> li=(List<Appointment>) session.getAttribute("List");
Appointment app=new Appointment();
	
	
	%>	
		<style>
		table{
		
		border: solid; color: black;
		}
		
		</style>
		
		<center><h1><b>View all the Appointments here:</b></h1></center>
		
	<table cellpadding="10" cellspacing="5" border="2" bgcolor="cyan" align="center">
	
	<tr>
	<th>aid</th>
	<th>date</th>
	<th>did</th>
	<th>pid</th>
	
	</tr>
	
	<%
	  for(int i=0;i<li.size();i++)
	  {
		 app= li.get(i);
	 
	%>
	
	<tr>
	<td><%= app.getAid() %></td>
	<td><%= app.getDate() %></td>
	<td><%= app.getDid() %></td>
	<td><%= app.getPid() %></td>
	
	
	</tr>
	<%
	  }
	%>
	
	</table>	
		
</body>
</html>