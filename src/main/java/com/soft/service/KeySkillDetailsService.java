package com.soft.service;

import java.util.List;

import com.soft.model.KeySkillDetails;

public interface KeySkillDetailsService {
	public void saveKeySkillDetails(KeySkillDetails keySkillDetails);
	public void updateKeySkillDetails(KeySkillDetails keySkillDetails);
	public List<KeySkillDetails> getKeySkillsDetailsByEmailId(String employeeEmailId);
}
