package com.soft.dao;

/*import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import com.soft.model.KeySkillDetails;

public class KeySkillDetailsDAOImpl implements KeySkillDetailsDAO {
	@Autowired
    private SessionFactory sessionFactory;

	@Override
	public void saveKeySkillDetails(KeySkillDetails keySkillDetails) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(keySkillDetails);
	}
	
	@Override
	public void updateKeySkillDetails(KeySkillDetails keySkillDetails) {
		// TODO Auto-generated method stub
		//code in java file
		sessionFactory.getCurrentSession().update(keySkillDetails);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<KeySkillDetails> getKeySkillDetailsByEmailId(String employeeEmailId) {
		// TODO Auto-generated method stub
		try{
			Criteria crit = sessionFactory.getCurrentSession().createCriteria(KeySkillDetails.class);	
			crit.add(Restrictions.eq("employeeEmailId",employeeEmailId));
			return crit.list();
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
			return null;
		}
	}

	
}*/
