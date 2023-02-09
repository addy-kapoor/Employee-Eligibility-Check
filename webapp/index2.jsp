<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./static resources/css/bootstrap.min.css" rel="stylesheet">
<script src="./static resources/js/bootstrap.bundle.min.js"></script>
</head>
<style>
* {
	margin: 0%;
	padding: 0%;
}
.rowpadding {
	padding: 10px;
}
.actionBtns {
	width: 60%;
	background-color:#024199;
	display: flex;
	justify-content: space-between;
	position: relative;
	border-radius: 50px;
	margin-left: 6cm;
	margin-top:0.3cm;
	box-shadow: rgba(0, 0, 0, 0.09) 0px 3px 12px;
}
.actionBtn {
	padding: 1em;
	width: 50%;
	outline: none;
	border: none;
	background-color: transparent;
	border-radius: 50px;
	color: white;
	font-size: 1em;
	font-weight: 600;
	cursor: pointer;
}
.moveBtn {
	position: absolute;
	width: 50%;
	height: 90%;
	margin: 2px;
	border: none;
	outline: none;
	border-radius: 50px;
	background-color: white;
	font-size: 1em;
	font-weight: 600;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px;
	transform: translateX(0);
	transition: all 0.2s ease-in-out;
}
.rightBtn {
	transform: translateX(98%);
	transition: all 0.2s ease-in-out;
}
.form {
	display: none;
}
.signupForm {
	display: block;
}
.loginForm {
	display: block;
}
.formshadow  {
	background-radius: 10px;
	/* border:1px solid black; */ 
	background-color:#F0F0F0;
	position: relative;
  	top: 0;
}
.image{
    background-image:url('./static resources/images/download (1).jpg');
     background-position: center;
     border:2px solid black;
     background-repeat: no-repeat;
} 
.formshadow :hover {
	border: 2px solid #4682B4;
}
body{
    background-color:#cfd9e8; 
}
.inner{
    box-shadow: -15px -15px 15px rgba(255, 255, 255, 0.2), 15px 15px 15px
		rgba(0, 0, 0, 0.1);
	background-size:cover;
    /* background-position: center; */
	/* background-image:url('./static resources/images/16339874_v915-wit-005.jpg'); */
}
.table td,th{
	text-align: center;
}
.table th{
	text-align: center;
}
/*  tr:nth-child(even) {
  background-color: #024199;
}  */
.button{
	background-color:#024199;
	font-size:22px;
}
.buttoncol{
	background-color:#024199;
	font-size:22px;
	width: 50%;
}
.ta{
	word-wrap: break-word;
}
.eligiblemage{
	background-image:url('./static resources/images/qualified4.png');
	background-size:cover;
    background-position: center;
    border-radius:15px 80px 80px 15px;
} 
.NotEligibleImage{
	background-image:url('./static resources/images/unqualified4.png');
	background-size:cover;
    background-position: center;
    border-radius:80px 15px 15px 80px;;
}
.information{
	animation: glow 1s ease-in-out infinite alternate;
}
.cardclass{
	margin-top:20px;
}
  #boldstyle{
  		font-weight:600;
  		font-size:20px;
  		/* color: white; */
  }
  body{
  	font-size:16px;
  }
  .marginleft{
  	margin-left: 150px;
  	background-color:white;
  }
  .cicularimg1{
  		border-radius:50%;
  		height:40%;
  		width:55%;
  		position: relative;
  		top:0;
  		left:0;
  		-webkit-animation: mover 2s infinite alternate;
	    animation: mover 1s infinite alternate;
  }
  .cicularimg2{
  		border-radius:50%;
  		height:40%;
  		width:50%;
  		position: absolute;
  		top:165px;
  		left:220px;
  }
  .cicularimg3{
  		border-radius:50%;
  		height:40%;
  		width:55%;
  		top:100px;
  		left:5px;
  		position:relative;
  } 
  .topmargin{
  	margin-top: 5px;
  }
  .fontsize{
  	font-size:19px;
  }
  #subbtn{
  	color:white;
  }
  .secondform{
  	background-color:#024199;
  	/* #8cb7f5; */
  }
  .color{
  	background-color:#F0F0F0;
  }
  #whitecolor{
  	color:white;
  }
  .incfontsize{
  	font-size:18px;
  }
