package com.empeligibility.org.model;

public class EligibilityCondition{
	private int sno;
	private String field;
	private String operator;
	private String value;
	private int fk_sno;
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public int getFk_sno() {
		return fk_sno;
	}
	public void setFk_sno(int fk_sno) {
		this.fk_sno = fk_sno;
	}
}
