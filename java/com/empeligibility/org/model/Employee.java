package com.empeligibility.org.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.empeligibility.org.db.DatabaseConnector;

public class Employee {
	private int enrollmentno;
	private String name;
	private String phoneno;
	private String email;
	private String gender;
	private String country;
	private int minsal;
	private String jobtype;
	private String skills;
	private int age;
	private String workplaces;
	private String qualification;
	private int experience;
	private String technicalskills;
	
	public int getEnrollmentno() {
		return enrollmentno;
	}
	public void setEnrollmentno(int enrollmentno) {
		this.enrollmentno = enrollmentno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getMinsal() {
		return minsal;
	}
	public void setMinsal(int minsal) {
		this.minsal = minsal;
	}
	public String getJobType() {
		return jobtype;
	}
	public void setJobType(String jobtype) {
		this.jobtype = jobtype;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getWorkplaces() {
		return workplaces;
	}
	public void setWorkplaces(String workplaces) {
		this.workplaces = workplaces;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	public String getTechnicalSkills() {
		return technicalskills;
	}
	public void setTechnicalSkills(String technicalskills) {
		this.technicalskills = technicalskills;
	}
	

	
}