</style>
<body>
	<div>
		<div class="actionBtns">
			<button class="actionBtn signupBtn" type="button">EmployeeForm</button>
			<button class="actionBtn loginBtn" type="button">EligibilityCheck</button>
			<button class="moveBtn" type="button">EmployeeForm</button>
		</div>
		<form name="myform" action="saveemp.jsp" class="form signup signupForm fontsize" method = "POST" onsubmit="return dosubmit()">
		  	<div class="row mt-4 ">
		  	<!-- <div> -->
		  	<div class="col-lg-5 marginleft">
		  		<div class="row topmargin">
				    <label id="boldstyle" class="labeldeco" >Enrollment No</label>
				     	<input type="number" class="form-control formshadow" name="enrollmentno" id="myenroll">	    
				</div>
				<h3 class="mt-1">Personal Information</h3>
				<div class="row topmargin">
					<div class="col-6">
				    <label id="boldstyle">Name</label>
				      <input type="text" class="form-control formshadow" name="name" id="myname">
				    </div>
				    <div class="col-6">
				    <label id="boldstyle">Email</label>
				      <input type="email" class="form-control formshadow " name="email" id="emailvalidate">
				    </div>
				    
				</div>
				<div class="row topmargin">
				<div class="col-6">
				    <label id="boldstyle">Gender</label><br>
				     	<div class="form-check form-check-inline">
								<input class="form-check-input formshadow" type="radio" id="inlineRadio1gender" value="Male" name="gender">
								<label class="form-check-label" for="inlineRadio1">Male</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input formshadow" type="radio" id="inlineRadio2gender" value="Female" name="gender">
								<label class="form-check-label" for="inlineRadio2">Female</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input formshadow" type="radio" id="inlineRadio3gender" value="Other" name="gender">
								<label class="form-check-label" for="inlineRadio3">Other</label>
							</div>
				    </div>
				    <div class="col-6">
				    <label id="boldstyle">Age</label>
				      <input type="number" class="form-control formshadow " name="age" id="agevalidate">
				    </div> 
				 </div>
				 <div class="row topmargin">
				    <div class="col-6">
				    <label id="boldstyle">Phone Number</label><br>
				     	<input type="text" class="form-control formshadow" name="phoneno" id="myphoneno">
				    </div>
				    <div class="col-6">
				    	<label id="boldstyle">Country</label><br>
				    	<div class="dropdown">
								<button type="button" class="btn dropdown-toggle form-control formshadow "
									data-bs-toggle="dropdown" id="country" >--Select--</button>
								<input id="selected_country" name="country" type="hidden" >
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" onclick="selectCountry(this)" href="#">India</a></li>
									<li><a class="dropdown-item" onclick="selectCountry(this)" href="#">USA</a></li>
									<li><a class="dropdown-item" onclick="selectCountry(this)" href="#">China</a></li>
								</ul>
						</div>
				    </div>
				   </div> 
				    <h3 class="topmargin mt-1">Job Related Information</h3>
				    <div class="row topmargin">
				    <div class="col-4">
				    	<label id="boldstyle">Highest Qualification</label><br>
				    	<div class="dropdown">
								<button type="button" class="btn dropdown-toggle form-control formshadow "
									data-bs-toggle="dropdown" id="qualification">--Select--</button>
									<input id="selected_qualification" name="qualification" type="hidden">
								<ul class="dropdown-menu formshadow">
									<li><a class="dropdown-item" onclick="selectQualification(this)" href="#">Higher Secondary</a></li>
									<li><a class="dropdown-item" onclick="selectQualification(this)" href="#">Graduation</a></li>
									<li><a class="dropdown-item" onclick="selectQualification(this)" href="#">Post Graduation</a></li>
								</ul>
						</div>
				    </div>
				    <div class="col-2">
				    <label id="boldstyle">Experience</label><br>
				      <input type="number" class="form-control formshadow " name="experience" onkeyup="sendInfo()" id="validatexperience">
				    </div>
				    <div class="col-6">
				    <label id="boldstyle">Workplaces</label><br>
				      <div class="form-check form-check-inline">
								<input class="form-check-input formshadow" type="radio" id="inlineRadio1workplace" value="On-site" name="workplaces">
								<label class="form-check-label" for="inlineRadio1">On-site</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input formshadow" type="radio" id="inlineRadio2workplace" value="Hybrid" name="workplaces">
								<label class="form-check-label" for="inlineRadio2">Hybrid</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input formshadow" type="radio" id="inlineRadio3workplace" value="Remote" name="workplaces">
								<label class="form-check-label" for="inlineRadio3">Remote</label>
							</div>
				    </div>
				 </div>
				 <div class="row pt-2 topmargin">
				    <div class="col-5">
				    <label id="boldstyle">Job Type</label><br>
				      <div class="form-check form-check-inline">
								<input class="form-check-input formshadow" type="radio" id="inlineRadio1" value="Internship" name="jobtype">
								<label class="form-check-label" for="inlineRadio1">Internship</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input formshadow" type="radio" id="inlineRadio2" value="Full Time" name="jobtype">
								<label class="form-check-label" for="inlineRadio2">Full Time</label>
							</div>
				    </div>
				    <div class="col-7">
				    <label id="boldstyle">Technical Skills</label><br>
				      <div class="form-check form-check-inline">
								<input class="form-check-input formshadow" type="radio" id="defaultCheck1skills" value="Frontend Development" name="technicalskills">
								<label class="form-check-label">Frontend</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input formshadow" type="radio" id="defaultCheck2skills" value="Backend Development" name="technicalskills">
								<label class="form-check-label">Backend</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input formshadow" type="radio" id="defaultCheck3skills" value="Fullstack Development" name="technicalskills">
								<label class="form-check-label">Fullstack</label>
							</div>
				    </div>
				    
			</div>
			<div class="row pt-2 topmargin">
				    <div class="col-4">
				    <label id="boldstyle">Minimum Salary</label><br>
				     	<div class="dropdown">
								<button type="button" class="btn dropdown-toggle form-control formshadow "
									data-bs-toggle="dropdown" id="minsal">--Select--</button>
									<input id="selected_minsal" name="minsal" type="hidden">
										<ul class="dropdown-menu">
											<li><a class="dropdown-item" onclick="selectMinsal(this)" href="#">35000</a></li>
											<li><a class="dropdown-item" onclick="selectMinsal(this)" href="#">45000</a></li>
											<li><a class="dropdown-item" onclick="selectMinsal(this)" href="#">55000</a></li>
											<li><a class="dropdown-item" onclick="selectMinsal(this)" href="#">65000</a></li>
										</ul>
						</div>
				    </div>
				    <div class="col-8">
				    	<label id="boldstyle">Skills</label><br>
				 	<div class="form-check form-check-inline">
								<input class="form-check-input skills1 formshadow" type="checkbox" value="Fluent Communication"
									id="defaultCheck1" name="skills"> <label class="form-check-label"
									for="defaultCheck1">Communication</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input skills1 formshadow" type="checkbox" value="Word,Excel"
									id="defaultCheck2" name="skills"> <label class="form-check-label"
									for="defaultCheck2">Word,Excel</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input skills1 formshadow" type="checkbox" value="Emailing"
									id="defaultCheck3" name="skills"> <label class="form-check-label"
									for="defaultCheck1">Emailing</label>
							</div>
				    </div>
			</div>
		  	</div>
		  	
		  	
						<div class="col-lg-4" style="position: relative; padding-left:70px; height:600px; background-color:#F0F0F0;">
					<img src="./static resources/images/step1f2.jpg" class="cicularimg1">
					<img src="./static resources/images/step2.jpg" class="cicularimg2">
					<img src="./static resources/images/step3.jpg" class="cicularimg3">
				</div>
				<div ="col-lg-1">
				<!-- </div> -->
			</div>	
			</div>	
				<div class="row">	
				<div class="col-lg-4"></div>
					<div class="col-lg-8 mt-3">	
						<button class="btn buttoncol input"  value = "Submit" ><span id="subbtn">Submit</button>
					</div>		
				</div>
		</form>
