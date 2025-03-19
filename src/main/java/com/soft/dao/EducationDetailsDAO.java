package com.soft.dao;


import com.soft.model.EducationDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EducationDetailsDAO extends JpaRepository<EducationDetails, Integer> {
}
