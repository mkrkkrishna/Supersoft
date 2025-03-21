package com.soft.service;

//import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.soft.dao.WorkExperienceDetailsDAO;
import com.soft.model.WorkExperienceDetails;
import org.springframework.stereotype.Service;

@Service
public class WorkExperienceDetailsServiceImpl implements WorkExperienceDetailsService{
	
	@Autowired
    private WorkExperienceDetailsDAO workExperienceDetailsDAO;
	
//	@Transactional
	@Override
	public void saveWorkExperienceDetails(WorkExperienceDetails workExperienceDetails)
	{
		workExperienceDetailsDAO.save(workExperienceDetails);
	}
}
