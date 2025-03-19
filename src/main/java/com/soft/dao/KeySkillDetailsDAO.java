package com.soft.dao;

import java.util.List;

import com.soft.model.KeySkillDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KeySkillDetailsDAO extends JpaRepository<KeySkillDetails,Integer> {
}
