<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.Date" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <!-- myProfilePage Page -->
  <title>Profile</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

 
  
  <spring:url value="/resources/bootstrap.vertical-tabs.css" var="bverticalCss" />
  
  <spring:url value="/resources/images/abmenu.gif" var="abmenu" />
  <spring:url value="/resources/images/addressDetailsmenu.gif" var="ADmenu" />
  <spring:url value="/resources/images/educationDetailsmenu.gif" var="EDmenu" />
  <spring:url value="/resources/images/keySkillDetailsmenu.gif" var="KSmenu" />
  <spring:url value="/resources/images/personalDetailsmenu.gif" var="PDmenu" />
  <spring:url value="/resources/images/photo&resumemenu.gif" var="PRmenu" />
   <spring:url value="/resources/images/workExperiencemenu.gif" var="WEmenu" />
   
   <spring:url value="/resources/images/socialMedia/facebook.jpeg" var="facebook" />
<spring:url value="/resources/images/socialMedia/twitter.jpeg" var="twitter" />
<spring:url value="/resources/images/socialMedia/youtube.jpeg" var="youtube" />


<spring:url value="/resources/testimonialLib/jquery.bxslider.css" var="testimonialLib01" />
<spring:url value="/resources/testimonialLib/jquery.bxslider.min.js" var="testimonialLib02" /> 
  
  <link rel="stylesheet" href="${bverticalCss}">
  <spring:url value="/resources/css/accuwebhosting.css" var="accuwebhostingCss" />
<spring:url value="/resources/css/styles.css" var="stylesCss" />

<spring:url value="/resources/css/style_common.css" var="style_commonCss" />
<spring:url value="/resources/css/style6.css" var="style6Css" />

<spring:url value="/resources/css/bootstrap.css" var="bootstrapCss" />

<spring:url value="/resources/css/font-awesome.min.css" var="font-awesome.minCss" />




<spring:url value="/resources/js/bootstrap.min.js" var="bootstrap.minJs" />

<spring:url value="/resources/js/owl.carousel.js" var="owlJs" />
<spring:url value="/resources/js/jquery.waypoints.min.js"
	var="waypointsJs" />
<spring:url value="/resources/js/accuwebhosting.js"
	var="accuwebhostingJs" />


<%-- <spring:url value="/resources/images/logo.png" var="LOGO" /> --%>

<spring:url value="/resources/images/logo.jpg" var="LOGO" />




<script src="http://maps.googleapis.com/maps/api/js"></script>



<link href="${accuwebhostingCss}" rel="stylesheet" type="text/css" />
<link href="${stylesCss}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/js/scripts.js" var="scriptsJs" />

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="${scriptsJs}"></script>
  
  
  
  
  <link href="${style_commonCss}" rel="stylesheet" type="text/css" />
<link href="${style6Css}" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Oswald'
	rel='stylesheet' type='text/css' />
<!-- JS dependencies -->


<style>
.abcd {
	margin-top: 10%;
	overflow: hidden;
	margin-left: 0px;
	margin-right: 0px;
	margin-buttom: 0px;
	size: small;
}

i {
	margin-left: 0px;
	padding: 20px 20px 10px 20px;
	font-size: 34px;
	color: #e8e8e8;
	text-shadow: 1px 1px 1px #fff;
	text-align: left;
	font-weight: 400;
	text-align: center;
}
</style>
  <link rel="stylesheet" href="${bootstrapCss}" type="text/css">
<link rel="stylesheet" href="/resource/css/font-awesome.min.css"
	type="text/css">
<link href="css/owl.carousel.css" rel="stylesheet">
  <style>
.banner {
	background: url(/web-images/affiliates-banner.jpg) no-repeat scroll
		center top;
	background-size: cover;
}
</style>
  <script src="/resource/js/owl.carousel.js"></script> 
<script src="/resource/js/jquery.waypoints.min.js"></script>

<%-- <script src="${accuwebhostingJs}"></script> --%>
  
  <style type="text/css">
.border {
	border-top: 1px solid black;
	border-bottom: 1px solid black;
	padding-left: 30%;
}
</style>
<script type="text/javascript">
	$(function() {
		// Check the initial Poistion of the Sticky Header
		var stickyHeaderTop = $('MN').offset().top;
		$(window).scroll(function() {
			if ($(window).scrollTop() > stickyHeaderTop) {
				$('#MN').show();
				<!--$('#MN').css({
					position : 'fixed',
					top : '0px'
				});
				<!--
				$('#stickyalias').css('display', 'block');
				
			} else {
				$('#MN').show();
				$('#stickyheader').css({
					position : 'static',
					top : '0px'
				});
				$('#stickyalias').css('display', 'none');
				
			}
		});
	});
</script>

<script>
function startTime() {
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('txt').innerHTML =
    h + ":" + m + ":" + s;
    var t = setTimeout(startTime, 500);
}
function checkTime(i) {
    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}
</script>

<script type="text/javascript">
	function Captcha() {
		startTime();
		var alpha = new Array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
				'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
				'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
				'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't',
				'u', 'v', 'w', 'x', 'y', 'z');
		var i;
		for (i = 0; i < 6; i++) {
			var a = alpha[Math.floor(Math.random() * alpha.length)];
			var b = alpha[Math.floor(Math.random() * alpha.length)];
			var c = alpha[Math.floor(Math.random() * alpha.length)];
			var d = alpha[Math.floor(Math.random() * alpha.length)];
			var e = alpha[Math.floor(Math.random() * alpha.length)];
			var f = alpha[Math.floor(Math.random() * alpha.length)];
			var g = alpha[Math.floor(Math.random() * alpha.length)];
		}
		var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' ' + f
				+ ' ' + g;
		document.getElementById("mainCaptcha").value = code
	}
	function ValidCaptcha() {
		var string1 = removeSpaces(document.getElementById('mainCaptcha').value);
		var string2 = removeSpaces(document.getElementById('txtInput').value);
		if (string1 == string2) {
			return true;
		} else {
			return false;
		}
	}
	function removeSpaces(string) {
		return string.split(' ').join('');
	}
</script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script> 
<script type="text/javascript">
	var myApp = angular.module('myApp', [])
	myApp.controller("expressionController", function($scope) {
	});
</script>


<script type="text/javascript">
	var durApp = angular.module('durApp', [])
	myApp.controller("durationController", function($scope) {
	});
