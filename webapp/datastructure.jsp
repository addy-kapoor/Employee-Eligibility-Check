<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="org.json.*"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONValue"%>

<%@ page import="com.empeligibility.org.controller.EvaluateCriteriaController"%>
<%
	String data = request.getParameter("myjson");
	JSONObject jsonObj = (JSONObject) JSONValue.parse(data);
	//System.out.println(jsonObj);
	String f_jobpost = jsonObj.get("jobpost").toString();
	String f_name  = jsonObj.get("name").toString();
	String f_formula  = jsonObj.get("formula").toString();
	//System.out.println("lets evaluate formula");
	EvaluateCriteriaController obj = new EvaluateCriteriaController(f_name,f_jobpost);
	Boolean torf = obj.evaluate(f_formula);
	out.print(torf);
%>