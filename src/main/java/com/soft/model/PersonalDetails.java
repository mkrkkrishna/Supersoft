package com.soft.model;




/*
@Entity
@Table(name="PERSONAL_DETAILS")
@DynamicUpdate

public class PersonalDetails {
	
	@Id
	@GeneratedValue
	@Column(name="Employee_Id")
	private Integer employeeId=-1;
		
	@Column(name = "FullName")
	private String fullName;

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

	public Integer getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
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

}*/
