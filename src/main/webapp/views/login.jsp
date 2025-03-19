<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- showQuestionDetails page -->
<title>SuperSoft Technology</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- spring mapping of resourses start -->
<spring:url value="/resources/css/accuwebhosting.css"
	var="accuwebhostingCss" />
<spring:url value="/resources/css/styles.css" var="stylesCss" />
<spring:url value="/resources/css/Teamdemo.css" var="TeamdemoCss" />
<spring:url value="/resources/css/style_common.css"
	var="style_commonCss" />
<spring:url value="/resources/css/style6.css" var="style6Css" />
<spring:url value="/resources/css/Teamstyles.css" var="TeamstylesCss" />
<spring:url value="/resources/css/bootstrap.css" var="bootstrapCss" />
<spring:url value="/resources/css/forFont.css" var="forFontCss" />

<spring:url value="/resources/css/font-awesome.min.css" var="font-awesome.minCss" />

<spring:url value="/resources/autoCompleteWithTag/bootstrap-tokenfield.min.css" var="as1" />
<spring:url value="/resources/autoCompleteWithTag/tokenfield-typeahead.min.css" var="as2" />
<spring:url value="/resources/autoCompleteWithTag/bootstrap-tokenfield.min.js" var="as3" />
<spring:url value="/resources/autoCompleteWithTag/typeahead.bundle.min.js" var="as4" />


<spring:url value="/resources/js/owl.carousel.js" var="owlJs" />
<spring:url value="/resources/js/jquery.waypoints.min.js"
	var="waypointsJs" />
<spring:url value="/resources/js/accuwebhosting.js"
	var="accuwebhostingJs" />

<spring:url value="/resources/angular.min.js" var="angularLib" />
<%-- <spring:url value="/resources/images/logo.png" var="LOGO" /> --%>

<spring:url value="/resources/images/logo.jpg" var="LOGO" />


<!-- bootstrap liberary -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" rel="stylesheet">

<!-- jquery liberary -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>


<link href="${accuwebhostingCss}" rel="stylesheet" type="text/css" />
<link href="${stylesCss}" rel="stylesheet" type="text/css" />

<spring:url value="/resources/js/scripts.js" var="scriptsJs" />
<script src="${scriptsJs}"></script>

<link href="${TeamdemoCss}" rel="stylesheet" type="text/css" />
<link href="${style_commonCss}" rel="stylesheet" type="text/css" />
<link href="${style6Css}" rel="stylesheet" type="text/css" />
<link href="${TeamstylesCss}" rel="stylesheet" type="text/css" />
<link href="${forFontCss}" rel="stylesheet" type="text/css" />

<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />

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
<link rel="stylesheet" href="/resource/css/font-awesome.min.css" type="text/css">
<link href="css/owl.carousel.css" rel="stylesheet">

<spring:url value="/resources/images/socialMedia/facebook.jpeg" var="facebook" />
<spring:url value="/resources/images/socialMedia/twitter.jpeg" var="twitter" />
<spring:url value="/resources/images/socialMedia/youtube.jpeg" var="youtube" />


<spring:url value="/resources/testimonialLib/jquery.bxslider.css" var="testimonialLib01" />
<spring:url value="/resources/testimonialLib/jquery.bxslider.min.js" var="testimonialLib02" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="http://maps.googleapis.com/maps/api/js"></script>


<style>
.banner {
	background: url(/web-images/affiliates-banner.jpg) no-repeat scroll
		center top;
	background-size: cover;
}
</style>

<script src="/resource/js/owl.carousel.js"></script>
<script src="/resource/js/jquery.waypoints.min.js"></script>


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
				-->
			} else {
				$('#MN').show();
				<!--$('#stickyheader').css({
					position : 'static',
					top : '0px'
				});
				$('#stickyalias').css('display', 'none');
				-->
			}
		});
	});
</script>

