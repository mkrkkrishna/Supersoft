package com.soft.dao;




import java.util.List;



import com.soft.model.Comments;
import com.soft.model.QuestionPutup;

public interface BlogDAO {
	
	public void saveQuestion(QuestionPutup questionPutup);
	public String searchQuestionViaQuestion(String aq);
	public List<QuestionPutup> listTitle();
	public QuestionPutup getQuestionById(Integer questionId);
	public void saveComment(Comments comments);
	public List<Comments> listComment(Integer questionId);
	public void updateLikes(Integer questionId);
	public void updateDislikes(Integer questionId);
	public List<QuestionPutup> getMyQuestionByEmployeeId(Integer employeeId);
	public Integer getIdByMailId(String emailId);
	public QuestionPutup getBloggerOfWeek(String fromDate,String currentDate);
	public QuestionPutup getBloggerOfMonth(String recievedMonth);
	public QuestionPutup getBloggerOfYear(String recievedYear);
	
}