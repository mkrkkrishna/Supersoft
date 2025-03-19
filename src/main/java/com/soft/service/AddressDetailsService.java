package com.soft.service;

import com.soft.model.AddressDetails;
import org.springframework.stereotype.Service;

@Service
public interface AddressDetailsService {
	public void saveAddressDetails(AddressDetails addressDetails);
}
