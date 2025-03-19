package com.soft.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;

@Entity
@Table(name="EDUCATIONAL_DETAILS")
@DynamicUpdate

public class EducationDetails {
	
	@Id
	@GeneratedValue
	@Column(name="Serial_Id")
	private Integer serialId=1;
	
	@Column(name="Qualification_Level")
    private String qualificationLevel;
	
	@Column(name="Education_Specialization")
    private String educationSpecialization;
	
	@Column(name="Institute_Name")
    private String institute_Name;
	
	@Column(name="Year_Of_Passout")
    private String yearOfPassout;
	
	@Column(name="Course_Type")
    private String courseType;
	
	

	public Integer getSerialId() {
		return serialId;
	}

	public void setSerialId(Integer serialId) {
		this.serialId = serialId;
	}

	public String getQualificationLevel() {
		return qualificationLevel;
	}

	public void setQualificationLevel(String qualificationLevel) {
		this.qualificationLevel = qualificationLevel;
	}

	public String getEducationSpecialization() {
		return educationSpecialization;
	}

	public void setEducationSpecialization(String educationSpecialization) {
		this.educationSpecialization = educationSpecialization;
	}

	public String getInstitute_Name() {
		return institute_Name;
	}

	public void setInstitute_Name(String institute_Name) {
		this.institute_Name = institute_Name;
	}

	public String getYearOfPassout() {
		return yearOfPassout;
	}

	public void setYearOfPassout(String yearOfPassout) {
		this.yearOfPassout = yearOfPassout;
	}

	public String getCourseType() {
		return courseType;
	}

	public void setCourseType(String courseType) {
		this.courseType = courseType;
	}
}