</script>
  
  <script>
	$(document).ready(
					function() {
						$("#btn1")
								.click(
										function() {

											/* window.alert(flag); */
											$("#addMore")
													.before(
															"<li><label style='width: 25%;font-weight: normal;'>Key Skill / Experience<span class='red'>*</span></label> <input type='text' style='width:40%;' class='input-sm' id='id_skillform-0-txt_skills' maxlength='250' name='skillform-0-txt_skills'> <select class='input-sm' id='id_skillform-0-level_id' name='skillform-0-level_id'><option value='0 Yr' selected='selected'>-Years-</option><option value='0 Yr'>0 Yr</option><option value='less than 1 Yr'>&lt;1 Yr</option><option value='1 Yr'>1 Yr</option><option value='2 Yr'>2 Yrs</option><option value='3 Yr'>3 Yrs</option><option value='4 Yr'>4 Yrs</option><option value='5 Yr'>5 Yrs</option><option value='6 Yr'>6 Yrs</option><option value='7 Yr'>7 Yrs</option><option value='8 Yr'>8 Yrs</option><option value='9 Yr'>9 Yrs</option><option value='10 Yr'>10 Yrs</option><option value='11 Yr'>11 Yrs</option><option value='12 Yr'>12 Yrs</option><option value='13 Yr'>13 Yrs</option><option value='14 Yr'>14 Yrs</option><option value='15 Yr'>15 Yrs</option><option value='16 Yr'>16 Yrs</option><option value='17 Yr'>17 Yrs</option><option value='18 Yr'>18 Yrs</option><option value='19 Yr'>19 Yrs</option><option value='20 Yr'>20 Yrs</option><option value='21 Yr'>21 Yrs</option><option value='22 Yr'>22 Yrs</option><option value='23 Yr'>23 Yrs</option><option value='24 Yr'>24 Yrs</option><option value='greater than 25 Yr'>&gt; 25 Yrs</option></select></li>");

										});
					});
