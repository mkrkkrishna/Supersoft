package com.soft.service;


import com.soft.model.PersonalDetails;

public interface PersonalDetailsService {
	public void savePersonalDetails(PersonalDetails personalDetails);
	public PersonalDetails getPersonalDetailsByMailId(String mailId);
	public PersonalDetails getEmployeeById(Integer employeeId);
	public void updatePersonalDetails(PersonalDetails personalDetails);
	
	
}
