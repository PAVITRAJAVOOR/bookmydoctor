<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<title>Welcome Admin</title>
</head>
<style>

.example_e {
border: none;
background: #404040;
color: #ffffff !important;
font-weight: 100;
padding: 20px 10px 20px 10px;
text-transform: uppercase;
border-radius: 50px;

}

.example_e:hover {
color: #404040 !important;
font-weight: 100 !important;
letter-spacing: 3px;
background: none;
-webkit-box-shadow: 0px 5px 4px 0px rgba(0,0,0,0.57);
-moz-box-shadow: 0px 5px 4px 0px rgba(0,0,0,0.57);
transition: all 0.3s ease 0s;
}
    .container {
    
    background-size:cover;
   
    }
    
    .container card {
    
   size:50px;
   
    
    }
    
    
</style>

<body class="container" background="../resources/image/marcelo-leal-taF3klwwAWA-unsplash.jpg" background-size="cover"  >
	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="./loginpage">BookMyDoctor</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="./loginpage">Log Out</a>
                </li>
                
        </div>
        </nav>
    </div>
		
		</nav>
	</div>
	<form action="./Homepage" method="post">
    
<div>

<div  class="container card " style="width: 20rem;" class="button_cont" align="center"><a class="example_e" href="./listdoctor" target="_blank" rel="nofollow noopener">Doctor List</a></div>
</div>
<br>
<br>

<div  class="container card " style="width: 20rem;" class="button_cont" align="center"><a class="example_e" href="./patientlist" target="_blank" rel="nofollow noopener">Patient List</a></div>
<br>
<br>

<div  class="container card " style="width: 20rem;" class="button_cont" align="center"><a class="example_e" href="./updateappointment" target="_blank" rel="nofollow noopener">Update Appointment</a></div>
<br>
<br>

</form>
</body>
</html>