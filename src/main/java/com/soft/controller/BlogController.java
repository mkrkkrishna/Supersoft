package com.soft.controller;

import java.security.Principal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import java.util.List;

//import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
//import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.soft.model.*;

//import com.soft.service.BlogService;
//import com.soft.service.KeySkillDetailsService;
//import com.soft.service.PersonalDetailsService;


@Controller
@RequestMapping("/blog")
public class BlogController {

	/*@Autowired
	private BlogService blogService;
	
	@Autowired
	private PersonalDetailsService personalDetailsService;
	
	@Autowired
	private KeySkillDetailsService keySkillDetailsService;*/
	
	
	
	
	@GetMapping("/blogPage")
	public String showBlog(ModelMap model)
	{
		/*try
		{
			*//*List<QuestionPutup> listQuestionPutup=blogService.listTitle();
			model.addAttribute("listQuestion",listQuestionPutup);*//*
		
			Calendar now = Calendar.getInstance();
			
			*//*blogger of month*//*
			*//*String currentMonth=(now.get(Calendar.MONTH) + 1)+"";
			System.out.println("current month is string :"+currentMonth);
			QuestionPutup questionPutup1=blogService.getBloggerOfMonth(currentMonth);
	    
			System.out.println("employee id : "+questionPutup1.getEmployeeId());
			PersonalDetails personalDetails1=personalDetailsService.getEmployeeById(questionPutup1.getEmployeeId());*//*
			*//*if(personalDetails1!= null)
			{
				model.addAttribute("bloggerOfMonth",personalDetails1);
			}*//*
			
			*//*blogger of Year*//*
			System.out.println("Current Year is : " + now.get(Calendar.YEAR));
			String currentYear=(now.get(Calendar.YEAR))+"";
			System.out.println("calander has changed");
			*//*QuestionPutup questionPutup2=blogService.getBloggerOfYear(currentYear);
			PersonalDetails personalDetails2=personalDetailsService.getEmployeeById(questionPutup2.getEmployeeId());
			if(personalDetails2!=null)
			{
				model.addAttribute("bloggerOfYear",personalDetails2);
			}	*//*
			
			*//*blogger of week*//*
			now.setTime(new Date());
			now.set(Calendar.DAY_OF_MONTH, now.get(Calendar.DAY_OF_MONTH)-6);
			DateFormat dateFormat = new SimpleDateFormat("dd/M/yyyy");
			Date date = now.getTime();
			String fromDate=dateFormat.format(date);
			System.out.println("my date is previous 7 day formate : "+fromDate);
			
			DateFormat dateFormat1 = new SimpleDateFormat("dd/M/yyyy");
			Date date1 = new Date();
			String currentDate=dateFormat1.format(date1);*/
			/*QuestionPutup questionPutup3=blogService.getBloggerOfWeek(fromDate,currentDate);
			PersonalDetails personalDetails3=personalDetailsService.getEmployeeById(questionPutup3.getEmployeeId());
			if(personalDetails3!=null)
			{
				model.addAttribute("bloggerOfWeek",personalDetails3);
			}*/
	    
			return "blog";
		/*}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
			return "blog";
		}*/
					
	}
	
	
	/*@GetMapping("/personalDetailUpdate/{employeeId}")
	public String updatePerAndAdd(@PathVariable("employeeId") Integer employeeId,HttpServletRequest request,@RequestParam CommonsMultipartFile[] fileUpload)throws Exception  
	{
		try
		{
			System.out.println("in personal detail update");
			
			System.out.println("full name:"+request.getParameter("fullName"));
			System.out.println("add1:"+request.getParameter("address1"));
			System.out.println("father name"+request.getParameter("fatherName"));
			System.out.println("email id"+request.getParameter("email"));
			System.out.println("password"+request.getParameter("password"));
			System.out.println("gender"+request.getParameter("gender"));
			//System.out.println("authority"+request.getParameter("authority"));
			//System.out.println("enabled"+request.getParameter("enabled"));
			System.out.println("add2:"+request.getParameter("city"));
			System.out.println("pincode:"+request.getParameter("pincode"));
			System.out.println("state"+request.getParameter("state"));
			System.out.println("country:india");
			System.out.println("sex:"+request.getParameter("gender"));
			
			PersonalDetails personalDetails=personalDetailsService.getEmployeeById(employeeId);
			
			personalDetails.setFullName(request.getParameter("fullName"));
			personalDetails.setFatherName(request.getParameter("fatherName"));
			personalDetails.setEmailId(request.getParameter("email"));
			personalDetails.setPassword(request.getParameter("password"));
			personalDetails.setSex(request.getParameter("gender"));
			
			if (fileUpload != null && fileUpload.length > 0) 
			{
				personalDetails.setPhotograph(fileUpload[0].getBytes());
				personalDetails.setResume(fileUpload[1].getBytes());
			}
			
			AddressDetails addressDetails=new AddressDetails();
			addressDetails.setAddress1(request.getParameter("address1"));
			addressDetails.setAddress2(request.getParameter("address2"));
			addressDetails.setCity(request.getParameter("city"));
			addressDetails.setPincode(request.getParameter("pincode"));
			addressDetails.setState(request.getParameter("state"));
			personalDetails.setAddressDetails(addressDetails);
					
			personalDetailsService.updatePersonalDetails(personalDetails);
		}
		catch(Exception ex)
		{
			System.out.println("in catch "+ex.getStackTrace());
		}
		return "redirect:/blog/myProfile";
	}*/
	
	
	/*@GetMapping("/workExperienceUpdate/{employeeId}")
	public String updateWorkExperience(@PathVariable("employeeId") Integer employeeId,HttpServletRequest request)

	{
		System.out.println("in work experience update");
		System.out.println("experiense in year:"+request.getParameter("experience_in_years"));
		System.out.println("experiense in month:"+request.getParameter("experience_in_months"));
		System.out.println("salary in lakh:"+request.getParameter("salary_in_lakh"));
		System.out.println("salary in thousand:"+request.getParameter("salary_in_thousand"));
		System.out.println("job title"+request.getParameter("job_title"));
		System.out.println("compny name:"+request.getParameter("company_name"));
		System.out.println("industry Of Company:"+request.getParameter("industryOfCompany"));
		System.out.println("functionalArea:"+request.getParameter("functionalArea"));
		System.out.println("start_month:"+request.getParameter("start_month"));
		System.out.println("start_year:"+request.getParameter("start_year"));
		try
		{
			PersonalDetails personalDetails=personalDetailsService.getEmployeeById(employeeId);
			
			WorkExperienceDetails workExperienceDetails=new WorkExperienceDetails();
			workExperienceDetails.setJobTitle(request.getParameter("job_title"));
			workExperienceDetails.setCompanyName(request.getParameter("company_name"));
			workExperienceDetails.setIndustryOfCompany(request.getParameter("industryOfCompany"));
			workExperienceDetails.setFunctionalArea(request.getParameter("functionalArea"));
			
			String duration=request.getParameter("experience_in_years")+"year/s and "+request.getParameter("experience_in_months")+" months";
			workExperienceDetails.setDuration(duration);
			
			personalDetails.setWorkExperienceDetails(workExperienceDetails);
			personalDetailsService.updatePersonalDetails(personalDetails);
		}
		catch(Exception ex)
		{
			System.out.println("in catch "+ex.getStackTrace());
		}
		return "redirect:/blog/myProfile";
	}*/
	
	
	
	
	/*@GetMapping("/educationDetailUpdate/{employeeId}")
	public String updateEducationDetailUpdate(@PathVariable("employeeId") Integer employeeId,HttpServletRequest request)

	{
		System.out.println("in Education Details update");
		System.out.println(""+request.getParameter("education_level"));
		System.out.println(""+request.getParameter("education_specialization"));
		System.out.println(""+request.getParameter("institute_name"));
		System.out.println(""+request.getParameter("year_of_passout"));
		System.out.println(""+request.getParameter("course_type"));
		try
		{
			PersonalDetails personalDetails=personalDetailsService.getEmployeeById(employeeId);
			
			EducationDetails educationDetails=new EducationDetails();
			educationDetails.setQualificationLevel(request.getParameter("education_level"));
			educationDetails.setEducationSpecialization(request.getParameter("education_specialization"));
			educationDetails.setInstitute_Name(request.getParameter("institute_name"));
			educationDetails.setYearOfPassout(request.getParameter("year_of_passout"));
			educationDetails.setCourseType(request.getParameter("course_type"));
			
			personalDetails.setEducationDetails(educationDetails);
			personalDetailsService.updatePersonalDetails(personalDetails);
		}
		catch(Exception ex)
		{
			System.out.println("in catch "+ex.getStackTrace());
		}
		return "redirect:/blog/myProfile";
	}*/
	
	
	
