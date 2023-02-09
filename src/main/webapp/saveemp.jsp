<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="emp" class="com.empeligibility.org.model.Employee"/>
	<jsp:useBean id="empRepo" class="com.empeligibility.org.repository.EmployeeRepository"/>
	<%
		System.out.println(request.getParameterMap());
		emp.setEnrollmentno(Integer.parseInt(request.getParameter("enrollmentno")));
		emp.setName(request.getParameter("name"));
		emp.setCountry(request.getParameter("selected_country"));
		emp.setPhoneno(request.getParameter("phoneno"));
		emp.setEmail(request.getParameter("email"));
		emp.setGender(request.getParameter("gender"));
		emp.setCountry(request.getParameter("country"));
		emp.setMinsal(Integer.parseInt(request.getParameter("minsal")));
		emp.setJobType(request.getParameter("jobtype"));
		String[] skills = request.getParameterValues("skills");
		String finalskills = String.join(";", skills);
		emp.setSkills(finalskills);
		emp.setAge(Integer.parseInt(request.getParameter("age")));
		emp.setWorkplaces(request.getParameter("workplaces"));
		emp.setQualification(request.getParameter("qualification"));
		emp.setExperience(Integer.parseInt(request.getParameter("experience")));
		String[] technicalskills = request.getParameterValues("technicalskills");
		String finaltechnialskills = String.join(";", technicalskills);
		emp.setTechnicalSkills(finaltechnialskills);
		empRepo.saveEmployee(emp);
		String redirectURL = "index2.jsp";
	    response.sendRedirect(redirectURL);
	%>
</body>
</html>