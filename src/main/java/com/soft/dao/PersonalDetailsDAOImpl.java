package com.soft.dao;
/*

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.soft.model.PersonalDetails;
import com.soft.service.PersonalDetailsService;



public class PersonalDetailsDAOImpl implements PersonalDetailsDAO{
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Autowired
	private PersonalDetailsService personalDetailsService;

	@Override
	public void savePersonalDetails(PersonalDetails personalDetails) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(personalDetails);
	}
	
	@Override
	public PersonalDetails getEmployeeById(Integer employeeId)
	{
		try
		{
			return (PersonalDetails) sessionFactory.getCurrentSession().get(PersonalDetails.class, employeeId);
		}
		catch(Exception e)
		{
			PersonalDetails personalDetails=new PersonalDetails();
			personalDetails.setFullName("nothing");
			return personalDetails;
		}
	}

	@Override
	public PersonalDetails getPersonalDetailsByMailId(String mailId) {
		// TODO Auto-generated method stub
		try{
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(PersonalDetails.class);
			criteria.add(Restrictions.eq("emailId", mailId));
			PersonalDetails personalDetails = (PersonalDetails) criteria.uniqueResult();
			Integer employeeId=personalDetails.getEmployeeId();
			PersonalDetails personalDetailsMain=personalDetailsService.getEmployeeById(employeeId);
			return personalDetailsMain;

		}
		catch(Exception e)
		{
			return null;
		}
	}

	@Override
	public void updatePersonalDetails(PersonalDetails personalDetails) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().merge(personalDetails);
	}
		
}
*/
