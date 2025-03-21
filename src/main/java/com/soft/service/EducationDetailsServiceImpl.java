package com.soft.service;




//import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.soft.dao.EducationDetailsDAO;
import com.soft.model.EducationDetails;
import org.springframework.stereotype.Service;

@Service
public class EducationDetailsServiceImpl implements EducationDetailsService{
	
	@Autowired
    private EducationDetailsDAO educationDetailsDAO;
	
//	@Transactional
	@Override
	public void saveEducationDetails(EducationDetails educationDetails)
	{
		educationDetailsDAO.save(educationDetails);
	}
}
