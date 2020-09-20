<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<title>Add Doctor</title>
</head>
<body class="container">
    <div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="./log">BookMyDoctor</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        </nav>
    </div>
    
    <div class="container card  mt-5">
        <div class="containercard-body">
            <center>
                <h1 class="mt-2 mb-2">Fill  Doctor Details</h1>
            </center>
<form action="./adddoctor" method="post">

                     <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">Enter did </label>
                    <div class="col-sm-10">
                    <input type="number" name="did " class="form-control">
                   
                     <div></div>
                    
                    <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">Enter city </label>
                    <div class="col-sm-10">
                    <input type="text" name="city " class="form-control">
                                       </div></div>
                    <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">firstname </label>
                    <div class="col-sm-10">
                    <input type="text" name="firstname"  class="form-control">     
                    </div></div>
                    <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">hospital </label>
                    <div class="col-sm-10">
                    <input type="text" name="hospital" class="form-control">    
                    </div></div>
                    <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">lastname </label>
                    <div class="col-sm-10">
                    <input type="text" name="lastname" class="form-control">   
                    </div></div>
                    <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">password  </label>
                    <div class="col-sm-10">
                    <input type="text" name="password" class="form-control">   
                    </div></div>
                    <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">speciality </label>
                    <div class="col-sm-10">
                    <input type="text" name="speciality" class="form-control">   
                    </div></div>
                   


 <input type="submit"  class="btn btn-success pull-right">&nbsp &nbsp&nbsp
                   
                     <input type="submit" value="Reset" class="btn btn-primary pull-right">


</form>
</body>
</html>