package com.soft.service;


import com.soft.model.EducationDetails;
import org.springframework.stereotype.Service;

@Service
public interface EducationDetailsService {
	public void saveEducationDetails(EducationDetails educationDetails);
}
