package com.empeligibility.org.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.empeligibility.org.db.DatabaseConnector;
import com.empeligibility.org.model.Login;

public class LoginRepository{
	public void saveLogin(Login log) throws SQLException  
    {  
		PreparedStatement ps = null;
		Connection con = null;
        try {  
//       		System.out.println(emp.getTechnicalskills());
                con = DatabaseConnector.getInstance().getConnection();  
                ps = con.prepareStatement("insert into login (email,password) values (?,?)");  
                ps.setString(1, log.getEmail());  
                ps.setString(2, log.getPassword());  
                ps.executeUpdate();  
                
        } catch (Exception e) { 
        	System.out.println(e);
        }  
    }  
	
	
	public boolean getLogin(String email,Login log)
	{
		PreparedStatement ps = null;
		Connection con = null;
		try {
			  con = DatabaseConnector.getInstance().getConnection();  
	          ps = con.prepareStatement("select email,password from login where email=?");
	          ps.setString(1, email);
	      	  ResultSet rs = ps.executeQuery();
	      	  rs.next();
	      	  String databasepwd = rs.getString(2);
				/* Login log = new Login(); */
	      	  String userpwd = log.getPassword();
	      	  System.out.println("databasepwd "+databasepwd);
	      	  System.out.println("userpwd "+userpwd);
	      	  if(databasepwd.isEmpty() || userpwd.isEmpty())
	      		  	return false;
	      	  else if(databasepwd.equals(userpwd))
	      	  {
	      		  return true;
	      	  }
	      	  else
	      		  return false;
		} catch(Exception e)
		{
			System.out.println(e);
		}
		return false;
	}
	
	
	
}

