<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
    .container {
    
    background-size:cover;
    
    }
    
    
</style>
<title>Book Appointment</title>
</head>
</head>
<body class="container" background="./resources/image/" background-size="cover">
	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="./Home"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="./">Book Appointment</a>
                </li>
               
        </div>
        </nav>
    </div>
		
		</nav>
	</div>
		</nav>
	</div>
    <div class="container card  mt-5">
        <div class="containercard-body">
            <center>
                <h1 class="mt-2 mb-2">Book Appointment</h1>
            </center>
<form action="./bookappointment" method="post">

                       <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">aid</label>
                    <div class="col-sm-10">
                    <input type="number" name="aId" class="form-control" >                
                    </div></div>
                    
                    <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">date</label>
                    <div class="col-sm-10">
                    <input type="datetime" name="date" class="form-control">         
                    </div></div>
                    
                     <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">did</label>
                    <div class="col-sm-10">
                    <input type="number" name="did" class="form-control">        
                    </div></div>
                    
                    
                     <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">pid</label>
                    <div class="col-sm-10">
                     <input type="number" name="pid" class="form-control">        
                    </div></div>
                    
                    

 
 

<br>
<br>
<input type="submit" name="Submit" class="btn btn-success pull-right">&nbsp &nbsp&nbsp
                   
                     <input type="Reset" name="Reset" class="btn btn-primary pull-right">
</form>
</body>
</html>