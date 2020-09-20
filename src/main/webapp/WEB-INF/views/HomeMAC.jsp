<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<style>

    .container {
    
    background-size:cover;
   
    }
    
    .example_b {
color: #fff !important;
text-transform: uppercase;
background: #60a3bc;
padding: 20px 10px 20px 10px;
border-radius: 50px;
display: inline-block;
border: none;
}
.example_b:hover {
text-shadow: 0px 0px 6px rgba(255, 255, 255, 1);
-webkit-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
-moz-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
transition: all 0.4s ease 0s;
}
</style>
<title>Mac</title>
</head>
</head>
<body class="container" background="../resources/image/luis-melendez-Pd4lRfKo16U-unsplash.jpg" background-size="cover">
	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="./log">BookMyDoctor</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="./loginpage">Log Out</a>
                </li>
                </ul>
        </div>
        </nav>
    </div>
    <div class="col-md-auto col-lg-6 col-md-offset-4 form-container mt-2">
        <div class="card-body">
            <div class="form-group">
<form action="./HomeMAC" method="post">

<center><div class="card" style="width: 20rem;">
  <div class="card-header">
  <b>MAC Role</b>  
  </div>
  <ul class="list-group list-group-flush">
    <!-- <li class="list-group-item"><div class="button_cont" ><a class="example_b" href="./applictn" target="_blank" rel="nofollow noopener">Search Application</a></div></li -->
    <li class="list-group-item"><div class="button_cont" ><a class="example_b" href="./bookappointment" target="_blank" rel="nofollow noopener">Book Appointment</a></div></li>
    <li class="list-group-item"><div class="button_cont" ><a class="example_b" href="./addPatient" target="_blank" rel="nofollow noopener">Add Patient</a></div></li>
    <li class="list-group-item"><div class="button_cont" ><a class="example_b" href="./addDoctor" target="_blank" rel="nofollow noopener">Add Doctor</a></div></li>
    <li class="list-group-item"><div class="button_cont"><a class="example_b" href="./listAllDoctor" target="_blank" rel="nofollow noopener">List All Doctors</a></div></li>
    <li class="list-group-item"><div class="button_cont" ><a class="example_b" href="./listAllPatient" target="_blank" rel="nofollow noopener">List All Patient</a></div></li>
    <li class="list-group-item"><div class="button_cont" ><a class="example_b" href="./deleteAppointment" target="_blank" rel="nofollow noopener">Delete Appointment</a></div></li>
    <li class="list-group-item"><div class="button_cont" ><a class="example_b" href="./deleteDoctor" target="_blank" rel="nofollow noopener">Delete Doctor</a></div></li>
  <li class="list-group-item"><div class="button_cont" ><a class="example_b" href="./viewAllAppointment" target="_blank" rel="nofollow noopener">View All Appointment</a></div></li>  
  <li class="list-group-item"><div class="button_cont" ><a class="example_b" href="./updateAppointment" target="_blank" rel="nofollow noopener">Update Appointment</a></div></li>
  </ul>
  
</div></center>






















</form>
</div>
</div>
</div>
</body>
</html>