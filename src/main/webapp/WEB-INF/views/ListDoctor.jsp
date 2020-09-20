<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.booking.beans.Doctor"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%

	List<Doctor> li=(List<Doctor>) session.getAttribute("list");
	Doctor app=new Doctor();
	
	
	%>	
		<style>
		table{
		
		border: solid; color:black;
		}
		
		</style>
	<center><h1><b>Doctor Details are Below:</b></h1></center>	
		
		
	<table cellpadding="10" cellspacing="5" border="2" align="center" bgcolor="silver">
	
	<tr>
	<th><h3>did </h3></th>
	<th><h3>city </h3></th>
	<th><h3>firstname </h3></th>
	<tdh><h3>hospital</h3></th>
	<th><h3>lastname</h3></th>
	<th><h3>password </h3></th>
	<th><h3>speciality </h3></th>
	
	
	</tr>
	
	<%
	  for(int i=0;i<li.size();i++)
	  {
		 app= li.get(i);
	  
	 
	%>
	
	<tr>
	<td><%= app.getDid() %></td> 
	<td><%= app.getCity () %></td>
	<td><%= app.getFirstname () %></td>
	<td><%= app.getHospital () %></td>
	<td><%= app.getLastname () %></td>
	<td><%= app.getPassword  () %></td>
	<td><%= app.getSpeciality  () %></td>
	
	
	
	</tr>
	<%
	  }
	%>
	
	</table>	
</body>
</html>