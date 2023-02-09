package com.empeligibility.org.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.empeligibility.org.db.DatabaseConnector;
import com.empeligibility.org.model.Employee;
//import com.empeligibility.org.model.GetEmployeeData;

public class EmployeeRepository {
	
	public void saveEmployee(Employee emp) throws SQLException  
    {  
		PreparedStatement ps = null;
		Connection con = null;
        try {  
//       		System.out.println(emp.getTechnicalskills());
                con = DatabaseConnector.getInstance().getConnection();  
                ps = con.prepareStatement("insert into employeedetails (EnrollmentNumber,Name,PhoneNo,Email,Gender,Country,Minsal,JobType,Skills,Age,WorkPlaces,Qualification,Experience,TechnicalSkills) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  
                ps.setInt(1, emp.getEnrollmentno());  
                ps.setString(2, emp.getName());  
                ps.setString(3, emp.getPhoneno());  
                ps.setString(4, emp.getEmail());
                ps.setString(5, emp.getGender());
                ps.setString(6, emp.getCountry());
                ps.setInt(7, emp.getMinsal());
                ps.setString(8, emp.getJobType());
                ps.setString(9, emp.getSkills());
                ps.setInt(10, emp.getAge());  
                ps.setString(11, emp.getWorkplaces());
                ps.setString(12, emp.getQualification());
                ps.setInt(13, emp.getExperience());
                ps.setString(14, emp.getTechnicalSkills());
                
                ps.executeUpdate();  
                
        } catch (Exception e) { 
        	System.out.println(e);
        }  
       
    }  
	 public Employee getEmployee(String name)
	    {
	    	Employee  empdata = new Employee();
	    	PreparedStatement ps = null;
			Connection con = null;
			try {
				  con = DatabaseConnector.getInstance().getConnection();  
	              ps = con.prepareStatement("select Age,Qualification,Experience,JobType,Minsal,WorkPlaces,Country,Skills,TechnicalSkills from employeedetails where Name=?");
	              ps.setString(1, name);
	          	  ResultSet rs = ps.executeQuery();
	          	  rs.next();
	          	  empdata.setAge(rs.getInt(1));
	          	  empdata.setQualification(rs.getString(2));
	          	  empdata.setExperience(rs.getInt(3));
	          	  empdata.setJobType(rs.getString(4));
	          	  empdata.setMinsal(rs.getInt(5));
	          	  empdata.setWorkplaces(rs.getString(6));
	          	  empdata.setCountry(rs.getString(7));
	          	  empdata.setSkills(rs.getString(8));
	          	  empdata.setTechnicalSkills(rs.getString(9));
	          	  return empdata;
			} catch(Exception e)
			{
				System.out.println(e);
			}
			return null;
	    }
}
