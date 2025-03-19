package com.soft.dao;

/*import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;

import org.hibernate.criterion.Order;

import org.hibernate.criterion.Restrictions;

import org.springframework.beans.factory.annotation.Autowired;

import com.soft.model.Comments;
import com.soft.model.PersonalDetails;
import com.soft.model.QuestionPutup;
import com.soft.service.BlogService;

public class BlogDAOImpl implements BlogDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private BlogService blogService;
	
	@Override
	public void saveQuestion(QuestionPutup questionPutup) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().merge(questionPutup);
	}

	@Override
	public String searchQuestionViaQuestion(String aq) {
		// TODO Auto-generated method stub
		try{
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(QuestionPutup.class);
			criteria.add(Restrictions.eq("title", aq));
			QuestionPutup questionPutup = (QuestionPutup) criteria.uniqueResult();
			return questionPutup.getTitle();

		}
		catch(Exception e)
		{
			return null;
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<QuestionPutup> listTitle() {
		// TODO Auto-generated method stub
		
		Criteria crit = sessionFactory.getCurrentSession().createCriteria(QuestionPutup.class);	
		crit.addOrder(Order.desc("title"));
		*//*Projection p1=Projections.projectionList();
		((ProjectionList) p1).add(Projections.property("title"));
		crit.setProjection(p1);*//*
		return crit.list();
	}

	@Override
	public QuestionPutup getQuestionById(Integer questionId) {
		// TODO Auto-generated method stub
		return (QuestionPutup) sessionFactory.getCurrentSession().get(QuestionPutup.class,questionId);
	}

	@Override
	public void saveComment(Comments comments) {
		// TODO Auto-generated method stub
		
		sessionFactory.getCurrentSession().save(comments);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Comments> listComment(Integer questionId) {
		// TODO Auto-generated method stub
		try{
			Criteria crit = sessionFactory.getCurrentSession().createCriteria(Comments.class);	
			crit.add(Restrictions.eq("questionId",questionId));
			return crit.list();
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
			return null;
		}
 
		
	}
	
	@Override
    public void updateLikes(Integer questionId) {
        QuestionPutup questionPutup=blogService.getQuestionById(questionId);
        questionPutup.setLikes(questionPutup.getLikes()+1);
        sessionFactory.getCurrentSession().merge(questionPutup);
    }
	
	@Override
    public void updateDislikes(Integer questionId) {
        QuestionPutup questionPutup=blogService.getQuestionById(questionId);
        questionPutup.setDislikes(questionPutup.getDislikes()+1);
        sessionFactory.getCurrentSession().merge(questionPutup);
    }

	@SuppressWarnings("unchecked")
	@Override
	public List<QuestionPutup> getMyQuestionByEmployeeId(Integer employeeId) {
		// TODO Auto-generated method stub
		try{
			Criteria crit = sessionFactory.getCurrentSession().createCriteria(QuestionPutup.class);	
			crit.add(Restrictions.eq("employeeId",employeeId));
			return crit.list();
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
			return null;
		}
	}

	@Override
	public Integer getIdByMailId(String emailId) {
		// TODO Auto-generated method stub
		try{
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(PersonalDetails.class);
			criteria.add(Restrictions.eq("emailId", emailId));
			PersonalDetails personalDetails = (PersonalDetails) criteria.uniqueResult();
			return personalDetails.getEmployeeId();

		}
		catch(Exception e)
		{
			return -1;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public QuestionPutup getBloggerOfWeek(String fromDate, String currentDate) {
		// TODO Auto-generated method stub
		try{
			System.out.println("bloggger week1");
			
			SQLQuery query =sessionFactory.getCurrentSession().createSQLQuery("Select * from QUESTION_PUTUP where Date_of_question_putup between '"+fromDate+"' and '"+currentDate+"' and Likes=(select max(Likes) from QUESTION_PUTUP)");
			query.addEntity(QuestionPutup.class);
			List<QuestionPutup> questionPutupList = query.list();
			
			QuestionPutup questionPutup=questionPutupList.get(0);
			System.out.println("blogger week2");
			System.out.println("employee id id weekDAO: "+questionPutup.getEmployeeId());
			return questionPutup;

		}
		catch(Exception e)
		{
			System.out.println("in CATCH blogger month");
			return new QuestionPutup();
		}
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public QuestionPutup getBloggerOfMonth(String recievedMonth) {
		// TODO Auto-generated method stub
		try{
			System.out.println("bloggger month1");
			
			SQLQuery query =sessionFactory.getCurrentSession().createSQLQuery("select * FROM QUESTION_PUTUP WHERE Date_of_question_putup LIKE '___"+recievedMonth+"%' and Likes=(select max(Likes) from QUESTION_PUTUP)");
			query.addEntity(QuestionPutup.class);
			List<QuestionPutup> questionPutupList = query.list();
			
			QuestionPutup questionPutup=questionPutupList.get(0);
			System.out.println("blogger month2");
			System.out.println("employee id id month DAO: "+questionPutup.getEmployeeId());
			return questionPutup;

		}
		catch(Exception e)
		{
			System.out.println("in CATCH blogger month");
			return new QuestionPutup();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public QuestionPutup getBloggerOfYear(String recievedYear) {
		// TODO Auto-generated method stub
		try{
			SQLQuery query =sessionFactory.getCurrentSession().createSQLQuery("select * FROM QUESTION_PUTUP WHERE Date_of_question_putup LIKE '%"+recievedYear+"' and Likes=(select max(Likes) from QUESTION_PUTUP)");
			query.addEntity(QuestionPutup.class);
			List<QuestionPutup> questionPutupList = query.list();
			QuestionPutup questionPutup=questionPutupList.get(0);
			return questionPutup;
		}
		catch(Exception e)
		{
			System.out.println("into DAO blog CATCH");
			return new QuestionPutup();
		}
	}

	

}*/