<script type="text/javascript">
	function Captcha() {
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
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<!-- paging script end -->

<body onload="Captcha();" class="header-fixed"
	style="padding: 0; margin: 0; font-family: Arial, Verdana; background-color: #fff;">
	
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
								</c:if>
								<li><a href="/affiliates" title="Affiliate Programs"><em></em></a></li>
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
						<form action="" class="search-form" name="msearchForm" id="msearchForm" method="get">
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
			<!-- <script>
				$(document).ready(function(){
    				$("#todo").click(function(){
        				alert($(window).scrollTop());
    				});
				});
			</script> -->

			  <script type="text/javascript">
			  $(function(){
			          // Check the initial Poistion of the Sticky Header
			          var stickyHeaderTopp = $('.main-menu').offset();
			          stickyHeaderTop=stickyHeaderTopp.top;
			          $(window).scroll(function(){
			                  if( $(window).scrollTop() > stickyHeaderTop ) {
			                          $('.main-menu').css({position: 'fixed', top: '0px'});
			                          $('#stickyalias').css('display', 'block');
			                  }
			                  else {
			                          $('.main-menu').css({position: 'static', top: '0px',width: '100%'});
			                          $('#stickyalias').css('display', 'none');
			                  }
			                  if( $(window).scrollTop() > stickyHeaderTop )
		                          $('.search-form').css({position: 'fixed', top: '7px'});
		                      else
		                    	  $('.search-form').css({position: 'static', top: '0px',right: '3px'});
			          });
			    });
			    </script>
    
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
			<div id="stickyalias"></div>
		</header>
	</div>	

<!-- Login start -->

<div class="container" style="border:4px solid #6699FF;box-shadow: 0px 0px 10px #888888;margin-top:5%;position:relative;height:480px;">
<div style="margin-left:27%;width: 50%;padding: 0px 0px 40px 0px;padding-top:0px;">
<div class="grid_4" style="margin-left:10%;margin-top:20%;padding-left:7%;height:250px;width:500px;border:1px solid #0099FF;border-radius:10px;box-shadow: 0px 0px 10px #888888;">
<legend style="border:0px solid #0099FF;margin-left:-9%;width:109%;height:15%;border-top-left-radius:10px;border-top-right-radius:10px;background:#0099FF;color:#FFFFFF;font-size:180%;padding:0 0 0 46%;"><b>Login</b></legend>
<!-- <h1 STYLE="padding-top:0px;">Returning User</h1> -->
<c:if test="${not empty error}">
			<div class="error" style="width:50%;">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg" style="width:50%;">${msg}</div>
		</c:if>
		<c:url value="/j_spring_security_check" var="loginUrl" />
                    
                    <form name='loginForm' action="${loginUrl}" method='POST'>

			<table>
				<tr><br>
					<td><!-- Mail ID: -->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>
						<!-- <input type="text" name="username"> -->
						<div class="input-group">
  							<input type="text" class="form-control" name="username" placeholder="Recipient's username" aria-describedby="basic-addon2">
  							<span class="input-group-addon" id="basic-addon2">@example.com</span>
						</div>
					</td>
				</tr>
				<tr style="padding:5% 0 0;">
					<td><!-- Password: -->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td style="padding:5% 0 0;">
						<!-- <input type="password" name="password" /> -->
						<input type="password" name="password" class="form-control" id="pwd" placeholder="Recipient's password">
						<%-- <p><a href="${pageContext.request.contextPath}/getPassword">Forget Password</a></p> --%>
					</td>
				</tr>
				<tr style="align:center;">
				<td><!-- Password: -->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td colspan="2" style="padding-left:20%; padding:5% 0 0 20%;">
						<input name="submit" type="submit" value="Login" class="btn btn-info"/>
					</td>
				</tr>
			</table>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

		</form>
</div>
</div><!-- end content right side -->
</div><!-- end content area -->

<!-- login form end -->











<div id="slider1_container" style="position: relative; margin-top: 10%; left: 5%;padding-top:3%; width:80%; overflow: hidden;">
	
	


</div>














<!-- Footer start -->

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
							<!-- contact us start -->
								<%@ include file="/WEB-INF/pages/contactUs.jsp" %>
							<!-- contact us end -->
				
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
             	
             	<div id="panel" style="display: none;position:absolute;top:70%;left:30%;width:65%;color:#FFFFFF;">Supersoft is a free local classifieds site. Sell anything from used cars to mobiles, furniture, laptops, clothing and more. Submit ads for free and without creating an account. If you want to buy something - here you will find interesting items, cheaper than in the store. Start buying and selling in the most easy way on Supersoft.</div><!-- <span style="color:#FFFFFF;margin-top:10%;padding-right:50px;"> </span>-->
             	
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

<!-- Footer  End -->
<script type="text/javascript">
          
          jQuery('a[href^="#culture"]').click(function(e) {
        	  
        	 jQuery('html,body').animate({ scrollTop: jQuery(this.hash).offset().top}, 1000);
        	 
        	    return false;
        	 
        	    e.preventDefault();
        	 
        	});  
          
          jQuery('a[href^="#service"]').click(function(e) {
        	  
      	    jQuery('html,body').animate({ scrollTop: jQuery(this.hash).offset().top}, 1000);
      	 
      	    return false;
      	 
      	    e.preventDefault();
      	 
      	});
          

          jQuery('a[href^="#technology"]').click(function(e) {
        	  
      	    jQuery('html,body').animate({ scrollTop: jQuery(this.hash).offset().top}, 1000);
      	 
      	    return false;
      	 
      	    e.preventDefault();
      	 
      	});  
          

          jQuery('a[href^="#team"]').click(function(e) {
        	  
      	    jQuery('html,body').animate({ scrollTop: jQuery(this.hash).offset().top}, 1000);
      	 
      	    return false;
      	 
      	    e.preventDefault();
      	 
      	});
          

          jQuery('a[href^="#blog"]').click(function(e) {
        	  
      	    jQuery('html,body').animate({ scrollTop: jQuery(this.hash).offset().top}, 1000);
      	 
      	    return false;
      	 
      	    e.preventDefault();
      	 
      	}); 

          

          jQuery('a[href^="#contact"]').click(function(e) {
        	  
      	    jQuery('html,body').animate({ scrollTop: jQuery(this.hash).offset().top}, 1000);
      	 
      	    return false;
      	 
      	    e.preventDefault();
      	 
      	});  
 
   </script>
</div>

	<!-- Footer  End -->
	

</body>
</html>