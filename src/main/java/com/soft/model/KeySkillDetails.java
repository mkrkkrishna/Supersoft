package com.soft.model;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="KEY_SKILL_DETAILS")
public class KeySkillDetails {
	
	@Id
	@GeneratedValue
	@Column(name="Serial_Id")
	private Integer serialId;

	@Column(name="Key_Skill",unique=true)
	private String keySkill;
	
	@Column(name="Years_On_Key_Skill")
	private String skillYear;
	
	@Column(name="Employee_Email_ID")
	private String employeeEmailId;

    public KeySkillDetails() {
    }

    public KeySkillDetails(Integer serialId, String keySkill, String skillYear, String employeeEmailId) {
        this.serialId = serialId;
        this.keySkill = keySkill;
        this.skillYear = skillYear;
        this.employeeEmailId = employeeEmailId;
    }

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

    @Override
    public String toString() {
        return "KeySkillDetails{" +
                "serialId=" + serialId +
                ", keySkill='" + keySkill + '\'' +
                ", skillYear='" + skillYear + '\'' +
                ", employeeEmailId='" + employeeEmailId + '\'' +
                '}';
    }
}