</div>
		
		<form action="" class="form form-inline login" name="vinform">
		<div class="container mt-4 inner card cardclass color">
			<div class="row rowpadding rowpadding py-2">
				<div class="col-8">
					<div class="row rowpadding">
						<div class="col-4">
							<label class="form-label" id="boldstyle"><h5>Job Post</h5></label>
							<div class="dropdown">
								<button type="button" class="btn dropdown-toggle form-control formshadow incfontsize"  data-bs-toggle="dropdown" id="jobpost">--Select--</button>
									<input id="selected_jobpost" " name="jobpost" type="hidden">
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" onclick="selectJobpost(this); sendJobpost();" href="#">Software Developer Engineer</a></li>
									<li><a class="dropdown-item" onclick="selectJobpost(this); sendJobpost();" href="#">Human Resource</a></li>
									<li><a class="dropdown-item" onclick="selectJobpost(this); sendJobpost();" href="#">Project Manager</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-6">
							<label class="form-label incfontsize" id="boldstyle"><h5>Name</h5></label>
							<input type="search" id="form1" class="form-control formshadow " id="myinput" onkeyup="sendInfo()" name="v1" >
						</div>
						<div class="col-lg-2"></div>  
						<div class="col-lg-6 mt-3">
							<label class="form-label incfontsize" id="boldstyle"><h5>Eligibility Formula</h5></label> 
							<input type="text" class="form-control formshadow " id="myformula">
						</div>
						<div class="col-2">
						<!-- <input type="Submit" value="Check Eligibility" class="btn mt-5 button" id="button" onclick="checkEligibility();"> -->
							<button class="btn button mt-5" value="Check Eligibility" id="check" onclick="checkEligibility(event);"><span id="subbtn">Check</span></button>
						</div>
						<div class="col eligibleimg mt-5">	
						</div>
					</div>
					<br>
					<table class="table table-hover table-striped incfontsize" id="mylocation"></table>
				</div>
				<div class="col-lg-4 secondform">
					<div class="row rowpadding">
					<div class="col information">
						<h4 id="whitecolor">INFORMATON OF EMPLOYEE</h4>
					</div>
					</div>
					<div class="row mb-3">
    					<label class="col-sm-4 col-form-label" id="boldstyle" style="color:white;">Age</label>
    					<div class="col-sm-8">
      					<input type="number" id="myage"  value="" class="form-control border border-100 border-secondary incfontsize" readonly >
   						</div>
  					</div>
  					<div class="row mb-3">
    					<label class="col-sm-4 col-form-label mr-10" id="boldstyle" style="color:white;">Qualification</label>
    					<div class="col-sm-8">
      					<input type="text" id="myqualification"  value="" readonly class="form-control border border-100 border-secondary incfontsize">
   						</div>
  					</div>
  					<div class="row mb-3">
    					<label class="col-sm-4 col-form-label mr-10" id="boldstyle" style="color:white;">Experience</label>
    					<div class="col-sm-8">
      					<input type="text" id="myexperience"  value="" readonly class="form-control incfontsize border border-100 border-secondary">
   						</div>
  					</div>
  					<div class="row mb-3">
    					<label class="col-sm-4 col-form-label mr-10" id="boldstyle" style="color:white;">Job Type</label>
    					<div class="col-sm-8">
      					<input type="text" id="myjobtype" value="" readonly class="form-control incfontsize border border-100 border-secondary">
   						</div>
  					</div>
  					<div class="row mb-3">
    					<label class="col-sm-4 col-form-label mr-10" id="boldstyle" style="color:white;">Min Salary</label>
    					<div class="col-sm-8">
      					<input type="number" id="myminsal" value="" readonly class="form-control incfontsize border border-100 border-secondary">
   						</div>
  					</div>
  					<div class="row mb-3">
    					<label class="col-sm-4 col-form-label mr-10" id="boldstyle" style="color:white;">Workplaces</label>
    					<div class="col-sm-8">
      					<input type="text" id="myworkplaces" value="" readonly class="form-control incfontsize formshadow  border border-100 border-secondary">
   						</div>
  					</div>
  					<div class="row mb-3">
    					<label class="col-sm-4 col-form-label mr-10" id="boldstyle" style="color:white;">Country</label>
    					<div class="col-sm-8">
      					<input type="text" id="mycountry" value="" readonly class="form-control incfontsize formshadow  border border-100 border-secondary">
   						</div>
  					</div>
  					<div class="row mb-3">
    					<label class="col-sm-4 col-form-label mr-10" id="boldstyle" style="color:white;">Skills</label>
    					<div class="col-sm-8">
      					<textarea class="form-control formshadow ta incfontsize" id="myskills"  cols="50" readonly></textarea>
   						</div>
  					</div>
  					<div class="row mb-3">
    					<label class="col-sm-4 col-form-label mr-10 " id="boldstyle" style="color:white;">Technical Skills</label>
    					<div class="col-sm-8">
      					<textarea class="form-control formshadow ta incfontsize" id="mytechnicalskills"   cols="50" readonly></textarea> 
   						</div>
  					</div>
				</div>
			</div>
		</form>
	</div>	
	<script src="index2Script.js"></script>
</body>
</html>