package com.soft.model;


import jakarta.persistence.*;

@Entity
@Table(name="QUESTION_PUTUP")
public class QuestionPutup {

    @Id
    @GeneratedValue
    @Column(name="Question_Id")
    private Integer questionId;

    @Column(name="Title",unique=true)
    private String title;

    @Column(name="TEXT_BEFORE_CODE",length = 2000)
    private String textBeforeCode;

    @Column(name="Question_Detail",length = 2000)
    private String questionDetail;

    @Column(name="TEXT_AFTER_CODE",length = 2000)
    private String textAfterCode;

    @Column(name="Date_of_question_putup")
    private String doq;

    @Column(name="Questin_Tag")
    private String questionTag;

    @Column(name="Employee_Id")
    private Integer employeeId;

    @Column(name="Likes")
    private Integer likes=0;

    @Column(name="Dislikes")
    private Integer dislikes=0;

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTextBeforeCode() {
        return textBeforeCode;
    }

    public void setTextBeforeCode(String textBeforeCode) {
        this.textBeforeCode = textBeforeCode;
    }

    public String getQuestionDetail() {
        return questionDetail;
    }

    public void setQuestionDetail(String questionDetail) {
        this.questionDetail = questionDetail;
    }

    public String getTextAfterCode() {
        return textAfterCode;
    }

    public void setTextAfterCode(String textAfterCode) {
        this.textAfterCode = textAfterCode;
    }

    public String getDoq() {
        return doq;
    }

    public void setDoq(String doq) {
        this.doq = doq;
    }

    public String getQuestionTag() {
        return questionTag;
    }

    public void setQuestionTag(String questionTag) {
        this.questionTag = questionTag;
    }

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public Integer getLikes() {
        return likes;
    }

    public void setLikes(Integer likes) {
        this.likes = likes;
    }

    public Integer getDislikes() {
        return dislikes;
    }

    public void setDislikes(Integer dislikes) {
        this.dislikes = dislikes;
    }
}