</script>

  
</head>
<body onload="Captcha();" class="header-fixed" style="padding: 0; margin: 0; font-family: Arial, Verdana;">
	
	
	<div class="main">
		<header>
			<div class="wrapper">
				<div class="row container-fluid">
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						<div class="logo">
							<a href="${pageContext.request.contextPath}/index"> <img src="${LOGO}"
								style="border-radius: 5px;">
							</a>
						</div>
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 desktop-menu">
						<div class="link">
							<ul>
								<li><a href="#"><em></em>9650436124</a></li>
                   				<c:if test="${pageContext.request.userPrincipal.name == null}">
									<li><a href="${pageContext.request.contextPath}/register" title="Sign Up"><em></em>Sign Up</a></li>
								</c:if>
								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<li><a href="<c:url value="/j_spring_security_logout" />" title="Logout"><em></em>Logout</a></li>
								</c:if>								<li><a href="/affiliates" title="Affiliate Programs"><em></em></a></li>
								<li class="site-search">

									<form action=""
										class="search-form" name="searchForm" id="searchForm"
										method="get">
										<div class="form-group has-feedback">
											<label for="q" class="sr-only">Search</label> <input
												type="text" class="form-control" name="q" id="q"
												placeholder="Site Search" autocomplete="off"> <span></span>
										</div>
									</form>
								</li>
							</ul>

						</div>
					</div>
				</div>
				<div class="row visible-sm visible-xs nav_sec">
					<div class="mobilemenu-title mobilemenu">
						<span>Menu</span>
						<form action=""
							class="search-form" name="msearchForm" id="msearchForm"
							method="get">
							<div class="form-group has-feedback">
								<label for="mq" class="sr-only">Search</label> <input
									type="text" class="form-control" name="mq" id="mq"
									placeholder="Site Search" autocomplete="off"> <span
									class="fa fa-search form-control-feedback"></span>
							</div>
						</form>

					</div>
					<div class="row mobilemenu-content" id="MN" style="display: none;">
						<ul class="visible-sm visible-xs">
							<li><a href="${pageContext.request.contextPath}/index" title="Home" class="active"><img
									src="${LOGO}" style="border-radius: 5px;"></a></li>

						</ul>
					</div>
				</div>
			</div>
			<div class="main-menu">
				<div class="wrapper">
					<div class="row container-fluid">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 desktop-menu">
							<div class="menu-logo"></div>
							<div class="nav">
								<ul class="visible-lg visible-md">
									<li><a href="${pageContext.request.contextPath}/index" title="Home">Home</a></li>
									<li><a href="${pageContext.request.contextPath}/index#service" title="services">Services</a></li>
									<li><a href="${pageContext.request.contextPath}/index#culture" title="Culture">Culture</a></li>
									<li><a href="${pageContext.request.contextPath}/index#team" title="Our team">Team</a></li>
									<li><a href="${pageContext.request.contextPath}/blog/blogPage" title="Blog">Blog</a></li>
									<li><a href="${pageContext.request.contextPath}/index#aboutUs" title="About Us">About Us</a>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
	</div>
	
	<%-- <div style="background-color:#0099FF;width:100%;height:12%;margin-top:10%;box-shadow:2px 2px 100px white;">
		<div style="left:5%;position:relative;top:40%;color:white;"><h4><b>Welcome </b>${personalDetails.fullName}</h4></div>
		<div id="txt" style="padding-left:20px;padding-right:70px;background-color:yellow;width:8%;height:25%;left:85%;position:relative;top:22%;box-shadow: 3px 3px 15px #ffffff;"></div><c:out value="${current.time}"/>
	</div> --%>
	
	<style>
		.tabs-left > .arrow:hover
		{
			box-shadow:5px 5px 5px #888888;
			border:1px solid red;/* #37375C */
		}
	</style>
	
	
  <div class="container" style="margin-top:5%;margin-left:10%;">
	
	<div class="row" style="height:1000px;width:1002px;">
   
      <div  class="col-sm-10 jumbotron" style="min-height:600px;box-shadow:0px 0px 15px #888888;width:1000px;">
        <legend style="margin-top:-6%;margin-left:-7%;border:0px solid #0099FF;height:6%;width:114%;border-top-left-radius:10px;border-top-right-radius:10px;background:#0099FF;color:#FFFFFF;padding:0 0 0 52%;">Personal Details</legend>
        <div class="col-xs-3" style="margin-top:2%;"> 
          <!-- Nav tabs -->
          <ul class="tabs-left" style="border:0px solid yellow;"> <!-- nav nav-tabs  -->
            <li class="arrow active" style="padding:6% 0 0;"><a style="padding-bottom:5%;" href="#personalDetails" data-toggle="tab"><img src='${PDmenu}' width='200' height='50'/></a></li><!-- Personal Details -->
            <li class="arrow" style="padding:6% 0 0;"><a style="padding-bottom:5%;" id="menu2" href="#workExperience" data-toggle="tab"><img src="${WEmenu}" width="200" height="50"/></a></li><!-- Work Experience -->
            <li class="arrow" style="padding:6% 0 0;"><a style="padding-bottom:5%;" id="menu3" href="#educationDetails" data-toggle="tab"><img src="${EDmenu}" width="200" height="50"/></a></li><!-- Education Details -->
            <li class="arrow" style="padding:6% 0 0;"><a style="padding-bottom:5%;" id="menu4" href="#keySkills" data-toggle="tab"><img src="${KSmenu}" width="200" height="50"/></a></li><!-- Key Skills -->
         </ul>
       </div>
       
       
       <div class="col-xs-9 jumbotron" style="min-weight:700px;margin-top:2%;border-left:1px solid white;">
          <!-- Tab panes -->
          <div class="tab-content" style="height:60%;">
            <div class="tab-pane active" id="personalDetails">
            	<img src="${pageContext.request.contextPath}/downloadEmployeePhotograph/${personalDetails.employeeId}" height="150px" width="150px" style="float:right;"/>
            	<form action="${pageContext.request.contextPath}/blog/personalDetailUpdate/${personalDetails.employeeId}" method="post" enctype="multipart/form-data">
            	<ul style="list-style-type: none; position: relative; top: 20px;">
					<li style="padding: 0 0 1.5%;">
						<label style="width:20%;font-weight: normal;">Name<span class="red">*</span></label>
						<input type="text" value="${personalDetails.fullName}" style="width:70%;" maxlength="20" name="fullName" placeholder="Name" required />
					</li>
						
					<li style="padding: 1.5% 0;"><label style="width: 20%;font-weight: normal;">Father's Name<span
							class="red">*</span></label> <input type="text" value="${personalDetails.fatherName}" style="width:70%;" maxlength="50" name="fatherName" placeholder="Father's Name" required />
						</li>
					
					<li style="padding: 1.5% 0;"><label style="width: 20%;font-weight: normal;">Email ID<span
							class="red">*</span></label> <input type="email" value="${personalDetails.emailId}" style="width:70%;" maxlength="50" name="email" placeholder="Email Adrress" readonly />
						</li>
					
					<li style="padding: 1.5% 0;"><label style="width: 20%;font-weight: normal;">Password<span
							class="red">*</span></label> <input type="password" value="${personalDetails.password}" style="width:70%;" maxlength="50" name="password" placeholder="Password" required />
						</li>
					
					<li style="padding: 1.5% 0;"><label style="width: 20%;font-weight: normal;">Street
							Address<span class="red">*</span>
					</label> <input type="text" value="${addressDetails.address1}" style="width: 70%;"
						name="address1" placeholder="Street Address" required /></li>

					<li style="padding: 1.5% 0;"><label style="width: 20%;font-weight: normal;">Address<span
							class="red">*</span></label> <input type="text"  value="${addressDetails.address2}"
						style="width: 70%;" name="address2" placeholder="Address" required />
					</li>

					<li style="padding: 1.5% 0;">
						<label style="width: 20%;font-weight: normal;">City<span class="red">*</span></label> 
						<input type="text" value="${addressDetails.city}"  style="width:35%;" maxlength="50" name="city" placeholder="City" required />
						<input type="text" value="${addressDetails.pincode}" style="width:33%;" maxlength="50" name="pincode" placeholder="Pin Code" required /></li>

					<li style="padding: 1.5% 0;"><label style="width: 20%;font-weight: normal;">State<span
							class="red">*</span></label> <select name="state" class="input-sm" style="width:70%;"
						style="width: 73%;" title="select your state" name="state"
						required>
							<option value="${addressDetails.state}">-${addressDetails.state}-</option>
							<option value="Andaman and Nicobar Islands">Andaman and
								Nicobar Islands</option>
							<option value="Andhra Pradesh">Andhra Pradesh</option>
							<option value="Arunachal Pradesh">Arunachal Pradesh</option>
							<option value="Assam">Assam</option>
							<option value="Bihar">Bihar</option>
							<option value="Chandigarh">Chandigarh</option>
							<option value="Chhattisgarh">Chhattisgarh</option>
							<option value="Dadra and Nagar Haveli">Dadra and Nagar
								Haveli</option>
							<option value="Daman and Diu">Daman and Diu</option>
							<option value="Delhi">Delhi</option>
							<option value="Goa">Goa</option>
							<option value="Gujarat">Gujarat</option>
							<option value="Haryana">Haryana</option>
							<option value="Himachal Pradesh">Himachal Pradesh</option>
							<option value="Jammu and Kashmir">Jammu and Kashmir</option>
							<option value="Jharkhand">Jharkhand</option>
							<option value="Karnataka">Karnataka</option>
							<option value="Kerala">Kerala</option>
							<option value="Lakshadweep">Lakshadweep</option>
							<option value="Madhya Pradesh">Madhya Pradesh</option>
							<option value="Maharashtra">Maharashtra</option>
							<option value="Manipur">Manipur</option>
							<option value="Meghalaya">Meghalaya</option>
							<option value="Mizoram">Mizoram</option>
							<option value="Nagaland">Nagaland</option>
							<option value="Orissa">Orissa</option>
							<option value="Pondicherry">Pondicherry</option>
							<option value="Punjab">Punjab</option>
							<option value="Rajasthan">Rajasthan</option>
							<option value="Sikkim">Sikkim</option>
							<option value="Tamil Nadu">Tamil Nadu</option>
							<option value="Tripura">Tripura</option>
							<option value="Uttaranchal">Uttaranchal</option>
							<option value="Uttar Pradesh">Uttar Pradesh</option>
							<option value="West Bengal">West Bengal</option>
					</select></li>

					<li style="padding: 1.5% 0;">
						<label style="width: 10%;font-weight: normal;">Gender<span class="red">*</span></label>
						<span>
							<span style="position: relative; left:60px;">
								<input checked="checked" name="gender" type="radio" value="Male">
								<span style="position: relative; left:10px;">Male</span>
							</span>
							<span style="position: relative; left:110px;">
								<input name="gender" type="radio" value="Female">
								<span style="position: relative; left:10px;">Female</span>
							</span>
						</span>
					</li>
					
					<li>
						<label style="width: 20%;font-weight: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Photo</label> <!-- style="margin-bottom: -7%;" -->
						<input type="file" name="fileUpload" class="input-sm" placeholder="Browse Photo" required/>
					</li>
					<li style="margin-left: 50%;margin-bottom:0%;position:relative;top:-50px;">
						<label style="width:60%;font-weight: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Resume</label>
						<input type="file" name="fileUpload" class="input-sm" placeholder="Browse Resume" required/>
					</li>
					<li style="margin-left:40%;">
						<input type="submit" class="input-sm" value="Update Personal Details">
					</li>
				</ul>
				</form>
			</div>
            
            <div class="tab-pane" id="workExperience">
            	<form action="${pageContext.request.contextPath}/blog/workExperienceUpdate/${personalDetails.employeeId}" method="post">
            	<ul style="list-style-type: none">
					<li style="padding: 1.5% 0;">
						<label style="width: 20%;font-weight: normal;">Are You<span class="red">*</span></label>
						<span>
							<input class="input-md" ng-model="radiooption" name="radioopt" value="show" name="is_fresher" type="radio" value="1">
							<span>
								Fresher
							</span>
						</span>
						<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input checked="checked" ng-model="radiooption" name="radioopt" value="hide" name="is_fresher" type="radio" value="0">
							<span>
								Experienced
							</span>
						</span>
					</li>
					
					<li style="padding: 1.5% 0;"><label style="width: 30%;font-weight: normal;">Total
							Experience<span class="red">*</span>
					</label> <select class="input-sm" style="width: 30%;"
						name="experience_in_years">
							<option value="" selected="selected">- Select Years -</option>
							<option value="0">0 Yr</option>
							<option value="1">1 Yr</option>
							<option value="2">2 Yrs</option>
							<option value="3">3 Yrs</option>
							<option value="4">4 Yrs</option>
							<option value="5">5 Yrs</option>
							<option value="6">6 Yrs</option>
							<option value="7">7 Yrs</option>
							<option value="8">8 Yrs</option>
							<option value="9">9 Yrs</option>
							<option value="10">10 Yrs</option>
							<option value="11">11 Yrs</option>
							<option value="12">12 Yrs</option>
							<option value="13">13 Yrs</option>
							<option value="14">14 Yrs</option>
							<option value="15">15 Yrs</option>
							<option value="16">16 Yrs</option>
							<option value="17">17 Yrs</option>
							<option value="18">18 Yrs</option>
							<option value="19">19 Yrs</option>
							<option value="20">20 Yrs</option>
							<option value="21">21 Yrs</option>
							<option value="22">22 Yrs</option>
							<option value="23">23 Yrs</option>
							<option value="24">24 Yrs</option>
							<option value="More than 25">&gt; 25 Yrs</option>
					</select> <select class="input-sm" style="width: 33%;"
						name="experience_in_months">
							<option value="" selected="selected">-Select Months-</option>
							<option value="0">0 Month</option>
							<option value="1">1 Month</option>
							<option value="2">2 Months</option>
							<option value="3">3 Months</option>
							<option value="4">4 Months</option>
							<option value="5">5 Months</option>
							<option value="6">6 Months</option>
							<option value="7">7 Months</option>
							<option value="8">8 Months</option>
							<option value="9">9 Months</option>
							<option value="10">10 Months</option>
							<option value="11">11 Months</option>
					</select></li>
				</ul>
				<div ng-show="radiooption == 'show'">
					<ul style="list-style-type: none">
						<li style="padding: 1.5% 0;"><label
							style="width: 25%; position: relative; top: 0%; left:0%;font-weight: normal;">Desired
								Functional Area<span class="red">*</span>
						</label> <input type="text"
							style="width: 62%; position: relative; top: -30%; left: 5%;"
							name="desiredFunctionalArea"
							placeholder="Desired Functional Area" class="input-sm" />
						</li>
					</ul>
				</div>
				<div ng-show="radiooption == 'hide'">
					<ul style="list-style-type: none">
						<li style="padding: 1.5% 0;"><label style="width: 30%;font-weight: normal;">Annual
								Salary<span class="red">*</span>
						</label>
						<!-- Current Annual Salary --> <select class="input-sm"
							style="width: 35%;" name="salary_in_lakh" required>
								<option value="" selected="selected">Lakh</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
								<option value="32">32</option>
								<option value="33">33</option>
								<option value="34">34</option>
								<option value="35">35</option>
								<option value="36">36</option>
								<option value="37">37</option>
								<option value="38">38</option>
								<option value="39">39</option>
								<option value="40">40</option>
								<option value="41">41</option>
								<option value="42">42</option>
								<option value="43">43</option>
								<option value="44">44</option>
								<option value="45">45</option>
								<option value="46">46</option>
								<option value="47">47</option>
								<option value="48">48</option>
								<option value="49">49</option>
								<option value="50">50</option>
								<option value="51">50+</option>
						</select> <select class="input-sm" style="width: 28%;"
							name="salary_in_thousand">
								<option value="" selected="selected">Thousand</option>
								<option value="0">0</option>
								<option value="5">5</option>
								<option value="10">10</option>
								<option value="15">15</option>
								<option value="20">20</option>
								<option value="25">25</option>
								<option value="30">30</option>
								<option value="35">35</option>
								<option value="40">40</option>
								<option value="45">45</option>
								<option value="50">50</option>
								<option value="55">55</option>
								<option value="60">60</option>
								<option value="65">65</option>
								<option value="70">70</option>
								<option value="75">75</option>
								<option value="80">80</option>
								<option value="85">85</option>
								<option value="90">90</option>
								<option value="95">95</option>
						</select></li>

						<li style="padding: 2% 0 1.5%;"><span
							style="font-size: 120%;"><strong>Current Job
									Details</strong></span></li>

						<li style="padding: 1.5% 0;"><label style="width: 25%;font-weight: normal;">Job
								Title<span class="red">*</span>
						</label> <input type="text" value="${workExperienceDetails.jobTitle}" class="input-sm" style="width: 74%;"
							maxlength="100" name="job_title" placeholder="Job Title" required>
						</li>

						<li style="padding: 1.5% 0;"><label style="width: 25%;font-weight: normal;">Company
								Name<span class="red">*</span>
						</label>
						<input type="text" value="${workExperienceDetails.companyName}" class="input-sm"
							style="width: 73%;" maxlength="100" name="company_name"
							placeholder="Company Name" required></li>

						<li style="padding: 1.5% 0;"><label style="width: 25%;font-weight: normal;">Industry
								of Company<span class="red">*</span>
						</label> <select class="input-sm" id="id_industry" style="width: 73%;"
							name="industryOfCompany" required>
								<option value="" selected="selected">-${workExperienceDetails.industryOfCompany}-</option>
								<optgroup label="-- Top Industries -- ">
									<option value="IT - Software">IT - Software</option>
									<option value="Banking / Financial Services">Banking /
										Financial Services</option>
									<option value="Manufacturing">Manufacturing</option>
									<option value="Engineering / Construction">Engineering
										/ Construction</option>
									<option value="Education / Training">Education /
										Training</option>
									<option value="BPO / Call Center">BPO / Call Center</option>
									<option value="Internet / E-Commerce">Internet /
										E-Commerce</option>
									<option value="IT - Hardware / Networking">IT -
										Hardware / Networking</option>
									<option value="Automobile / Auto Ancillaries">Automobile
										/ Auto Ancillaries</option>
									<option value="Telecom / ISP">Telecom / ISP</option>
								</optgroup>
								<optgroup label="-- Other Industries -- ">
									<option value="Medical / Healthcare">Medical /
										Healthcare</option>
									<option value="Advertising / MR / PR / Events">Advertising
										/ MR / PR / Events</option>
									<option value="Agriculture / Dairy">Agriculture /
										Dairy</option>
									<option value="Animation">Animation</option>
									<option value="Architecture / Interior Design">Architecture
										/ Interior Design</option>
									<option value="Astrology">Astrology</option>
									<option value="Aviation / Airline">Aviation / Airline</option>
									<option value="Cement / Building Material">Cement /
										Building Material</option>
									<option value="Chemical / Plastic / Rubber / Glass">Chemical
										/ Plastic / Rubber / Glass</option>
									<option value="Consumer Durables / Electronics">Consumer
										Durables / Electronics</option>
									<option value="Environment / Waste Management">Environment
										/ Waste Management</option>
									<option value="Export-Import / Trading">Export-Import
										/ Trading</option>
									<option value="Fertilizers / Pesticides">Fertilizers /
										Pesticides</option>
									<option value="FMCG / F&amp;B">FMCG / F&amp;B</option>
									<option value="Furnishings / Sanitaryware / Electricals">Furnishings
										/ Sanitaryware / Electricals</option>
									<option value="Gems / Jewellery">Gems / Jewellery</option>
									<option value="Gifts / Toys / Stationary">Gifts / Toys
										/ Stationary</option>
									<option value="Government Department">Government
										Department</option>
									<option value="Hotel / Restaurant">Hotel / Restaurant</option>
									<option value="Industrial Design">Industrial Design</option>
									<option value="Insurance">Insurance</option>
									<option value="KPO / Analytics">KPO / Analytics</option>
									<option value="Legal">Legal</option>
									<option value="Logistics / Courier / Transportation">Logistics
										/ Courier / Transportation</option>
									<option value="Management Consulting / Strategy">Management
										Consulting / Strategy</option>
									<option value="Matrimony">Matrimony</option>
									<option value="Media / Entertainment">Media /
										Entertainment</option>
									<option value="Merchant Navy">Merchant Navy</option>
									<option value="Metal / Iron / Steel">Metal / Iron /
										Steel</option>
									<option value="Military / Police / Arms &amp; Ammunition">Military
										/ Police / Arms &amp; Ammunition</option>
									<option value="Mining">Mining</option>
									<option value="NGO / Social Work">NGO / Social Work</option>
									<option value="Oil &amp; Gas / Petroleum">Oil &amp;
										Gas / Petroleum</option>
									<option value="Paint">Paint</option>
									<option value="Paper / Wood">Paper / Wood</option>
									<option value="Personal Care / Beauty">Personal Care /
										Beauty</option>
									<option value="Pharma / Biotech">Pharma / Biotech</option>
									<option value="Politics">Politics</option>
									<option value="Power / Energy">Power / Energy</option>
									<option value="Printing / Packaging">Printing /
										Packaging</option>
									<option value="Quality Certification">Quality
										Certification</option>
									<option value="Real Estate">Real Estate</option>
									<option value="Recruitment Services">Recruitment
										Services</option>
									<option value="Religion / Spirituality">Religion /
										Spirituality</option>
									<option value="Retail">Retail</option>
									<option value="Sculpture / Craft">Sculpture / Craft</option>
									<option value="Security / Detective Services">Security
										/ Detective Services</option>
									<option value="Sports / Fitness">Sports / Fitness</option>
									<option value="Textile / Garments / Fashion">Textile /
										Garments / Fashion</option>
									<option value="67">Travel / Tourism</option>
									<option value="Unskilled Labor / Domestic Help">Unskilled
										Labor / Domestic Help</option>
									<option value="Veterinary Science / Pet Care">Veterinary
										Science / Pet Care</option>
								</optgroup>
						</select></li>

						<li style="padding: 1.5% 0;"><label style="width: 25%;font-weight: normal;">Functional
								Area<span class="red">*</span>
						</label> <input type="text" value="${workExperienceDetails.functionalArea}" class="input-sm" style="width: 73%;"
							placeholder="Functional Area" name="functionalArea" required /></li>

						<div ng-app="durApp" ng-controller="durationController">
							<li style="padding: 1.5% 0;"><label style="width: 25%;font-weight: normal;">Duration
									in this Job<span class="red">*</span>
							</label> <select class="input-sm" style="width: 18%;" id="id_start_month"
								name="start_month">
									<option value="">Month</option>
									<option value="1">Jan</option>
									<option value="2">Feb</option>
									<option value="3">Mar</option>
									<option value="4">Apr</option>
									<option value="5">May</option>
									<option value="6">Jun</option>
									<option value="7">Jul</option>
									<option value="8">Aug</option>
									<option value="9">Sep</option>
									<option value="10">Oct</option>
									<option value="11">Nov</option>
									<option value="12">Dec</option>
							</select> <select class="input-sm" style="width: 15%;" id="id_start_year"
								name="start_year">
									<option value="" selected="selected">Year</option>
									<option value="2015">2015</option>
									<option value="2014">2014</option>
									<option value="2013">2013</option>
									<option value="2012">2012</option>
									<option value="2011">2011</option>
									<option value="2010">2010</option>
									<option value="2009">2009</option>
									<option value="2008">2008</option>
									<option value="2007">2007</option>
									<option value="2006">2006</option>
									<option value="2005">2005</option>
									<option value="2004">2004</option>
									<option value="2003">2003</option>
									<option value="2002">2002</option>
									<option value="2001">2001</option>
									<option value="2000">2000</option>
									<option value="1999">1999</option>
									<option value="1998">1998</option>
									<option value="1997">1997</option>
									<option value="1996">1996</option>
									<option value="1995">1995</option>
									<option value="1994">1994</option>
									<option value="1993">1993</option>
									<option value="1992">1992</option>
									<option value="1991">1991</option>
									<option value="1990">1990</option>
									<option value="1989">1989</option>
									<option value="1988">1988</option>
									<option value="1987">1987</option>
									<option value="1986">1986</option>
									<option value="1985">1985</option>
									<option value="1984">1984</option>
									<option value="1983">1983</option>
									<option value="1982">1982</option>
									<option value="1981">1981</option>
									<option value="1980">1980</option>
									<option value="1979">1979</option>
									<option value="1978">1978</option>
									<option value="1977">1977</option>
									<option value="1976">1976</option>
									<option value="1975">1975</option>
									<option value="1974">1974</option>
									<option value="1973">1973</option>
									<option value="1972">1972</option>
									<option value="1971">1971</option>
									<option value="1970">1970</option>
							</select> <span>to</span> <span ng-show="current" style="width: 20px;">present</span>
								<select class="input-sm" ng-hide="current" style="width: 20%;"
								id="id_end_month" name="end_month">
									<option value="" selected="selected">Month</option>
									<option value="1">Jan</option>
									<option value="2">Feb</option>
									<option value="3">Mar</option>
									<option value="4">Apr</option>
									<option value="5">May</option>
									<option value="6">Jun</option>
									<option value="7">Jul</option>
									<option value="8">Aug</option>
									<option value="9">Sep</option>
									<option value="10">Oct</option>
									<option value="11">Nov</option>
									<option value="12">Dec</option>
							</select> <select class="input-sm" ng-hide="current" style="width: 15%;"
								id="id_end_year" name="end_year">
									<option value="" selected="selected">Year</option>
									<option value="2015">2015</option>
									<option value="2014">2014</option>
									<option value="2013">2013</option>
									<option value="2012">2012</option>
									<option value="2011">2011</option>
									<option value="2010">2010</option>
									<option value="2009">2009</option>
									<option value="2008">2008</option>
									<option value="2007">2007</option>
									<option value="2006">2006</option>
									<option value="2005">2005</option>
									<option value="2004">2004</option>
									<option value="2003">2003</option>
									<option value="2002">2002</option>
									<option value="2001">2001</option>
									<option value="2000">2000</option>
									<option value="1999">1999</option>
									<option value="1998">1998</option>
									<option value="1997">1997</option>
									<option value="1996">1996</option>
									<option value="1995">1995</option>
									<option value="1994">1994</option>
									<option value="1993">1993</option>
									<option value="1992">1992</option>
									<option value="1991">1991</option>
									<option value="1990">1990</option>
									<option value="1989">1989</option>
									<option value="1988">1988</option>
									<option value="1987">1987</option>
									<option value="1986">1986</option>
									<option value="1985">1985</option>
									<option value="1984">1984</option>
									<option value="1983">1983</option>
									<option value="1982">1982</option>
									<option value="1981">1981</option>
									<option value="1980">1980</option>
									<option value="1979">1979</option>
									<option value="1978">1978</option>
									<option value="1977">1977</option>
									<option value="1976">1976</option>
									<option value="1975">1975</option>
									<option value="1974">1974</option>
									<option value="1973">1973</option>
									<option value="1972">1972</option>
									<option value="1971">1971</option>
									<option value="1970">1970</option>
							</select>
							</li>
							<li>
								<label style="width: 25%;font-weight: normal;">&nbsp;Currently I
									work here</label> <span class="label_check">
									<input class="input-md" ng-model="current" value="show" name="is_current" type="checkbox">
								</span>
							</li>
							<li><input type="submit" class="input-sm" value="Update Work Experience"></li>
						</div>
					</ul>
				</div>
               </form>
            </div>
            
            
            <div class="tab-pane" id="educationDetails">
				<form action="${pageContext.request.contextPath}/blog/educationDetailUpdate/${personalDetails.employeeId}" method="post">
            	<ul style="list-style-type: none">
					<li style="padding: 1.5% 0;"><label style="width: 27%;font-weight: normal;">Qualification
							Level<span class="red">*</span>
					</label> <select class="input-sm" style="width: 45%;"
						id="id_education_level" name="education_level">
							<option value="${educationDetails.qualificationLevel}" selected="selected">-${educationDetails.qualificationLevel}-</option>
							<option value="10+2 or Below">10+2 or Below</option>
							<option value="Diploma / Vocational Course">Diploma / Vocational Course</option>
							<option value="Graduation">Graduation</option>
							<option value="PG or Equivalent">PG or Equivalent</option>
							<option value="PhD / MPhil or Equivalent">PhD / MPhil or Equivalent</option>
					</select></li>

					<li style="padding: 1.5% 0;"><label style="width: 27%;font-weight: normal;">Education
							Specialization<span class="red">*</span>
					</label> <input type="text" value="${educationDetails.educationSpecialization}" class="input-sm" style="width: 45%;"
						maxlength="50" name="education_specialization"
						placeholder="Education Specialization" required /></li>

					<li style="clear: both;"></li>
					<li style="padding: 1.5% 0;"><label style="width: 27%;font-weight: normal;">Institute
							Name<span class="red">*</span>
					</label> <input class="input-sm" style="width: 45%;" id="id_institute_name"
						maxlength="100" name="institute_name" placeholder="Institue Name"
						type="text" value="${educationDetails.institute_Name}" autocomplete="off"></li>

					<li style="padding: 1.5% 0;"><label style="width: 27%;font-weight: normal;">Year
							Of Passout<span class="red">*</span>
					</label> <select class="input-sm" style="width: 45%;"
						id="id_year_of_passout" name="year_of_passout">
							<option value="${educationDetails.yearOfPassout}" selected="selected">-${educationDetails.yearOfPassout}-</option>
							<option value="2018">2018</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
							<option value="2013">2013</option>
							<option value="2012">2012</option>
							<option value="2011">2011</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1988">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1985">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
							<option value="1979">1979</option>
							<option value="1978">1978</option>
							<option value="1977">1977</option>
							<option value="1976">1976</option>
							<option value="1975">1975</option>
					</select></li>

					<li style="padding: 1.5% 0;"><label style="width: 27%;font-weight: normal;">Course
							Type<span class="red">*</span>
					</label> <!-- <span style="width:1000px;border:1px solid red;"> --> <input
						checked="checked" name="course_type" type="radio"
						value="Full Time" style="position: relative; left: 0px;"><span
						style="position: relative; left: 5px;">Full Time</span> <input
						name="course_type" type="radio" value="Part Time"
						style="position: relative; left: 15px;"><span
						style="position: relative; left: 20px;">Part Time</span> <input
						name="course_type" type="radio" value="Correspondence"
						style="position: relative; left: 25px;"><span
						style="position: relative; left: 30px;">Correspondence</span>
					</li>
					<li><input style="position: relative; left: 25%;" type="submit" class="input-sm" value="Update Educatin Details"></li>
				</ul>
            </form>
            </div>
            
            
            
            <div class="tab-pane" id="keySkills">
				<form action="${pageContext.request.contextPath}/blog/keySkillUpdate/${personalDetails.emailId}" method="post">	
            	<ul style="list-style-type: none">
					
					<c:if test="${!empty keySkillDetailsList}">
					<c:forEach items="${keySkillDetailsList}" var="keySkills">
					<li><label style="width: 25%;font-weight: normal;">Key Skill / Experience<span
							class="red">*</span></label> <input type="text" value="${keySkills.keySkill}"
						id="id_skillform-0-txt_skills" style="width:40%;" maxlength="250"
						name="skillform-0-txt_skills"> <select class="input-sm"
						id="id_skillform-0-level_id" name="skillform-0-level_id">
							<option selected="selected">${keySkills.skillYear}</option>
							<option value="0 Yr">0 Yr</option>
							<option value="less than 1 Yr">&lt;1 Yr</option>
							<option value="1 Yr">1 Yr</option>
							<option value="2 Yr">2 Yrs</option>
							<option value="3 Yr">3 Yrs</option>
							<option value="4 Yr">4 Yrs</option>
							<option value="5 Yr">5 Yrs</option>
							<option value="6 Yr">6 Yrs</option>
							<option value="7 Yr">7 Yrs</option>
							<option value="8 Yr">8 Yrs</option>
							<option value="9 Yr">9 Yrs</option>
							<option value="10 Yr">10 Yrs</option>
							<option value="11 Yr">11 Yrs</option>
							<option value="12 Yr">12 Yrs</option>
							<option value="13 Yr">13 Yrs</option>
							<option value="14 Yr">14 Yrs</option>
							<option value="15 Yr">15 Yrs</option>
							<option value="16 Yr">16 Yrs</option>
							<option value="17 Yr">17 Yrs</option>
							<option value="18 Yr">18 Yrs</option>
							<option value="19 Yr">19 Yrs</option>
							<option value="20 Yr">20 Yrs</option>
							<option value="21 Yr">21 Yrs</option>
							<option value="22 Yr">22 Yrs</option>
							<option value="23 Yr">23 Yrs</option>
							<option value="24 Yr">24 Yrs</option>
							<option value="greater than 25 Yr">&gt; 25 Yrs</option>
					</select></li>
					</c:forEach>
					</c:if>
					
					<li id="addMore" style="padding: 4% 0 2% 40%;">
						<div style="display: none;">
							Ex: Oracle, Java, Media Planning etc.
							<div class="triangle-right"></div>
						</div> <a class="add-row" id="btn1" href="javascript:void(0)"> <span
							class="plus_fon">+</span> <strong>Add more skills</strong>
					</a>
					</li>
					<li><input type="submit" style="position: relative; left: 45%;" class="input-sm" value="Update Key Skills"></li>
				</ul>
			  </form>	
            </div>
            
            
          </div>
        </div>
	</div>
	</div>