	/*@GetMapping("/keySkillUpdate/{emailId}")
	public String updatekeySkill(@PathVariable("emailId") String emailId,HttpServletRequest request,SessionStatus status) {
			System.out.println("in key skills update");
			System.out.println("prob 1");
			ArrayList<String> arrSkill=new ArrayList<String>();
			System.out.println("prob 2");
			ArrayList<String> arrSkillYear=new ArrayList<String>();
			System.out.println("prob 3");
			String[] skills=request.getParameterValues("skillform-0-txt_skills");
			System.out.println("prob 4");
			String[] skillsYear=request.getParameterValues("skillform-0-level_id");
			System.out.println("prob 5");
			System.out.println("email id for key skills update : "+emailId);
			String employeeEmailId=emailId+".com";
			System.out.println("new email id for key skills update : "+employeeEmailId);
			
			
			for(int i=0;i<skills.length;i++)
			{
				System.out.println("prob 6");
				KeySkillDetails keySkillDetails=new KeySkillDetails();
				System.out.println("prob 7");
				keySkillDetails.setKeySkill(skills[i]);
				System.out.println("prob 8");
				System.out.println(skills[i]);
				System.out.println("prob 9");
				arrSkill.add(skills[i]);
				System.out.println("prob 10");
				keySkillDetails.setSkillYear(skillsYear[i]);
				System.out.println("prob 11");
				System.out.println(skillsYear[i]);
				System.out.println("prob 12");
				arrSkillYear.add(skillsYear[i]);
				
				System.out.println("new email id for key skills update : "+employeeEmailId);
				keySkillDetails.setEmployeeEmailId(employeeEmailId);
				
				
				System.out.println("update start in collection in personal");
				*//*personalDetails.getKeySkillDetails().add(keySkillDetails);*//*
				
				keySkillDetailsService.updateKeySkillDetails(keySkillDetails);
				System.out.println("update DONE in personal collection");
			}
			System.out.println("out side of loop");
		*//*}
		catch(Exception ex)
		{
			System.out.println("in catch "+ex.getStackTrace());
		}*//*
		return "redirect:/blog/myProfile";
	}*/
	
	
	/*@GetMapping("/searchQuestion")
	public String searchQuestionInDatabase(HttpServletRequest request)
	{
		String aq=request.getParameter("adviceQuestion");
		System.out.println(aq);
		String aqd=blogService.searchQuestionViaQuestion(aq);
		if(aq.equals(aqd))
		{
			return "adviceQuestion";
		}
		else
		{
			return "ask";
		}
		
	}*/
	
