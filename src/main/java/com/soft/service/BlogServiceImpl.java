package com.soft.service;

import java.util.ArrayList;
import java.util.List;
//import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import com.soft.dao.BlogDAO;
import com.soft.model.Comments;
import com.soft.model.QuestionPutup;
import org.springframework.stereotype.Service;


@Service
public class BlogServiceImpl implements BlogService {

	
	@Autowired
	private BlogDAO blogDAO;
	
//	@Transactional
	@Override
	public void saveQuestion(QuestionPutup questionPutup) {
		blogDAO.save(questionPutup);
	}

//	@Transactional
	@Override
	public String searchQuestionViaQuestion(String aq) {
		//return blogDAO.searchQuestionViaQuestion(aq);
		return null;
	}

//	@Transactional
	@Override
	public List<QuestionPutup> listTitle() {
		return blogDAO.findAll();
	}

//	@Transactional
	@Override
	public QuestionPutup getQuestionById(Integer questionId) {
		return blogDAO.findById(questionId).orElse(new QuestionPutup());
	}
	
//	@Transactional
	@Override
	public void saveComment(Comments comments)
	{
		//blogDAO.save(comments);
	}

//	@Transactional
	@Override
	public List<Comments> listComment(Integer questionId) {
		//return blogDAO.listComment(questionId);
		return new ArrayList<>();
	}

//	@Transactional
	@Override
	public void updateLikes(Integer questionId) {
		//blogDAO.updateLikes(questionId);
	}

//	@Transactional
	@Override
	public void updateDislikes(Integer questionId) {
		//blogDAO.updateDislikes(questionId);
	}

//	@Transactional
	@Override
	public List<QuestionPutup> getMyQuestionByEmployeeId(Integer employeeId) {
		//return blogDAO.getMyQuestionByEmployeeId(employeeId);
		return new ArrayList<>();
	}

//	@Transactional
	@Override
	public Integer getIdByMailId(String emailId) {
		//return blogDAO.getIdByMailId(emailId);
		return 0;
	}

//	@Transactional
	@Override
	public QuestionPutup getBloggerOfMonth(String recievedMonth) {
		//return blogDAO.getBloggerOfMonth(recievedMonth);
		return new QuestionPutup();
	}

//	@Transactional
	@Override
	public QuestionPutup getBloggerOfYear(String recievedYear) {
		//return blogDAO.getBloggerOfYear(recievedYear);
		return new QuestionPutup();
	}

//	@Transactional
	@Override
	public QuestionPutup getBloggerOfWeek(String fromDate, String currentDate) {
//		return blogDAO.getBloggerOfWeek(fromDate,currentDate);
		return new QuestionPutup();

	}
}
