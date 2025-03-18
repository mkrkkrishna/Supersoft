package com.soft.dao;

import com.soft.model.PersonalDetails;

public interface PersonalDetailsDAO {
	public void savePersonalDetails(PersonalDetails personalDetails);
	public PersonalDetails getPersonalDetailsByMailId(String mailId);
	public PersonalDetails getEmployeeById(Integer employeeId);
	public void updatePersonalDetails(PersonalDetails personalDetails);
	
	
}