	/*@PostMapping(value="/askQuestion")
	public String askQuestionFun(HttpServletRequest request,Principal principal)
	{
		
		String mailId=principal.getName();
		
		System.out.println("title : "+request.getParameter("title"));
		System.out.println("tags : "+request.getParameter("tags"));
		System.out.println("Before Code : "+request.getParameter("beforeCode"));
		System.out.println("Code : "+request.getParameter("editor1"));
		System.out.println("After Code : "+request.getParameter("afterCode"));
		
		DateFormat dateFormat = new SimpleDateFormat("dd/M/yyyy");
		Date date = new Date();
		String currentDate=dateFormat.format(date);
		
		QuestionPutup questionPutup=new QuestionPutup();
		
		System.out.println("object Date is shown: "+date);
		
		PersonalDetails personalDetails=personalDetailsService.getPersonalDetailsByMailId(mailId);
		
		questionPutup.setTitle(request.getParameter("title"));
		questionPutup.setTextBeforeCode(request.getParameter("beforeCode"));
		questionPutup.setQuestionDetail(request.getParameter("editor1"));
		questionPutup.setTextAfterCode(request.getParameter("afterCode"));
		questionPutup.setDoq(currentDate);
		questionPutup.setQuestionTag(request.getParameter("tags"));
		questionPutup.setEmployeeId(personalDetails.getEmployeeId());
		
					
		blogService.saveQuestion(questionPutup);
		return "index";
	}*/
	
	
	/*@GetMapping("/questionDetails/{questionId}")
    public String showQuestionDetails(ModelMap model,@PathVariable("questionId")Integer questionId)
    {
		QuestionPutup questionPutup=blogService.getQuestionById(questionId);
		System.out.println("Code DATAAAAAAAAAAAAAAAA");
		
       System.out.println("Text With Code DATAAAAAAAAAAAAAAAA");
		
		Integer empId=questionPutup.getEmployeeId();
		PersonalDetails personalDetails=personalDetailsService.getEmployeeById(empId);
		System.out.println("emp name of ID :"+empId+" is :"+personalDetails.getFullName());
		
		
        
        List<Comments> listComment=blogService.listComment(questionId);
        
        
		model.addAttribute("questionInformation",questionPutup);
		model.addAttribute("employeeName",personalDetails.getFullName());
		
        model.addAttribute("commentList",listComment);
        return "showQuestionDetails";
    }*/
	
