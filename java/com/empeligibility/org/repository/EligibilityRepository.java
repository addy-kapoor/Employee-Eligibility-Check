package com.empeligibility.org.repository;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.empeligibility.org.db.DatabaseConnector;
import com.empeligibility.org.model.EligibilityCondition;

public class EligibilityRepository {

	public ArrayList<EligibilityCondition> getCriteria(String jobpost)
	{
		ArrayList<EligibilityCondition> eligibilityConditions = new ArrayList<EligibilityCondition>();
		PreparedStatement ps = null;
		Connection con = null;
		try {
			 con = DatabaseConnector.getInstance().getConnection();
			 ps = con.prepareStatement("select sno from jobpost where jobpost=?");
			 ps.setString(1, jobpost);
			 ResultSet rs = ps.executeQuery();
			 rs.next();
			 int sno = rs.getInt(1);
			 PreparedStatement ps2 = con.prepareStatement("select sno,field,operator,value from eligibility where fk_sno=?");
			 ps2.setInt(1, sno);
			 ResultSet rs2 = ps2.executeQuery(); 
			 while(rs2.next())
			 {
				 EligibilityCondition elibiglityCondition = new EligibilityCondition();
				 elibiglityCondition.setSno(rs2.getInt(1));
				 elibiglityCondition.setField(rs2.getString(2));
				 elibiglityCondition.setOperator(rs2.getString(3));
				 elibiglityCondition.setValue(rs2.getString(4));
				 eligibilityConditions.add(elibiglityCondition);
			 }
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		 return (eligibilityConditions);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
