package com.soft.model;


import jakarta.persistence.*;
import lombok.Data;

import java.util.Arrays;

@Data
@Entity
@Table(name="PERSONAL_DETAILS")
public class PersonalDetails {

	@Id
	@GeneratedValue
	@Column(name="Employee_Id")
	private Integer employeeId=-1;

	@Column(name = "FirstName")
	private String firstName;

	@Column(name = "LastName")
	private String lastName;

	@Column(name="FatherName")
	private String fatherName;

	@Column(name="EmailID",unique=true)
	private String emailId;

	@Column(name="Password")
	private String password;

	@Column(name="Sex")
	private String sex;

	@Column(name="Authority")
	private String authority;

	@Column(name="Enabled")
	private boolean enabled;

	@Lob
	@Column(name = "Photograph")
	private byte[] photograph;

	@Lob
	@Column(name = "Resume")
	private byte[] resume;

	@OneToOne(cascade = {CascadeType.ALL})
	@JoinTable(name="PersonalDetails_AddressDetails",joinColumns=@JoinColumn(name="Employee_Id"),inverseJoinColumns=@JoinColumn(name="Serial_Id"))
	private AddressDetails addressDetails=new  AddressDetails();

	@OneToOne(cascade = {CascadeType.ALL})
	@JoinTable(name="PersonalDetails_WorkExperienceDetails",joinColumns=@JoinColumn(name="Employee_Id"),inverseJoinColumns=@JoinColumn(name="Serial_Id"))
	private WorkExperienceDetails workExperienceDetails=new  WorkExperienceDetails();

	@OneToOne(cascade = {CascadeType.ALL})
	@JoinTable(name="PersonalDetails_EducationDetails",joinColumns=@JoinColumn(name="Employee_Id"),inverseJoinColumns=@JoinColumn(name="Serial_Id"))
	private EducationDetails educationDetails=new  EducationDetails();


	public PersonalDetails() {
	}

	public PersonalDetails(Integer employeeId, String firstName, String lastName, String fatherName, String emailId, String password, String sex, String authority, boolean enabled, byte[] photograph, byte[] resume, AddressDetails addressDetails, WorkExperienceDetails workExperienceDetails, EducationDetails educationDetails) {
		this.employeeId = employeeId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.fatherName = fatherName;
		this.emailId = emailId;
		this.password = password;
		this.sex = sex;
		this.authority = authority;
		this.enabled = enabled;
		this.photograph = photograph;
		this.resume = resume;
		this.addressDetails = addressDetails;
		this.workExperienceDetails = workExperienceDetails;
		this.educationDetails = educationDetails;
	}

	public Integer getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public byte[] getPhotograph() {
		return photograph;
	}

	public void setPhotograph(byte[] photograph) {
		this.photograph = photograph;
	}

	public byte[] getResume() {
		return resume;
	}

	public void setResume(byte[] resume) {
		this.resume = resume;
	}

	public AddressDetails getAddressDetails() {
		return addressDetails;
	}

	public void setAddressDetails(AddressDetails addressDetails) {
		this.addressDetails = addressDetails;
	}

	public WorkExperienceDetails getWorkExperienceDetails() {
		return workExperienceDetails;
	}

	public void setWorkExperienceDetails(WorkExperienceDetails workExperienceDetails) {
		this.workExperienceDetails = workExperienceDetails;
	}

	public EducationDetails getEducationDetails() {
		return educationDetails;
	}

	public void setEducationDetails(EducationDetails educationDetails) {
		this.educationDetails = educationDetails;
	}

	@Override
	public String toString() {
		return "PersonalDetails{" +
				"employeeId=" + employeeId +
				", firstName='" + firstName + '\'' +
				", lastName='" + lastName + '\'' +
				", fatherName='" + fatherName + '\'' +
				", emailId='" + emailId + '\'' +
				", password='" + password + '\'' +
				", sex='" + sex + '\'' +
				", authority='" + authority + '\'' +
				", enabled=" + enabled +
				", photograph=" + Arrays.toString(photograph) +
				", resume=" + Arrays.toString(resume) +
				", addressDetails=" + addressDetails +
				", workExperienceDetails=" + workExperienceDetails +
				", educationDetails=" + educationDetails +
				'}';
	}
}