	/*@GetMapping(value="/comment/{questionId}")
	public String saveComment(Principal principal,ModelMap model,HttpServletRequest request,@PathVariable("questionId")Integer questionId){
		
		System.out.println("in my question");
		String emailId=principal.getName();
		System.out.println("email id from "+emailId);
		PersonalDetails personalDetails1=personalDetailsService.getPersonalDetailsByMailId(emailId);
		String employeeName=personalDetails1.getFullName();
		
		System.out.println("in Comment controller");
		System.out.println(request.getParameter("details"));
		System.out.println(questionId);
		if(request.getParameter("details")!=null)
		{
			Comments comments=new Comments();
			comments.setCommentContent(request.getParameter("details"));
			comments.setQuestionId(questionId);
			comments.setEmployeeName(employeeName);

			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			Date date = new Date();
			String currentDate=dateFormat.format(date);
			System.out.println(currentDate);
			comments.setCommentDate(currentDate);
			blogService.saveComment(comments);
		
			QuestionPutup questionPutup=blogService.getQuestionById(questionId);
			Integer empId=questionPutup.getEmployeeId();
			PersonalDetails personalDetails=personalDetailsService.getEmployeeById(empId);
			//System.out.println("emp name of ID :"+empId+" is :"+personalDetails.getFullName());
			model.addAttribute("questionInformation",questionPutup);
			model.addAttribute("employeeName",personalDetails.getFullName());
			
			
			List<Comments> listComment=blogService.listComment(questionId);
			model.addAttribute("commentList",listComment);
			
			
			return "showQuestionDetails";
		}
		else
		{
			return "redirect:/blog/questionDetails/{questionId}";
		}
	}*/
	
	/*@GetMapping(value="/likes/{questionId}")
	public @ResponseBody String saveLike(ModelMap model,@PathVariable("questionId")Integer questionId){
		System.out.println(questionId);
		blogService.updateLikes(questionId);
		return "SAVE COMMENT DONEE";
	}*/
	
	
	/*@GetMapping(value="/dislikes/{questionId}")
	public @ResponseBody String saveDislike(ModelMap model,@PathVariable("questionId")Integer questionId){
		
		System.out.println(questionId);
		
		blogService.updateDislikes(questionId);
		
		return "SAVE COMMENT DONEE";
	}*/
	
	@GetMapping(value="/login")
	public String showLogin(@RequestParam(value="error",required=false)String error, @RequestParam(value="logout",required=false)String logout)
	{
		ModelMap model=new ModelMap();
		if(error!=null)
		{
			model.addAttribute("error", "Invalid username and password");
		}
		if(logout!=null)
		{
			model.addAttribute("msg", "You've been logged out successfully.");
		}
		return "login";
	}
	
	
	
	/*@GetMapping(value="/myQuestion")
    public String showMyQuestion(ModelMap model,Principal principal)
    {
		System.out.println("in my question");
		String emailId=principal.getName();
		System.out.println("email ID using principal : "+emailId);
		Integer employeeId=blogService.getIdByMailId(emailId);
		
		List<QuestionPutup> listMyQuestionPutup=blogService.getMyQuestionByEmployeeId(employeeId);
		model.addAttribute("listMyQuestion",listMyQuestionPutup);
		return "myQuestion";
    }*/
	
	
	/*@GetMapping("/myProfile")
    public String showMyProfile(ModelMap model,Principal principal)
    {
		
		String mailId=principal.getName();
		System.err.println("recieved mail id from principal in my profile : "+mailId);
		System.out.println("Personal Details DATAAAAAAAAAAAAAAAA");
		PersonalDetails personalDetails=personalDetailsService.getPersonalDetailsByMailId(mailId);
		model.addAttribute("personalDetails",personalDetails);
		
		
		System.out.println("Address Details DATAAAAAAAAAAAAAAAA");
		AddressDetails addressDetails=personalDetails.getAddressDetails();
		model.addAttribute("addressDetails",addressDetails);
		
		
		System.out.println("WorkExperience Details DATAAAAAAAAAAAAAAAA");
		WorkExperienceDetails workExperienceDetails=personalDetails.getWorkExperienceDetails();
		model.addAttribute("workExperienceDetails",workExperienceDetails);
		
		System.out.println("Education Details DATAAAAAAAAAAAAAAAA");
		EducationDetails educationDetails=personalDetails.getEducationDetails();
		model.addAttribute("educationDetails",educationDetails);
		
		
		
		System.out.println("Key Skills Details DATAAAAAAAAAAAAAAAA");
		String employeeEmailId=personalDetails.getEmailId();
		
		List<KeySkillDetails> keySkillDetailsList=keySkillDetailsService.getKeySkillsDetailsByEmailId(employeeEmailId);
		 
		*//*KeySkillDetails keySkillDetails=keySkillDetailsList.get(0);
		System.out.println("new key skill are comming from database according to Email ID");
		System.out.println(keySkillDetails.getKeySkill());
		System.out.println(keySkillDetails.getSkillYear());
		System.out.println(keySkillDetails.getEmployeeEmailId());*//*
		
		model.addAttribute("keySkillDetailsList",keySkillDetailsList);
		
		return "myProfilePage";
    }*/
}
