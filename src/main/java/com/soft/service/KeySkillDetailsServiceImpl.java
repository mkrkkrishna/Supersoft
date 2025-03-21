package com.soft.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
//import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.soft.dao.KeySkillDetailsDAO;
import com.soft.model.KeySkillDetails;

@Service
public class KeySkillDetailsServiceImpl implements KeySkillDetailsService{
	
	@Autowired
    private KeySkillDetailsDAO keySkillDetailsDAO;
	
//	@Transactional
	@Override
	public void saveOrUpdateKeySkillDetails(KeySkillDetails keySkillDetails) {
		keySkillDetailsDAO.save(keySkillDetails);
	}

//	@Transactional
	@Override
	public List<KeySkillDetails> getKeySkillsDetailsByEmailId(String employeeEmailId) {
		//return keySkillDetailsDAO.findByEmployeeEmailId(employeeEmailId);
        return new ArrayList<>();
	}
}
