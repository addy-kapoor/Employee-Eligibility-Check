<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="log" class="com.empeligibility.org.model.Login"/>
	<jsp:useBean id="loginRepo" class="com.empeligibility.org.repository.LoginRepository"/>
	<%
		System.out.println(request.getParameterMap());
		log.setEmail(request.getParameter("email"));
		log.setPassword(request.getParameter("confirm_password"));
		loginRepo.saveLogin(log);
		String redirectURL = "index.jsp";
	    response.sendRedirect(redirectURL);  
	%>
</body>
</html>