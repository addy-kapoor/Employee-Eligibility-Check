<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./static resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<script src="./static resources/js/bootstrap.bundle.min.js"></script>
</head>
<style>
	#image{
		width: 150px;
  		height: 150px;
  		border-radius: 50%;
  		margin-top:30px;
	}
	#poster{
		background-size:cover;
		background-position:center;
		height:616px;
		width:548px;
	}
	.card {
        margin-top:15px;
        float: none;
        margin-bottom:30px;
        margin-left:100px;
        margin-right:100px;
    }
    .hey{
    	margin:12px;
    	height:50px;
    }
    .bye{
    	margin:12px;
    	height:40px;
    	background-color:#d1cdcd;
		font-weight: bold;
    }
    #Signup{
    	font-size:20px;
    	padding-left:8px;
    	color:#029932;
    	font-weight:900;
    }
    #login{
    	color:white;
    	font-size:20px;
    }
    .login{
    	background-color:#024199;
    	border:2px solid black;
    }
    body{
    	background-color:#cfd9e8;
    } 
    #stop{
    	font-size:20px;
    }
    .outer{
    	border:2px solid #024199;
    }
    /* The Modal (background) */
.modal {
  display: none; /* Hidden by de	ult */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto; /* 15% from the top and centered */
  padding: 10px;
  border: 1px solid #888;
  width: 30%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
  color: #aaa;
   float: right; 
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}
.form-control {
	font-size: 15px;
}
.form-control, .form-control:focus, .input-group-text {
	border-color: #e1e1e1;
}
.form-control, .btn {        
	border-radius: 3px;
}
.signup-form {
	width: 400px;
	margin: 0 auto;
	padding: 30px 0;		
}
.signup-form form {
	color: #999;
	margin-top: 100px;
	border-radius: 3px;
	margin-bottom: 15px;
	background: #fff;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}
.signup-form h2 {
	color: #333;
	font-weight: bold;
	margin-top: 0px;
}
.signup-form hr {
	margin: 0 -30px 20px;
}
.signup-form .form-group {
	margin-bottom: 20px;
}
.signup-form label {
	font-weight: normal;
	font-size: 15px;
}
.signup-form .form-control {
	min-height: 38px;
	box-shadow: none !important;
}	
.signup-form .input-group-addon {
	max-width: 42px;
	text-align: center;
}	
.signup-form .btn, .signup-form .btn:active {        
	font-size: 16px;
	font-weight: bold;
	background: #024199 !important;
	border: none;
	min-width: 140px;
	color:white;
}
.signup-form .btn:hover, .signup-form .btn:focus {
	background: #024199 !important;
}
.signup-form a {
	color: #fff;	
	text-decoration: underline;
}
.signup-form a:hover {
	text-decoration: none;
}
.signup-form form a {
	color: #19aa8d;
	text-decoration: none;
}	
.signup-form form a:hover {
	text-decoration: underline;
}
.signup-form .fa {
	font-size: 21px;
}
.signup-form .bi-file-lock2-fill {
	font-size: 18px;
}
.signup-form .fa-check {
	color: #fff;
	left: 17px;
	top: 18px;
	font-size: 7px;
	position: absolute;
}
#bluecolor{
	color:#024199;
	font-weight:700;
}
.id1{
 color:#024199;
}
.id2{
 color:#024199;
}
.id3{
 color:#024199;
}
#myBtn{
font-weight: 900;
}
</style>
<body>
<form action="logging.jsp" method="post">
<h1 style="text-align:center; margin-top:12px;  font-weight: 900;"><span class="id1">CHE</span>CK <span class="id2">YOU</span>R <span class="id3">ELI</span>GIBILITY</h1>
	<div class="container">
		<div class="card mt-5 outer">
		<div class="card border border-primary m-2">
			<div class="row">
				<div class="col-lg-6">
					<img src='./static resources/images/poster.jpg' id="poster">
				</div>
				<div class="col-lg-6">
					<div class="container login">
						<div class="row ">
							<div class="col-lg-4"></div>
							<div class="col-lg-4">
								 <img src='./static resources/images/job icon.jpg' id="image">
								<!--   <h3>Hello Again!</h3> -->
							</div>	
				            <div class="col-lg-4"></div>
						</div>
						<div class="row mt-2">
							<h3 class="text-center" style="color:white;">Hello Again!</h3>
						</div>
						<div class="row mt-1">
							<h5 class="text-center" style="color:white;">Login here , to check the employee eligibility<br><span id="stop">with 100% efficient , truthful and <br>a effortless process</span></h5>
						</div>
						<div class="row mt-2">
							<div class="col-lg-2"></div>
							<div class="col-lg-8">
								<input type="email" class="form-control hey" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="umail">
							</div>
							<div class="col-lg-2"></div>
						</div>
						<div class="row">
							<div class="col-lg-2"></div>
							<div class="col-lg-8">
								<input type="password" class="form-control hey" id="exampleInputEmail2" aria-describedby="emailHelp" placeholder="Enter password" name="pwd">
							</div>
							<div class="col-lg-2"></div>
						</div>
						<div class="row">
							<div class="col-lg-2"></div>
							<div class="col-lg-8">
								<button class="form-control bye" type="button" value="Submit"><span style="font-size:20px;">Login</span></button>
							</div>
							<div class="col-lg-2"></div>
						</div>
						<div class="row mt-5 ">
							<span class="text-center" style="color:white; font-size:18px;">Don't have an account yet? &nbsp;<span><a id="myBtn">Sign Up<a></span></span>
						<!--  <span><button id="myBtn">Open Modal</button></span> -->
						</div>
						<div id="myModal" class="modal">
						  <!-- Modal content -->
						  <div class="modal-content">
						
						    <div class="container">
      								<div class="signup-form">
    <span>
    <form method="post" action="SaveLogin.jsp"> 
    <!-- action="SaveLogin.jsp" method="post"> -->
		<h2 style="color:#024199;">Sign Up <span class="close">&times;</span></h2>
		
		<p>Please fill in this form to create an account!</p>
		<hr>
        <div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="bi bi-envelope-fill"></i>
					</span>                    
				</div>
				<input type="email" class="form-control" name="email" placeholder="Email Address" >
			</div>
        </div>
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="bi bi-file-lock2-fill"></i>
						<i class="fa fa-check"></i>
					</span>                    
				</div>
				<input type="text" class="form-control" name="confirm_password" placeholder="Password" >
			</div>
        </div>
        <div class="form-group">
			<label class="form-check-label"><input type="checkbox" required> I accept the <span id="bluecolor">Terms of Use</span> &amp; <span id="bluecolor">Privacy Policy</span></label>
		</div>
		<div class="form-group">
            <button type="submit" class="btn btn-lg btncolor" value="Submit" formaction="SaveLogin.jsp" formmethod="post">Sign Up</button>
        </div>
    </form>
    </span>
	<div class="text-center">Already have an account?<a href="http://localhost:8080/empEligibitliy/index.jsp"> <span id="bluecolor">Login here</span></a></div>
</div>
						  </div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>	
</form>
<script src = "indexScript.js"></script>
</body>
</html>
