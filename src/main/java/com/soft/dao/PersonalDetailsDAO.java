package com.soft.dao;

import com.soft.model.PersonalDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonalDetailsDAO extends JpaRepository<PersonalDetails,Integer> {
}