</div>



<!-- Footer Start -->


<style>
	.slide:hover
	{
		background-color:#6C89A7 ;
		padding-left:10px;
		
	}
</style>
<link href="${testimonialLib01}" rel="stylesheet" type="text/css" />
<script src="${testimonialLib02}"></script>

<style>
.bx-wrapper .bx-viewport {
	-moz-box-shadow: 0 0 5px #ccc;
	-webkit-box-shadow: 0 0 5px #ccc;
	box-shadow: 0 0 5px #ccc;
	/* border:  5px solid #fff; */
	left: -5px;
	background: #fff;
	
	/*fix other elements on the page moving (on Chrome)*/
	-webkit-transform: translatez(0);
	-moz-transform: translatez(0);
    	-ms-transform: translatez(0);
    	-o-transform: translatez(0);
    	transform: translatez(0);
}
</style>

<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(28.535516, 77.391026),/* 28.584688,77.315930 */
    zoom:80,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>


<div id="contact" style="padding-top:10%;postion:relative;">
	<div class="footer" style="background-color:#003366; height: 540px;">
		<div class="container">
			<h2 class="text-center" style="color:white; font-size:40px">Contact Us</h2><br>
			<div class="row">
				<div class="col-md-3">
					<div class="slider8" style="background:#003366;">
  						<div class="slide" style="background:#003366;">
  							<div>
  								<a title="" href="" style="color:#FFFFFF;"> 
  									There are design companies, and then there are user experience, design, consulting, interface design, brilliant, and professional. Star Web Maker, is by far one of the worlds best known brands. <br>Mr.Vikesh Khetarpal<br> CEO $amp; FOUNDER<br>VAAS Medi Consultants Pvt Ltd
    							</a>
    						</div>
  						</div>
  						<div class="slide" style="background:#003366;">
							<div>
								<a title="" href="" style="color:#FFFFFF;"> 
									There are design companies, and then there are user experience, design, consulting, interface design, brilliant, and professional. Star Web Maker, is by far one of the worlds best known brands. <br>Mr.Vikesh Khetarpal<br> CEO $amp; FOUNDER<br>VAAS Medi Consultants Pvt Ltd
								</a>
							</div>
	  					</div>
	  					<div class="slide" style="background:#003366;">
		  					<div>
		  						<a title="" href="" style="color:#FFFFFF;"> 
		  							There are design companies, and then there are user experience, design, consulting, interface design, brilliant, and professional. Star Web Maker, is by far one of the worlds best known brands. <br>Mr.Vikesh Khetarpal<br> CEO $amp; FOUNDER<br>VAAS Medi Consultants Pvt Ltd
		    					</a>
		    				</div>
		  				</div>
		  				<div class="slide" style="background:#003366;">
	  						<div>
	  							<a title="" href="" style="color:#FFFFFF;">
	  								There are design companies, and then there are user experience, design, consulting, interface design, brilliant, and professional. Star Web Maker, is by far one of the worlds best known brands. <br>Mr.Vikesh Khetarpal<br> CEO $amp; FOUNDER<br>VAAS Medi Consultants Pvt Ltd
		    					</a>
		    				</div>
		  				</div>
	 	 				<div class="slide" style="background:#003366;">
		  					<div>
		  						<a title="" href="" style="color:#FFFFFF;">
	  								There are design companies, and then there are user experience, design, consulting, interface design, brilliant, and professional. Star Web Maker, is by far one of the worlds best known brands. <br>Mr.Vikesh Khetarpal<br> CEO $amp; FOUNDER<br>VAAS Medi Consultants Pvt Ltd
	    						</a>
	    					</div>
	  					</div>
	  					<div class="slide" style="background:#003366;">
	  						<div>
	  							<a title="" href="" style="color:#FFFFFF;">
	  								There are design companies, and then there are user experience, design, consulting, interface design, brilliant, and professional. Star Web Maker, is by far one of the worlds best known brands. <br>Mr.Vikesh Khetarpal<br> CEO $amp; FOUNDER<br>VAAS Medi Consultants Pvt Ltd
	    						</a>
	    					</div>
	  					</div>
	  					<div class="slide" style="background:#003366;">
	  						<div>
	  							<a title="" href="" style="color:#FFFFFF;">
	  								There are design companies, and then there are user experience, design, consulting, interface design, brilliant, and professional. Star Web Maker, is by far one of the worlds best known brands. <br>Mr.Vikesh Khetarpal<br> CEO $amp; FOUNDER<br>VAAS Medi Consultants Pvt Ltd
	    						</a>
	    					</div>
	  					</div>
	  					<div class="slide" style="background:#003366;">
	  						<div>
	  							<a title="" href="" style="color:#FFFFFF;">
	  								There are design companies, and then there are user experience, design, consulting, interface design, brilliant, and professional. Star Web Maker, is by far one of the worlds best known brands. <br>Mr.Vikesh Khetarpal<br> CEO $amp; FOUNDER<br>VAAS Medi Consultants Pvt Ltd
	    						</a>
	    					</div>
	  					</div>
	  					<div class="slide" style="background:#003366;">
	  						<div>
	  							<a title="" href="" style="color:#FFFFFF;">
							  		There are design companies, and then there are user experience, design, consulting, interface design, brilliant, and professional. Star Web Maker, is by far one of the worlds best known brands. <br>Mr.Vikesh Khetarpal<br> CEO $amp; FOUNDER<br>VAAS Medi Consultants Pvt Ltd
							    </a>
						    </div>
					  	</div>
					  	<div class="slide" style="background:#003366;">
	  						<div>
	  							<a title="" href="" style="color:#FFFFFF;">
	  								There are design companies, and then there are user experience, design, consulting, interface design, brilliant, and professional. Star Web Maker, is by far one of the worlds best known brands. <br>Mr.Vikesh Khetarpal<br> CEO $amp; FOUNDER<br>VAAS Medi Consultants Pvt Ltd
							    </a>
						    </div>
					  	</div>
					</div>
					<script>
						$(document).ready(function(){
  							$('.slider8').bxSlider({
    							mode: 'vertical',
				    			slideWidth: 300,
					    		minSlides: 2,
    							moveSlides: 1,
    							slideMargin: 30,
							    auto: true
	    					});
						});
								$(document).ready(function(){
				             	    $("#flip").click(function(){
				             	        $("#panel").slideToggle("slow");
				             	    });
				             	});
							</script>
				</div>
							
				
				<div class="col-md-3">
               		<div id="googleMap" style="width:220px;height:220px;border:1px solid red;"></div>
               	</div>
               	
               	<div class="col-md-3">
                	<h3 style="padding-left:60px;color:#FFFFFF;">Social Links</h3>
                	<ul class="footer_social">
						<li style="display:inline;padding-left:30px;"><a href="#"><img title="Facebook" class="img-circle" src="${facebook}" alt="Facebook" width="35" height="35" /></a></li>
	        	       	<li style="display:inline;padding-left:30px;"><a href="#"><img title="twitter" class="img-circle" src="${twitter}" alt="Twitter" width="40" height="40" /></a></li>
    	        	    <li style="display:inline;padding-left:30px;"><a href="#"><img title="youtube" class="img-circle" src="${youtube}" alt="youtube" width="40" height="40" /></a></li>
					</ul>
					<br><br>
					<ul style="width:301px;">
						<li id="flip"><span style="color:#FFFFFF;padding-left:20%;">Who are we ?</span></li>
						
					</ul>
             	</div>
             	
             	<div id="panel" style="display: none;position:absolute;top:235%;left:30%;width:65%;color:#FFFFFF;">Supersoft is a free local classifieds site. Sell anything from used cars to mobiles, furniture, laptops, clothing and more. Submit ads for free and without creating an account. If you want to buy something - here you will find interesting items, cheaper than in the store. Start buying and selling in the most easy way on Supersoft.</div><!-- <span style="color:#FFFFFF;margin-top:10%;padding-right:50px;"> </span>-->
             	
             	<div class="col-md-3">
		       		<div class="bs-example" >
		       			<div class="panel-group" id="accordion">
		       				<div class="panel panel-default">
		       					<div class="panel-heading">
		       						<h4 class="panel-title">
		       							<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Web Designing</a>
		       						</h4>
		       					</div>
		       					<div id="collapseOne" class="panel-collapse collapse">
		       						<div class="panel-body">
		       							<ul class="submenu">
		       								<li><a href="#">Web Design</a></li>
      										<li><a href="#">Responsive + Mobile Websites</a></li>
      										<li><a href="#">Graphic Design</a></li>
      										<li><a href="#">Logo Design</a></li>
      										<li><a href="#">Custom Web Design</a></li>
    									</ul>
                					</div>
            					</div>
        					</div>
        					<div class="panel panel-default">
            					<div class="panel-heading">
                					<h4 class="panel-title">
                    					<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Web Development</a>
                    				</h4>
            					</div>
            					<div id="collapseTwo" class="panel-collapse collapse">
                					<div class="panel-body">
                    					<ul class="submenu">
      										<li><a href="#">Web Development</a></li>
      										<li><a href="#">Ecommerce Development</a></li>
      										<li><a href="#">Wordpress Development</a></li>
      										<li><a href="#">Joomla Development</a></li>
      										<li><a href="#">Software Development</a></li>
    									</ul>
                					</div>
            					</div>
        					</div>
        					<div class="panel panel-default">
            					<div class="panel-heading">
	              			  		<h4 class="panel-title">
    	            				    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Products</a>
        	        				</h4>
            					</div>
            					<div id="collapseThree" class="panel-collapse collapse">
                					<div class="panel-body">
                    					<ul class="submenu">
	      									<li><a href="#">Recruitment Software</a></li>
				     				 		<li><a href="#">Security Management Software</a></li>
    				  						<li><a href="#">School/Collage ERP Software</a></li>
	    				  					<li><a href="#">Tender Management Software</a></li>
    	  									<li><a href="#">Billing Software</a></li>
      										<li><a href="#">PMS Software</a></li>
      										<li><a href="#">Sugar CRM</a></li>
			    						</ul>
            				    	</div>
            					</div>
        					</div>
        					<div class="panel panel-default">
            					<div class="panel-heading">
					                <h4 class="panel-title">
    					                <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">SEO</a>
        					        </h4>
            					</div>
            					<div id="collapseFour" class="panel-collapse collapse">
					                <div class="panel-body">
					    				<ul class="submenu">
					      					<li><a href="#">Digital Marketing</a></li>
    				  						<li><a href="#">SEO Consulting</a></li>
      										<li><a href="#">PPC Advertising</a></li>
      										<li><a href="#">Content Marketing</a></li>
      										<li><a href="#">Web Analytics</a></li>
    									</ul>
					                </div>
					            </div>
					        </div>
					        <div class="panel panel-default">
    					        <div class="panel-heading">
        					        <h4 class="panel-title">
            					        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">Information</a>
                					</h4>
					            </div>
    				        	<div id="collapseFive" class="panel-collapse collapse">
        				        	<div class="panel-body">
    									<ul class="submenu">
     	 									<li><a href="#">FAQ</a></li>
				      						<li><a href="#">Affailte Programme</a></li>
		      								<li><a href="#">Our Process</a></li>
    		  								<li><a href="#">Terms and Condition</a></li>
      										<li><a href="#">Resources</a></li>
	      									<li><a href="${pageContext.request.contextPath}/listContactUs">Contact Us Questions</a></li>
    									</ul>
					                </div>
					            </div>
					        </div>
    					</div>
					</div>
				</div>
   				
   			</div>
   			
		</div>
	</div>
</div>
<!-- Footer end -->
</body>
</html>