<%@ page import="java.sql.*"%>
<%@ page import="org.json.simple.JSONObject"%>
<%
String s = request.getParameter("val");
if (s == null || s.trim().equals("")) {
	out.print("Please enter name");
} else {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "root");
		PreparedStatement ps = con.prepareStatement("select * from employeedetails where Name=?");
		ps.setString(1, s);
		ResultSet rs = ps.executeQuery();
		ResultSetMetaData rsMetaData = rs.getMetaData();
		JSONObject json = new JSONObject();
        while (rs.next()) {
        	for(int i = 1; i <= rsMetaData.getColumnCount(); i++) {
                json.put(rsMetaData.getColumnName(i), rs.getString(rsMetaData.getColumnName(i)));
             }
        }
        out.print(json);
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>