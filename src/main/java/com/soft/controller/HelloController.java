package com.soft.controller;

import com.soft.model.ContactUs;
import com.soft.model.PersonalDetails;
import com.soft.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class HelloController {


    /*private String host="smtp.gmail.com";
    private String portNo="587";
    private String user="www.ghochu.prasad@gmail.com";
    private String pass="rohitkumarmishra";*/

    @Autowired
    private AddressDetailsService addressDetailService;
    @Autowired
    private EducationDetailsService educationDetailsService;
    @Autowired
    private KeySkillDetailsService keySkillDetailsService;
    @Autowired
    private WorkExperienceDetailsService workExperienceDetailsService;
    @Autowired
    private ContactUsService contactUsService;
    @Autowired
    private PersonalDetailsService personalDetailsService;

    @GetMapping({"/","/index"})
    public String showHome()
    {
        return "index";
    }

    //@PostMapping(value="/reply")
    /*public String showsendmailToContact(HttpServletRequest request)
    {

        *//*String email=request.getParameter("email");*//*
        String reply=request.getParameter("reply");

        System.out.println("start JAVA MAIL");
        try
        {
            String recipient = request.getParameter("email");
            String subject = "Supersoft Technologies";
            String content = "<!DOCTYPE html>"+
                    "<html>"+
                    "<head>"+
                    "<meta charset='UTF-8'>"+
                    "<title>Insert title here</title>"+
                    "</head>"+
                    "<body style=' font-weight: bold;color:#000000 ;'>"+
                    "<p>"+reply+"</p>"+
                    "</body>"+
                    "</html>";
            EmailUtility.sendEmail(host, portNo, user, pass, recipient, subject,content);


        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return "index";
    }*/

    @GetMapping("/advice")
    public String showAdvice() {
        return "adviceQuestion";
    }

    @GetMapping("/register")
    public String showRegister() {
        return "signUp";
    }

    @GetMapping("/ask")
    public String showAsk() {
        return "ask";
    }

    /*@PostMapping(value="/saveEmployee")
    public String saveEmployee(@RequestParam PersonalDetails personalDetails, @RequestParam Multipart CommonsMultipartFile[] fileUpload)throws Exception {
        try
        {
            PersonalDetails personalDetails=new PersonalDetails();

            String fullName=request.getParameter("firstName")+" "+request.getParameter("lastName");
            personalDetails.setFullName(fullName);

            personalDetails.setFatherName(request.getParameter("fatherName"));
            personalDetails.setEmailId(request.getParameter("email"));
            personalDetails.setPassword(request.getParameter("password"));
            personalDetails.setSex(request.getParameter("gender"));

            personalDetails.setAuthority(request.getParameter("authority"));
            String a=request.getParameter("enabled");
            //personalDetails.setEnabled(a!=null);

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
            addressDetails.setCountry("INDIA");

            personalDetails.setAddressDetails(addressDetails);

            WorkExperienceDetails workExperienceDetails=new WorkExperienceDetails();
            workExperienceDetails.setJobTitle(request.getParameter("job_title"));
            workExperienceDetails.setCompanyName(request.getParameter("company_name"));
            workExperienceDetails.setIndustryOfCompany(request.getParameter("industryOfCompany"));
            workExperienceDetails.setFunctionalArea(request.getParameter("functionalArea"));

            String duration=request.getParameter("experience_in_years")+"year/s and "+request.getParameter("experience_in_months")+" months";
            workExperienceDetails.setDuration(duration);

            personalDetails.setWorkExperienceDetails(workExperienceDetails);

            System.out.println("Selected Values...");

            EducationDetails educationDetails=new EducationDetails();
            educationDetails.setQualificationLevel(request.getParameter("education_level"));
            educationDetails.setEducationSpecialization(request.getParameter("education_specialization"));
            educationDetails.setInstitute_Name(request.getParameter("institute_name"));
            educationDetails.setYearOfPassout(request.getParameter("year_of_passout"));
            educationDetails.setCourseType(request.getParameter("course_type"));

            personalDetails.setEducationDetails(educationDetails);

            System.out.println("first name:"+request.getParameter("firstName"));
            System.out.println("last name:"+request.getParameter("lastName"));
            System.out.println("add1:"+request.getParameter("address1"));
            System.out.println("father name"+request.getParameter("fatherName"));
            System.out.println("email id"+request.getParameter("email"));
            System.out.println("password"+request.getParameter("password"));
            System.out.println("gender"+request.getParameter("gender"));
            System.out.println("authority"+request.getParameter("authority"));
            System.out.println("enabled"+request.getParameter("enabled"));
            System.out.println("add2:"+request.getParameter("city"));
            System.out.println("pincode:"+request.getParameter("pincode"));
            System.out.println("state"+request.getParameter("state"));
            System.out.println("country:india");
            System.out.println("sex:"+request.getParameter("gender"));

            System.out.println("fresher of experience"+request.getParameter("is_fresher"));

            System.out.println("experiense in year:"+request.getParameter("experience_in_years"));
            System.out.println("experiense in month:"+request.getParameter("experience_in_months"));
            System.out.println("desired functional area:"+request.getParameter("desiredFunctionalArea"));

            for experience
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

            for check present
            show for clicked
            System.out.println("is current"+request.getParameter("is_current"));
            if(request.getParameter("is_current").length()>1)
                System.out.println(""+request.getParameter("end_month"));
            System.out.println(""+request.getParameter("end_year"));

            Education Details
            System.out.println(""+request.getParameter("education_level"));
            System.out.println(""+request.getParameter("education_specialization"));
            System.out.println(""+request.getParameter("institute_name"));
            System.out.println(""+request.getParameter("year_of_passout"));
            System.out.println(""+request.getParameter("course_type"));
            System.out.println("save in array of byte");

            personalDetailsService.savePersonalDetails(personalDetails);

            ArrayList<String> arrSkill=new ArrayList<String>();
            ArrayList<String> arrSkillYear=new ArrayList<String>();
            String[] skills=request.getParameterValues("skillform-0-txt_skills");
            String[] skillsYear=request.getParameterValues("skillform-0-level_id");

            for(int i=0;i<skills.length;i++)
            {
                KeySkillDetails keySkillDetails=new KeySkillDetails();
                keySkillDetails.setKeySkill(skills[i]);
                arrSkill.add(skills[i]);
                keySkillDetails.setSkillYear(skillsYear[i]);
                arrSkillYear.add(skillsYear[i]);
                System.out.println("email id for key skills : "+request.getParameter("email"));
                keySkillDetails.setEmployeeEmailId(request.getParameter("email"));

                System.out.println("save in key skills");
                keySkillDetailsService.saveKeySkillDetails(keySkillDetails);
                System.out.println("save DONE in key skills");

            }

        }
        catch(Exception ex)
        {
            System.out.println("in catch "+ex.getStackTrace());
        }
        return "signUp";
    }*/

    /*@GetMapping("/downloadEmployeePhotograph/{employeeId}")
    public String downloadEmployeePhotograph(@PathVariable("employeeId") Integer employeeId,ModelMap model,HttpServletResponse response) {

        *//*String mailId=principal.getName();*//*
        PersonalDetails personalDetails=personalDetailsService.getEmployeeById(employeeId);

        try {
            if (personalDetails.getPhotograph()!= null) {
                response.setHeader("Content-Dispositon", "inline;filename=\"" + personalDetails.getPhotograph() + "\"");
                OutputStream out = response.getOutputStream();
                response.setContentType("image/gif");
                byte[] bytes=personalDetails.getPhotograph();
                InputStream is = new ByteArrayInputStream(bytes);
                //IOUtils.copy(is, out);
                out.flush();
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }*/



    @GetMapping("/listContactUs")
    public String showListContactUs(ModelMap model)
    {
        List<ContactUs> listContactUs=contactUsService.listContactUs();
        model.addAttribute("listContactUs",listContactUs);
        return "listContactUs";
    }

    @GetMapping("contactUsDetails/{contactId}")
    public String showContactUsDetails(ModelMap model,@PathVariable("contactId") Integer contactId)
    {
        model.addAttribute("contactUsInformation",contactUsService.getContactUsById(contactId));
        return "showContactUsDetails";
    }

    @PostMapping(value="/contactUs")
    //public String contactUs(HttpServletRequest request)
    public String contactUs(){
        try
        {
            /*System.out.println(request.getParameter("contactName"));
            System.out.println(request.getParameter("contactEmail"));
            System.out.println(request.getParameter("contactNumber"));
            System.out.println(request.getParameter("contactText"));*/

            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
            String currentDate=dateFormat.format(date);
            System.out.println(currentDate);

            ContactUs contactUs=new ContactUs();
            /*contactUs.setContactName(request.getParameter("contactName"));
            contactUs.setContactEmail(request.getParameter("contactEmail"));
            contactUs.setContectNumber(request.getParameter("contactNumber"));
            contactUs.setContactText(request.getParameter("contactText"));
            contactUs.setContactDate(currentDate);*/
            contactUsService.saveContactUs(contactUs);

        }
        catch(Exception ex)
        {
            System.out.println("in catch "+ex.getStackTrace());
        }
        return "index";
    }
}
