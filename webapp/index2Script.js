/**
 * 
 */
 let input = document.querySelector(".input");
	  input.addEventListener("submit", (event) => {
	    event.preventDefault();
	  })
	    function dosubmit() {
			  let a = document.forms["myform"]["enrollmentno"].value;
			  let b = document.forms["myform"]["phoneno"].value;
			  let c = document.forms["myform"]["experience"].value;
			  let d = document.forms["myform"]["country"].value;
			  let e = document.forms["myform"]["minsal"].value;
			  let f = document.forms["myform"]["jobtype"].value;
			  let g = document.forms["myform"]["skills"].value;
			  let h = document.forms["myform"]["name"].value;
			  let i = document.forms["myform"]["email"].value;
			  let j = document.forms["myform"]["age"].value;
			  let k = document.forms["myform"]["qualification"].value;
			  let l = document.forms["myform"]["workplaces"].value;
			  let m = document.forms["myform"]["gender"].value;
			  let n = document.forms["myform"]["technicalskills"].value;
			  console.log(h);
			  var a1 = true ;
			  //, a2 = true , a3=true,a4=true,a5=true,a6=true;
			  //var a7 = true , a8 = true , a9=true,b1=true,b2=true,b3=true;
			  if (a == ""){ {
			    document.getElementById("myenroll").style.border = '2px solid red';
			    a1 =  false;
			  }
			    if(b == ""){
			    	document.getElementById("myphoneno").style.border = '2px solid red';
			    	 a1 =  false;
			    }
			    if(c == ""){
			    	document.getElementById("validatexperience").style.border = '2px solid red';
			    	 a1 =  false;
			    }
			    if(d == ""){
			    	document.getElementById("country").style.border = '2px solid red';
			    	 a1 = false;
			    }
			    if(e == ""){
			    	document.getElementById("minsal").style.border = '2px solid red';
			    	 a1 = false;
			    }
			    if(f == ""){
			    	document.getElementById("inlineRadio1").style.border = '2px solid red';
			    	document.getElementById("inlineRadio2").style.border = '2px solid red';
			    	 a1 =  false;
			    }
			    if(g == ""){
			    	document.getElementById("defaultCheck1").style.border = '2px solid red';
			    	document.getElementById("defaultCheck2").style.border = '2px solid red';
			    	document.getElementById("defaultCheck3").style.border = '2px solid red';
			    	 a1 =  false;
			    }
			    if(h == ""){
			    	document.getElementById("myname").style.border = '2px solid red';
			    	 a1 =  false;
			    }
			    if(i == ""){
			    	document.getElementById("emailvalidate").style.border = '2px solid red';
			    	 a1 =  false;
			    }
			    if(j == ""){
			    	document.getElementById("agevalidate").style.border = '2px solid red';
			    	 a1 =  false;
			    }
			    if(k == ""){
			    	document.getElementById("qualification").style.border = '2px solid red';
			    	 a1 =  false;
			    }
			    if(l == ""){
			    	document.getElementById("inlineRadio1workplace").style.border = '2px solid red';
			    	document.getElementById("inlineRadio2workplace").style.border = '2px solid red';
			    	document.getElementById("inlineRadio3workplace").style.border = '2px solid red';
			    	 a1 =  false;
			    }
			    if(m == ""){
			    	document.getElementById("inlineRadio1gender").style.border = '2px solid red';
			    	document.getElementById("inlineRadio2gender").style.border = '2px solid red';
			    	document.getElementById("inlineRadio3gender").style.border = '2px solid red'
			    	 a1 =  false;
			    }
			    if(n == ""){
			    	document.getElementById("defaultCheck1skills").style.border = '2px solid red';
			    	document.getElementById("defaultCheck2skills").style.border = '2px solid red';
			    	document.getElementById("defaultCheck3skills").style.border = '2px solid red'
			    	 a1 =  false;
			    }
			  }  
			    //&& a2 && a3 && a4 && a5 && a6 && a7 && a8 && a9 && b1 && b2 && b3 && b4 ;
			  else{
				  alert("recordSaved");
			  }
			    return al;
			}
        const signupBtn = document.querySelector(".signupBtn");
        const loginBtn = document.querySelector(".loginBtn");
        const moveBtn = document.querySelector(".moveBtn");
        const signup = document.querySelector(".signup");
        const login = document.querySelector(".login");

        loginBtn.addEventListener("click",()=>{
            moveBtn.classList.add("rightBtn");
            login.classList.add("loginForm");
            signup.classList.remove("signupForm");
            moveBtn.innerHTML = "EligibilityCheck";

        })
        signupBtn.addEventListener("click",()=>{
            moveBtn.classList.remove("rightBtn");
            login.classList.remove("loginForm");
            signup.classList.add("signupForm");
            moveBtn.innerHTML = "EmplyoeeForm";
        })
        function selectCountry(event){
        	document.getElementById("selected_country").value = event.innerHTML;
        	document.getElementById("country").innerHTML = event.innerHTML;
        }
        
        function selectMinsal(event){
        	document.getElementById("selected_minsal").value = event.innerHTML;
        	document.getElementById("minsal").innerHTML = event.innerHTML;
        }
        function selectQualification(event){
        	document.getElementById("selected_qualification").value = event.innerHTML;
        	document.getElementById("qualification").innerHTML = event.innerHTML;
        }
        function selectJobpost(event){
        	document.getElementById("selected_jobpost").value = event.innerHTML;
        	document.getElementById("jobpost").innerHTML = event.innerHTML;
        } 
        var request;
    	function sendInfo() {
    		var v = document.vinform.v1.value;
    		var url = "FetchData.jsp?val=" + v;
    		if (window.XMLHttpRequest) {
    			request = new XMLHttpRequest();
    		} else if (window.ActiveXObject) {
    			request = new ActiveXObject("Microsoft.XMLHTTP");
    		}

    		try {
    			request.onreadystatechange = getInfo;
    			request.open("GET", url, true);
    			request.send();
    		} catch (e) {
    			alert("Unable to connect to server");
    		}
    	}
    	function getInfo() {
    		if (request.readyState == 4) {
    			var val = JSON.parse(request.responseText); 
    			 document.getElementById("myage").value = val.Age;
    			 document.getElementById("myqualification").value = val.Qualification;
    			 document.getElementById("myexperience").value = val.Experience;
    			 document.getElementById("myjobtype").value = val.JobType;
    			 document.getElementById("myminsal").value = val.Minsal;
    			 document.getElementById("myworkplaces").value = val.WorkPlaces;
    			 document.getElementById("mycountry").value = val.Country;
    			 document.getElementById("myskills").value = val.Skills;
    			 document.getElementById("mytechnicalskills").value = val.TechnicalSkills;
    		}
    	} 
    	var request;
    	function sendJobpost() {
    		var va = document.getElementById("selected_jobpost").value;
    		var url = "jobpost.jsp?val=" + va;
    		if (window.XMLHttpRequest) {
    			request = new XMLHttpRequest();
    		} else if (window.ActiveXObject) {
    			request = new ActiveXObject("Microsoft.XMLHTTP");
    		}
    		try {
    			request.onreadystatechange = getJobpost;
    			request.open("GET", url, true);
    			request.send();
    		} catch (e) {
    			alert("Unable to connect to server");
    		}
    	}
    	function getJobpost() {
    		if (request.readyState == 4) {
    			var val = JSON.parse(request.responseText); 
    			document.getElementById('myformula').value = val.default_formula;
    			document.getElementById('mylocation').innerHTML = val.table;
    		}
    	}
    	var xhr;	 
    	function checkEligibility(event) {
    		event.preventDefault();
    		var name = document.vinform.v1.value;
    		var jobpost = document.getElementById("selected_jobpost").value;
    		var formula = document.vinform.myformula.value;	
    		let data = {"name":name,"formula":formula,"jobpost":jobpost};
    		let post = JSON.stringify(data);		 
    		const url = "datastructure.jsp"
    		//let xhr = new XMLHttpRequest();	 
    		if (window.XMLHttpRequest) {
    			xhr = new XMLHttpRequest();	
    		} else if (window.ActiveXObject) {
    			xhr = new ActiveXObject("Microsoft.XMLHTTP");
    		}
    		xhr.open("POST", url, true)
    		var param = "myjson="+post;
    		//xhr.setRequestHeader('Content-type', 'application/json; charset=UTF-8');
    		xhr.onreadystatechange = getFinalResult;
    		xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    		xhr.send(param);
    		xhr.onload = function () {
    		    if(xhr.status === 200) {
    		        console.log("Post successfully created!") 
    		    }
    		}
    		console.log(name);
    		console.log(jobpost);
    		console.log(formula);
    	}
    	const eligibleImage = document.querySelector(".eligibleimg");
    	function getFinalResult(){
    		if (xhr.readyState == 4) {
    			var val = xhr.responseText.trim(); 
    			//console.log("hi");
    			console.log("final result"+val);
    			if(val==='true')
    			{
	    			eligibleImage.classList.remove("NotEligibleImage");
	    			eligibleImage.classList.add("eligiblemage");
    			}
    			else
    			{
    				eligibleImage.classList.remove("eligiblemage");
    				eligibleImage.classList.add("NotEligibleImage");
    			}
    		}
    	}