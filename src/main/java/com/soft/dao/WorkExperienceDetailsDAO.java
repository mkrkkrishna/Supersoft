package com.soft.dao;

import com.soft.model.WorkExperienceDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WorkExperienceDetailsDAO extends JpaRepository<WorkExperienceDetails,Integer> {
}
