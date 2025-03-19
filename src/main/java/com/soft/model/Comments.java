package com.soft.model;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="COMMENTS")
public class Comments {

	@Id
	@GeneratedValue
	@Column(name="COMMENT_ID")
	Integer commentId;

	@Column(name="COMMENT_CONTENT",length = 2000)
	String commentContent;
	
	@Column(name="EMPLOYEE_NAME")
	String employeeName;
	
	@Column(name="QUESTION_ID")
	Integer questionId;
	
	@Column(name="COMMENT_DATE")
	String commentDate;

    public Comments() {
    }

    public Comments(Integer commentId, String commentContent, String employeeName, Integer questionId, String commentDate) {
        this.commentId = commentId;
        this.commentContent = commentContent;
        this.employeeName = employeeName;
        this.questionId = questionId;
        this.commentDate = commentDate;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public String getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(String commentDate) {
        this.commentDate = commentDate;
    }

    @Override
    public String toString() {
        return "Comments{" +
                "commentId=" + commentId +
                ", commentContent='" + commentContent + '\'' +
                ", employeeName='" + employeeName + '\'' +
                ", questionId=" + questionId +
                ", commentDate='" + commentDate + '\'' +
                '}';
    }
}
