package com.soft.service;




//import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;


import com.soft.dao.AddressDetailsDAO;
import com.soft.model.AddressDetails;

public class AddressDetailsServiceImpl implements AddressDetailsService{
	
	@Autowired
    private AddressDetailsDAO addressDetailsDAO;
	
//	@Transactional
	@Override
	public void saveAddressDetails(AddressDetails addressDetails)
	{
		addressDetailsDAO.save(addressDetails);
	}
	   
}
