<%@ page import="java.sql.*"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="application/json"
	pageEncoding="UTF-8"%>
<%
String s = request.getParameter("val");
//"Software Developer Engineer";
//request.getParameter("val");
if (s == null || s.trim().equals("")) {
	out.print("Please select Job-Post");
} else {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","root");
		PreparedStatement ps = con.prepareStatement("select sno, formula from jobpost where jobpost=?");
		ps.setString(1, s);
		ResultSet rs = ps.executeQuery();
		JSONObject json = new JSONObject();
		rs.next();
        int sno = rs.getInt(1);
        String formula = rs.getString(2);
        json.put("default_formula" ,formula);
        String table="";
        //String text = (String) json.get("sno");
		PreparedStatement ps2 = con.prepareStatement("select sno,field,operator,value from eligibility where fk_sno=?");
		ps2.setInt(1, sno);
		ResultSet rs2 = ps2.executeQuery();  
		table+=("<tr><th>SNo.</th><th>Field</th><th>Operator</th><th>Value</th></tr>");  
		while(rs2.next()){  
		table+=("<tr><td>"+rs2.getString(1)+"</td><td>"+rs2.getString(2)+"</td><td>"+rs2.getString(3)+"</td><td>"+rs2.getString(4)+"</td></tr>");  
		}  
		json.put("table" ,table);
		response.setContentType("application/json");
		response.getWriter().write(json.toString());
		con.close();
		//response.sendRedirect(request.getContextPath() + "/index.jsp");
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>