package com.soft.service;

//import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.soft.dao.PersonalDetailsDAO;
import com.soft.model.PersonalDetails;
import org.springframework.stereotype.Service;

@Service
public class PersonalDetailsServiceImpl implements PersonalDetailsService{
	
	@Autowired
    private PersonalDetailsDAO personalDetailsDAO;
	
//	@Transactional
	@Override
	public void saveOrUpdatePersonalDetails(PersonalDetails personalDetails)
	{
		personalDetailsDAO.save(personalDetails);
	}

//	@Transactional
	@Override
	public PersonalDetails getPersonalDetailsByMailId(String mailId) {
		//return personalDetailsDAO.findByEmailId(mailId);
        return new PersonalDetails();
	}

//	@Transactional
	@Override
	public PersonalDetails getEmployeeById(Integer employeeId) {
		return personalDetailsDAO.findById(employeeId).orElse(new PersonalDetails());
	}
}
