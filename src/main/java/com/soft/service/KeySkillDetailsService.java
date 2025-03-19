package com.soft.service;

import java.util.List;

import com.soft.model.KeySkillDetails;
import org.springframework.stereotype.Service;

@Service
public interface KeySkillDetailsService {
	public void saveOrUpdateKeySkillDetails(KeySkillDetails keySkillDetails);
	public List<KeySkillDetails> getKeySkillsDetailsByEmailId(String employeeEmailId);
}
