package com.soft.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;

@Entity
@Table(name="WORK_EXPERIENCE_DETAILS")
@DynamicUpdate

public class WorkExperienceDetails {
	
	@Id
	@GeneratedValue
	@Column(name="Serial_Id")
	private Integer serialId=1;

	@Column(name = "Job_Title")
	private String jobTitle;
	
	@Column(name = "Company_Name")
	private String companyName;
	
	@Column(name = "Industry_Of_The_Company")
	private String industryOfCompany;
	
	@Column(name = "Functional_Area")
	private String functionalArea;
	
	@Column(name = "Duration")
	private String duration;
	
	

	public Integer getSerialId() {
		return serialId;
	}

	public void setSerialId(Integer serialId) {
		this.serialId = serialId;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getIndustryOfCompany() {
		return industryOfCompany;
	}

	public void setIndustryOfCompany(String industryOfCompany) {
		this.industryOfCompany = industryOfCompany;
	}

	public String getFunctionalArea() {
		return functionalArea;
	}

	public void setFunctionalArea(String functionalArea) {
		this.functionalArea = functionalArea;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}
}