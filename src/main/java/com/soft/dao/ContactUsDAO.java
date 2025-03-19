package com.soft.dao;

import java.util.List;

import com.soft.model.ContactUs;




public interface ContactUsDAO {
	public void saveContactUs(ContactUs contactUs);
	public List<ContactUs> listContactUs();
	public ContactUs getContactUsById(Integer contactId);
		
}
