package com.soft.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="EDUCATIONAL_DETAILS")
public class EducationDetails {
	
	@Id
	@GeneratedValue
	@Column(name="Serial_Id")
	private Integer serialId;
	
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

	public EducationDetails() {
	}

	public EducationDetails(Integer serialId, String qualificationLevel, String educationSpecialization, String institute_Name, String yearOfPassout, String courseType) {
		this.serialId = serialId;
		this.qualificationLevel = qualificationLevel;
		this.educationSpecialization = educationSpecialization;
		this.institute_Name = institute_Name;
		this.yearOfPassout = yearOfPassout;
		this.courseType = courseType;
	}

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

	@Override
	public String toString() {
		return "EducationDetails{" +
				"serialId=" + serialId +
				", qualificationLevel='" + qualificationLevel + '\'' +
				", educationSpecialization='" + educationSpecialization + '\'' +
				", institute_Name='" + institute_Name + '\'' +
				", yearOfPassout='" + yearOfPassout + '\'' +
				", courseType='" + courseType + '\'' +
				'}';
	}
}
