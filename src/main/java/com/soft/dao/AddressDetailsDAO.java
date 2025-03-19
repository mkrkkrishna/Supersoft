package com.soft.dao;

import com.soft.model.AddressDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AddressDetailsDAO extends JpaRepository<AddressDetails,Integer> {
	

	   
}
