package com.soft.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;


@Entity
@Table(name="KEY_SKILL_DETAILS")
@DynamicUpdate

public class KeySkillDetails {
	
	@Id
	@GeneratedValue
	@Column(name="Serial_Id")
	private Integer serialId=1;

	@Column(name="Key_Skill",unique=true)
	private String keySkill;
	
	@Column(name="Years_On_Key_Skill")
	private String skillYear;
	
	@Column(name="Employee_Email_ID")
	private String employeeEmailId;

	public Integer getSerialId() {
		return serialId;
	}

	public void setSerialId(Integer serialId) {
		this.serialId = serialId;
	}

	public String getKeySkill() {
		return keySkill;
	}

	public void setKeySkill(String keySkill) {
		this.keySkill = keySkill;
	}

	public String getSkillYear() {
		return skillYear;
	}

	public void setSkillYear(String skillYear) {
		this.skillYear = skillYear;
	}

	public String getEmployeeEmailId() {
		return employeeEmailId;
	}

	public void setEmployeeEmailId(String employeeEmailId) {
		this.employeeEmailId = employeeEmailId;
	}

	
	
	
	
}
