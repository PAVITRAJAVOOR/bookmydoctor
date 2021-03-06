
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Bookmydoc</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon"
	href="http://demo.bookmydoc.in/admin/uploads/common/1493899510_fav__icon.png"
	type="image/jpg" sizes="16x16">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/animate.css">
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/hover-min.css">
<!-- Select2 -->
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/select2.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/AdminLTE.min.css">
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/common.css">
<!--  calendar --->
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/appointment/calendar.css">
<!--common-head-css -->
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/jquery.timepicker.css">
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/datepicker.css">
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/style.css">
<link rel="stylesheet"
	href="http://demo.bookmydoc.in/assets/css/responsive.css">

<body class="hold-transition  sidebar-mini">
	<div class="wrapper">
		<nav class="navbar navbar-default nav-main">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-xs-4 col-sm-12 logo-col">
						<div class="logo animated fadeInLeft">
							<a href="http://demo.bookmydoc.in/"><img
								src="http://demo.bookmydoc.in/admin/uploads/common/1493899510_logo.png"
								class="img-responsive col-lg-12 col-xs-12 col-sm-3" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-9 col-xs-8 col-sm-12 header-sgnin">
						<div class="signin">
							<ul>
								<li><a href="http://demo.bookmydoc.in/Login/presignup"><img
										src="http://demo.bookmydoc.in/assets/images/home/1.png" />Register</a></li>
								<li onclick="mysigninFunction()" data-toggle="modal"
									class="log-index" data-target="#myModal"><img
									src="http://demo.bookmydoc.in/assets/images/home/2.png" />Doctor Login</li>
								<li onclick="mysigninFunction()" data-toggle="modal"
									class="log-index" data-target="#myModal"><img
									src="http://demo.bookmydoc.in/assets/images/home/2.png" />Patient Login</li>
								
							</ul>
						</div>
						<div class="clearfix hidden-xs"></div>
						<div class="navbar-header navbar-header-resp">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!--  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav nav-head animated fadeInDown">
                        <li><a href = "http://demo.bookmydoc.in/General/aboutus">A Propos</a></li>
						<li><a href = "http://demo.bookmydoc.in/General/terms">Terms </a></li>
                        <li><a href = "http://demo.bookmydoc.in/General/careers">Careers </a></li>
                        <li><a href = "http://demo.bookmydoc.in/General/contact">Contact </a></li>
						<li><a href="javascript:void(0);">FAQ  </a></li>
                        <li><a href="javascript:void(0);">Blog  </a></li>
                        <li><a href="javascript:void(0);">Doctor Blog  </a></li>
                    </ul>
                </div> -->
					</div>
				</div>
			</div>
		</nav>
		<div class="container">
			<!-- Modal -->
			<div class="modal fade bac-modal" id="myModal" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content login-modal">
						<button type="button" onclick="mysigninclickFunction()"
							class="btn btn-default close-mdl" data-dismiss="modal">
							<img src="http://demo.bookmydoc.in/assets/images/login/2.png" />
						</button>
						<div class="row">
							<div class="col-lg-6">
								<div class="errormsg"></div>
								<div class="login-top">
									<div class="main-lg-new active" id="signinlist">
										<form id="form_login" action="./lc/dlogin" method="post"
											data-parsley-validate="" class="validate">
											<div class="col-lg-12">
												<h3>
													<span><img
														src="http://demo.bookmydoc.in/assets/images/home/1.png" /></span>SIGN
													IN
												</h3>
											</div>
											<div class="form-group">
												<div class="col-lg-12">
													<input type="email" name="email" class="form-control"
														id="email" placeholder="Email"
														data-parsley-trigger="change" data-parsley-type="email"
														required="">
												</div>
											</div>
											<div class="form-group">
												<div class="col-lg-12">
													<input type="password" name="password" class="form-control"
														id="password" placeholder="Password"
														 required="">
												</div>
											</div>
											<div class="form-group">
												<div class="col-lg-12">
													<div class="forget-pass">
														<h4>
															<a href="javascript:void(0);" class="frgt-pass">Forgot
																your Password?</a>
														</h4>
														<h4>
															<button type="submit" class="log-in-a">Signin
																button</button>
														</h4>
													</div>
												</div>
											</div>
										</form>
									</div>
									<!---- new --->
									<div class="main-lg-reset">
										<form id="form_forgot" action="./lc/dlogin" method="post"
											data-parsley-validate="" class="validate">
											<div class="col-lg-12">
												<h3>
													<span><img
														src="http://demo.bookmydoc.in/assets/images/home/2.png" /></span>Forgot
													Password
												</h3>
											</div>
											<div class="form-group">
												<div class="col-lg-12">
													<input type="email" name="email" id="femail"
														class="form-control" placeholder="Email">
												</div>
											</div>
											<div class="form-group">
												<div class="col-lg-12">
													<div class="forget-pass">
														<h4>
															<button type="submit" class="log-in-a">Submit</button>
														</h4>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="bac-right-login">
									<h5></h5>
									<a href="http://demo.bookmydoc.in/Login/presignup">Book
										Your Doctor By Mobile</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-----------------slider---------------->
		<div class="share animated zoomIn hvr-grow">
			<img src="http://demo.bookmydoc.in/assets/images/home/share.png"
				alt="" />
		</div>
		<div class="find-main col-lg-6 nopadding">
			<div class="find col-lg-1 nopadding">
				<img class="hvr-grow"
					src="http://demo.bookmydoc.in/assets/images/home/find.png" alt="" />
			</div>
			<div class="container find-div col-lg-11 nopadding col-lg-offset-1">
				<div class="col-lg-12 nopadding">
					<div class="find-sub col-lg-1 nopadding">
						<img class="hvr-grow"
							src="http://demo.bookmydoc.in/assets/images/home/find.png" alt="" />
					</div>
					<div class="col-lg-12 tab-find ">
						<ul class="nav nav-tabs nav-tab-find">
							<li class="active"><a data-toggle="tab" href="#home"><span><img
										src="http://demo.bookmydoc.in/assets/images/home/form-1.png" />
								</span>Doctor</a></li>
							<li><a data-toggle="tab" href="#menu1"><span><img
										src="http://demo.bookmydoc.in/assets/images/home/form-2.png" />
								</span>Clinic</a></li>
							<li><a data-toggle="tab" href="#menu2"><span><img
										src="http://demo.bookmydoc.in/assets/images/home/form-3.png" />
								</span>Medical Center</a></li>
							<li><a data-toggle="tab" href="#menu3"><span><img
										src="http://demo.bookmydoc.in/assets/images/home/form-4.png" />
								</span>Hospital</a></li>
						</ul>
						<div class="tab-content">
							<div id="home" class="tab-pane fade in active">
								<form role="form"
									action="http://demo.bookmydoc.in/Doctor/Search" method="post"
									class="animated fadeIn" enctype="multipart/form-data">
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<div id="locality_finder_Doc">
													<input type="text" class="form-control autocompleteDoc"
														name="address" required id="exampleSelect1"
														placeholder="search city"> <input type="hidden"
														class="lat_perfect" id="lat_doc" name="latitude">
													<input type="hidden" class="lon_perfect" id="lon_doc"
														name="longitude">
												</div>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select
													onchange="selectReasonSearchbar(this.options[this.selectedIndex].value)"
													name="specialty" class="form-control" id="exampleSelect1">
													<option selected="selected" value="-1">Select
														specialty</option>
													<option value="2">Audiology</option>
													<option value="5">Cardiology</option>
													<option value="6">Chemical Pathology</option>
													<option value="7">Dentistry</option>
													<option value="16">Diabetology</option>
													<option value="33">Diabetologyy</option>
													<option value="8">Diagnostic Radiology</option>
													<option value="9">Electrodiagnostic Medicine</option>
													<option value="4">Family Medicine</option>
													<option value="10">Gastroenterology</option>
													<option value="3">General Medicine</option>
													<option value="11">Hematology</option>
													<option value="23">manu manu</option>
													<option value="12">Massage Therapy</option>
													<option value="13">Maternal-Fetal Medicine</option>
													<option value="14">Nephrology</option>
													<option value="15">Neurology</option>
													<option value="1">Pediatrics</option>
													<option value="24">rajkumar</option>
													<option value="35">sdf</option>
													<option value="36">zsdds</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select name="visitation" class="form-control"
													id="reason_Searchbar_dropdown">
													<option selected="selected" value="-1">Select
														reason</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select name="insurance" class="form-control"
													id="exampleSelect1">
													<option selected="selected" value="">Insurance</option>
													<option value="21">abc</option>
													<option value="1">Aetna</option>
													<option value="2">Aflac</option>
													<option value="13">Apollo Munich Health Insurance</option>
													<option value="3">Berkshire Hathaway</option>
													<option value="4">CareSource</option>
													<option value="14">Cholamandalam MS General
														Insurance</option>
													<option value="5">Combined Insurance</option>
													<option value="18">dth</option>
													<option value="6">Esurance</option>
													<option value="7">Hanover Insurance</option>
													<option value="8">Ironshore</option>
													<option value="9">MetLife</option>
													<option value="10">Mutual of Omaha</option>
													<option value="11">Omega</option>
													<option value="12">Pacific Life</option>
													<option value="15">Religare</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select name="language" class="form-control"
													id="exampleSelect1">
													<option selected="selected" value="">Language</option>
													<option value="32">abc</option>
													<option value="28">afrikaans</option>
													<option value="9">bengali</option>
													<option value="13">burmese</option>
													<option value="25">cantonesse chinese</option>
													<option value="8">english</option>
													<option value="22">french</option>
													<option value="21">german</option>
													<option value="4">hindi</option>
													<option value="23">italian</option>
													<option value="5">kannada</option>
													<option value="12">korean</option>
													<option value="7">malay</option>
													<option value="2">malayalam</option>
													<option value="15">malaysian</option>
													<option value="26">mandarin chinese</option>
													<option value="17">marathi</option>
													<option value="20">nepali</option>
													<option value="24">romansh</option>
													<option value="11">russian</option>
													<option value="19">sanskrit</option>
													<option value="18">sindhi</option>
													<option value="6">sinhala</option>
													<option value="27">swedish</option>
													<option value="1">tamil</option>
													<option value="3">telugu</option>
													<option value="14">thai</option>
													<option value="16">urdu</option>
													<option value="31">venda</option>
													<option value="10">vietnamese</option>
													<option value="29">xhosa</option>
													<option value="30">zulu</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select class="form-control" id="exampleSelect1"
													name="gender">
													<option selected="selected" value="">Gender</option>
													<option>Female</option>
													<option>Male</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-lg-2"></div>
										<div class="col-lg-8" style="padding: 0;">
											<button type="submit" class="btn btn-default btn-form">
												<i class="fa fa-search"></i>Find Doctors
											</button>
										</div>
										<div class="col-lg-2"></div>
									</div>
								</form>
							</div>
							<div id="menu1" class="tab-pane fade">
								<form role="form"
									action="http://demo.bookmydoc.in/Clinic/Search" method="post"
									class="animated fadeIn" enctype="multipart/form-data">
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<div id="locality_finder_Clinic">
													<input type="text" class="form-control autocompleteClinic"
														name="address" required id="exampleSelect1"
														placeholder="search city"> <input type="hidden"
														class="lat_perfect" id="lat_clinic" name="latitude">
													<input type="hidden" class="lon_perfect" id="lon_clinic"
														name="longitude">
												</div>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select
													onchange="selectReasonClinic(this.options[this.selectedIndex].value)"
													name="specialty" class="form-control" id="exampleSelect1">
													<option selected="selected" value="-1">Select
														specialty</option>
													<option value="2">Audiology</option>
													<option value="5">Cardiology</option>
													<option value="6">Chemical Pathology</option>
													<option value="7">Dentistry</option>
													<option value="16">Diabetology</option>
													<option value="33">Diabetologyy</option>
													<option value="8">Diagnostic Radiology</option>
													<option value="9">Electrodiagnostic Medicine</option>
													<option value="4">Family Medicine</option>
													<option value="10">Gastroenterology</option>
													<option value="3">General Medicine</option>
													<option value="11">Hematology</option>
													<option value="23">manu manu</option>
													<option value="12">Massage Therapy</option>
													<option value="13">Maternal-Fetal Medicine</option>
													<option value="14">Nephrology</option>
													<option value="15">Neurology</option>
													<option value="1">Pediatrics</option>
													<option value="24">rajkumar</option>
													<option value="35">sdf</option>
													<option value="36">zsdds</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select name="visitation" class="form-control"
													id="reason_dropdown_clinic">
													<option selected="selected" value="-1">Select
														reason</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select name="insurance" class="form-control"
													id="exampleSelect1">
													<option selected="selected" value="">Insurance</option>
													<option value="21">abc</option>
													<option value="1">Aetna</option>
													<option value="2">Aflac</option>
													<option value="13">Apollo Munich Health Insurance</option>
													<option value="3">Berkshire Hathaway</option>
													<option value="4">CareSource</option>
													<option value="14">Cholamandalam MS General
														Insurance</option>
													<option value="5">Combined Insurance</option>
													<option value="18">dth</option>
													<option value="6">Esurance</option>
													<option value="7">Hanover Insurance</option>
													<option value="8">Ironshore</option>
													<option value="9">MetLife</option>
													<option value="10">Mutual of Omaha</option>
													<option value="11">Omega</option>
													<option value="12">Pacific Life</option>
													<option value="15">Religare</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-lg-2"></div>
										<div class="col-lg-8" style="padding: 0;">
											<button type="submit" class="btn btn-default btn-form">
												<i class="fa fa-search"></i>Find Clinics
											</button>
										</div>
										<div class="col-lg-2"></div>
									</div>
								</form>
							</div>
							<div id="menu2" class="tab-pane fade">
								<form role="form"
									action="http://demo.bookmydoc.in/Medical/Search" method="post"
									class="animated fadeIn" enctype="multipart/form-data">
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<div id="locality_finder_Medical">
													<input type="text" class="form-control autocompleteMedical"
														name="address" required id="exampleSelect1"
														placeholder="search city"> <input type="hidden"
														class="lat_perfect" id="lat_medical" name="latitude">
													<input type="hidden" class="lon_perfect" id="lon_medical"
														name="longitude">
												</div>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select
													onchange="selectReasonMedical(this.options[this.selectedIndex].value)"
													name="specialty" class="form-control" id="exampleSelect1">
													<option selected="selected" value="-1">Select
														specialty</option>
													<option value="2">Audiology</option>
													<option value="5">Cardiology</option>
													<option value="6">Chemical Pathology</option>
													<option value="7">Dentistry</option>
													<option value="16">Diabetology</option>
													<option value="33">Diabetologyy</option>
													<option value="8">Diagnostic Radiology</option>
													<option value="9">Electrodiagnostic Medicine</option>
													<option value="4">Family Medicine</option>
													<option value="10">Gastroenterology</option>
													<option value="3">General Medicine</option>
													<option value="11">Hematology</option>
													<option value="23">manu manu</option>
													<option value="12">Massage Therapy</option>
													<option value="13">Maternal-Fetal Medicine</option>
													<option value="14">Nephrology</option>
													<option value="15">Neurology</option>
													<option value="1">Pediatrics</option>
													<option value="24">rajkumar</option>
													<option value="35">sdf</option>
													<option value="36">zsdds</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select name="visitation" class="form-control"
													id="reason_dropdown_medical" required=" ">
													<option selected="selected" value="-1">Select
														reason</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select name="insurance" class="form-control"
													id="exampleSelect1">
													<option selected="selected" value="">Insurance</option>
													<option value="21">abc</option>
													<option value="1">Aetna</option>
													<option value="2">Aflac</option>
													<option value="13">Apollo Munich Health Insurance</option>
													<option value="3">Berkshire Hathaway</option>
													<option value="4">CareSource</option>
													<option value="14">Cholamandalam MS General
														Insurance</option>
													<option value="5">Combined Insurance</option>
													<option value="18">dth</option>
													<option value="6">Esurance</option>
													<option value="7">Hanover Insurance</option>
													<option value="8">Ironshore</option>
													<option value="9">MetLife</option>
													<option value="10">Mutual of Omaha</option>
													<option value="11">Omega</option>
													<option value="12">Pacific Life</option>
													<option value="15">Religare</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-lg-2"></div>
										<div class="col-lg-8" style="padding: 0;">
											<button type="submit" class="btn btn-default btn-form">
												<i class="fa fa-search"></i>Find Medical Centers
											</button>
										</div>
										<div class="col-lg-2"></div>
									</div>
								</form>
							</div>
							<div id="menu3" class="tab-pane fade">
								<form role="form"
									action="http://demo.bookmydoc.in/Hospital/Search" method="post"
									class="animated fadeIn" enctype="multipart/form-data">
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<div id="locality_finder_Hospital">
													<input type="text"
														class="form-control autocompleteHospital" required
														name="address" id="exampleSelect1"
														placeholder="search city"> <input type="hidden"
														class="lat_perfect" id="lat_hospital" name="latitude">
													<input type="hidden" class="lon_perfect" id="lon_hospital"
														name="longitude">
												</div>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select
													onchange="selectReasonHospital(this.options[this.selectedIndex].value)"
													name="specialty" class="form-control" id="exampleSelect1">
													<option selected="selected" value="-1">Select
														specialty</option>
													<option value="2">Audiology</option>
													<option value="5">Cardiology</option>
													<option value="6">Chemical Pathology</option>
													<option value="7">Dentistry</option>
													<option value="16">Diabetology</option>
													<option value="33">Diabetologyy</option>
													<option value="8">Diagnostic Radiology</option>
													<option value="9">Electrodiagnostic Medicine</option>
													<option value="4">Family Medicine</option>
													<option value="10">Gastroenterology</option>
													<option value="3">General Medicine</option>
													<option value="11">Hematology</option>
													<option value="23">manu manu</option>
													<option value="12">Massage Therapy</option>
													<option value="13">Maternal-Fetal Medicine</option>
													<option value="14">Nephrology</option>
													<option value="15">Neurology</option>
													<option value="1">Pediatrics</option>
													<option value="24">rajkumar</option>
													<option value="35">sdf</option>
													<option value="36">zsdds</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select name="visitation" class="form-control"
													id="reason_dropdown_hospital">
													<option selected="selected" value="-1">Select
														reason</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<select name="insurance" class="form-control"
													id="exampleSelect1">
													<option selected="selected" value="">Insurance</option>
													<option value="21">abc</option>
													<option value="1">Aetna</option>
													<option value="2">Aflac</option>
													<option value="13">Apollo Munich Health Insurance</option>
													<option value="3">Berkshire Hathaway</option>
													<option value="4">CareSource</option>
													<option value="14">Cholamandalam MS General
														Insurance</option>
													<option value="5">Combined Insurance</option>
													<option value="18">dth</option>
													<option value="6">Esurance</option>
													<option value="7">Hanover Insurance</option>
													<option value="8">Ironshore</option>
													<option value="9">MetLife</option>
													<option value="10">Mutual of Omaha</option>
													<option value="11">Omega</option>
													<option value="12">Pacific Life</option>
													<option value="15">Religare</option>
												</select>
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-lg-2"></div>
										<div class="col-lg-8" style="padding: 0;">
											<button type="submit" class="btn btn-default btn-form">
												<i class="fa fa-search"></i>Find Hospital
											</button>
										</div>
										<div class="col-lg-2"></div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<body onload="initialize()">
			<!--banner-section-->
			<div class="container-fluid">
				<div class="banner">
					<div class="container">
						<div class="col-lg-12">
							<div class="banner-text animated fadeInLeft">
								<h3>Keep your</h3>
								<h2>Family More Healthy</h2>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry's
									standard dummy text ever since the 1500s,</p>
								<a href="">Read more<i class="fa fa-angle-double-right"></i>
								</a>
								<div class="scroll">
									<img class="hvr-grow"
										src="http://demo.bookmydoc.in/assets/images/home/scroll.png"
										alt="" />
									<h3>Scroll Down</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--banner-section-->
			<!--map-section-->
			<div class="container-fluid">
				<div class="map">
					<div class="man">
						<img src="http://demo.bookmydoc.in/assets/images/home/man.png"
							class="img-responsive animated fadeInDown" alt="" />
					</div>
					<div class="container">
						<div class="map-text">
							<h3>HEALTHCARE AT YOUR DEMAND !</h3>
							<h4>
								Find a nearby doctor or dentist and book an appointment
								instantly. And it's free !</span>
							</h4>
						</div>
					</div>
				</div>

			</div>
			<!--map-section-->
			<div class="container-fluid features">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="feature-text">
								<h3>FEATURES</h3>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="feature-inner hvr-shrink">
								<img src="http://demo.bookmydoc.in/assets/images/home/f1.png"
									class="img-responsive" alt="" />
								<h4>View a map of doctors in your insurance network.</h4>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="feature-inner hvr-shrink">
								<img src="http://demo.bookmydoc.in/assets/images/home/f2.png"
									class="img-responsive" alt="" />
								<h4>Read patient reviews to help you choose the right
									doctor</h4>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="feature-inner hvr-shrink">
								<img src="http://demo.bookmydoc.in/assets/images/home/f3.png"
									class="img-responsive" alt="" />
								<h4>See any doctor's available times and click to book!</h4>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--get the app-->
			<div class="container-fluid">
				<div class="app-banner">
					<div class="container ">
						<div class="app">
							<h3>GET THE APP</h3>
							<h4>Make appointments on the go, right from your smartphone,
								with our top-rated mobile app</h4>
							<img src="http://demo.bookmydoc.in/assets/images/home/line.png"
								class="line-img" />
							<div class="clearfix"></div>
							<h5>Get it on</h5>
							<a href=""><img
								src="http://demo.bookmydoc.in/assets/images/home/ios.png" alt=""
								class="img-responsive hvr-grow" /> </a> <a href=""><img
								src="http://demo.bookmydoc.in/assets/images/home/googleplay.png"
								alt="" class="img-responsive hvr-grow" /> </a>
						</div>
					</div>
				</div>
			</div>
			<!--footer-->
			<footer>
				<div class="container">
					<div class="row">
						<div class="col-lg-2"></div>
						<div class="col-lg-10">
							<div class="menu-footer">
								<ul>
									<li class="active"><a href="http://demo.bookmydoc.in/">الرئيسية</a>
									</li>
									<li><a href="http://demo.bookmydoc.in/General/aboutus">A
											Propos</a></li>
									<li><a href="http://demo.bookmydoc.in/General/terms">Terms</a></li>
									<li><a href="http://demo.bookmydoc.in/General/careers">Careers</a></li>
									<li><a href="http://demo.bookmydoc.in/General/contact">Contact
									</a></li>
									<li><a href="javascript:void(0);">FAQ </a></li>
									<li><a href="javascript:void(0);">Blog </a></li>
									<li><a href="javascript:void(0);">Doctor Blog </a></li>
								</ul>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="col-lg-2"></div>
					</div>
					<div class="row">
						<div class="col-lg-3 col-xs-6">
							<div class="footer-text">
								<h3>OUR LOCATION</h3>
								<p>Make appointments on the go, right from your smartphone,
									with our top-rated mobile app</p>
								<h6>
									<span><i class="fa fa-envelope"></i> </span>By E-mail:
									info@Bookmydoc.com
								</h6>
								<h6>
									<span><i class="fa fa-phone"></i> </span>By Phone:
								</h6>
								<h6>
									<span><i class="fa fa-map-marker"></i> </span>Address: 121,
									honey Street, Home City, USA
								</h6>
							</div>
						</div>
						<div class="col-lg-3 col-xs-6">
							<div class="footer-text ">
								<h3>How It Works ?</h3>
								<ul>
									<li>How Bookmydoc Works</li>
									<li>Bookmydoc in Safety</li>
									<li>Terms & Conditions</li>
									<li>Contact Us</li>
									<li>Policies</li>
									<li>Faqs</li>
								</ul>
							</div>
						</div>
						<div class="clearfix hidden-lg hidden-md hidden-sm"></div>
						<div class="col-lg-3 col-xs-6">
							<div class="footer-text">
								<h3>About Us</h3>
								<ul>
									<li>Bookmydoc For Business</li>
									<li>Bookmydoc Premium</li>
									<li>Careers@Bookmydoc</li>
									<li>Equipe Bookmydoc</li>
									<li>Bookmydoc Blog</li>
									<li>Support</li>
								</ul>
							</div>
						</div>
						<div class="col-lg-3 col-xs-6">
							<div class="footer-text last-footer-text">
								<h3>Villes</h3>
								<ul>
									<a href="http://demo.bookmydoc.in/Doctor/Search/1"><li>Chennai</li></a>
									<a href="http://demo.bookmydoc.in/Doctor/Search/2"><li>Bengaluru</li></a>
									<a href="http://demo.bookmydoc.in/Doctor/Search/3"><li>Kolkata</li></a>
									<a href="http://demo.bookmydoc.in/Doctor/Search/4"><li>Mumbai</li></a>
									<a href="http://demo.bookmydoc.in/Doctor/Search/5"><li>Hyderabad</li></a>
									<a href="http://demo.bookmydoc.in/Doctor/Search/7"><li>Pune</li></a>

								</ul>
							</div>
						</div>

						<div class="col-lg-12">
							<div class="copy-right">
								<h4>Copyright © 2015-2016 Techware Solution.</h4>
								All rights reserved.
							</div>
						</div>
					</div>
				</div>
			</footer>
			<!--footer-->
			<a href="#" id="back-to-top" title="Back to top"><img
				src="http://demo.bookmydoc.in/assets/images/home/btp.png"></a>
	</div>
	<script>
		base_url = "http://demo.bookmydoc.in/";
	</script>
	<!-- jQuery 2.1.4 -->
	<script src="http://demo.bookmydoc.in/assets/js/jquery.js"></script>
	<script src="http://demo.bookmydoc.in/assets/js/jquery-1.9.1.min.js"></script>
	<script src="http://demo.bookmydoc.in/assets/js/bootstrap.min.js"></script>
	<script src="http://demo.bookmydoc.in/assets/js/script.js"></script>


	<!-- DataTables -->
	<script
		src="http://demo.bookmydoc.in/assets/js/jquery.dataTables.min.js"></script>
	<script
		src="http://demo.bookmydoc.in/assets/js/dataTables.bootstrap.min.js"></script>
	<!-- Select2 -->
	<script src="http://demo.bookmydoc.in/assets/js/select2.min.js"></script>
	<script src="http://demo.bookmydoc.in/assets/js/parsley.min.js"></script>
	<script src="http://demo.bookmydoc.in/assets/js/jquery.raty.min.js"></script>
	<script src="http://demo.bookmydoc.in/assets/js/filter.js"></script>
	<!---- calendar appointment---->
	<script src="http://demo.bookmydoc.in/assets/js/appointment/cors.js"></script>
	<script
		src="http://demo.bookmydoc.in/assets/js/appointment/bootstrap-calendar.js"></script>
	<script
		src="http://demo.bookmydoc.in/assets/js/appointment/calendar.js"></script>
	<!--- time picker ---->
	<script src="http://demo.bookmydoc.in/assets/js/jquery.timepicker.js"></script>
	<script
		src="http://demo.bookmydoc.in/assets/js/bootstrap-datepicker.js"></script>
	<!--- Development ---->
	<script src="http://demo.bookmydoc.in/assets/js/custom.js"></script>
	<script src="http://demo.bookmydoc.in/assets/js/common.js"></script>
	<script src="http://demo.bookmydoc.in/assets/js/developer.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyAPkwBOzGBH1V1sRBzmCWQS-7XoTgPghT0&libraries=places"></script>
	<script src="http://demo.bookmydoc.in/assets/js/common.js"></script>
	<!-- Load Facebook SDK for JavaScript -->
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<!-- Your customer chat code -->
	<div class="fb-customerchat" attribution=setup_tool
		page_id="1520256354936870"></div>

</body>
</html>
