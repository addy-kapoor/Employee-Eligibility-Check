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
		/* System.out.println(request.getParameterMap()); */
		System.out.println("hi");
		System.out.println(request.getParameter("umail"));
		System.out.println(request.getParameter("pwd"));
		log.setEmail(request.getParameter("umail"));
		log.setPassword(request.getParameter("pwd"));
		boolean result = loginRepo.getLogin(request.getParameter("umail"),log);
		if(result)
		{
			String redirectURL = "index2.jsp";
		    response.sendRedirect(redirectURL);  
		}
		else
		{
			String redirectURL = "index.jsp";
		    response.sendRedirect(redirectURL);  
		}	
	%>
</body>
</html>