package com.soft.dao;

/*
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;

import com.soft.model.ContactUs;





public class ContactUsDAOImpl implements ContactUsDAO{
	
	@Autowired
    private SessionFactory sessionFactory;
	
	

	@Override
	public void saveContactUs(ContactUs contactUs) {
		sessionFactory.getCurrentSession().save(contactUs);
	}

	@Override
	public List<ContactUs> listContactUs() {
		Criteria crit = sessionFactory.getCurrentSession().createCriteria(ContactUs.class);	
		return crit.list();
	}
	
	@Override
	public ContactUs getContactUsById(Integer contactId) {
		return (ContactUs) sessionFactory.getCurrentSession().get(ContactUs.class,contactId);
	}
}

*/