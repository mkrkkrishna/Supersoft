package com.soft.service;


import com.soft.model.PersonalDetails;



public interface PersonalDetailsService {
	public void saveOrUpdatePersonalDetails(PersonalDetails personalDetails);
	public PersonalDetails getPersonalDetailsByMailId(String mailId);
	public PersonalDetails getEmployeeById(Integer employeeId);
}
