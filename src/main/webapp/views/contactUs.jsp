<%@ page language="java"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!-- contact us liberary start-->
<spring:url value="/resources/contactUsLiberary/demo.css" var="contactUsLib1" />
<spring:url value="/resources/contactUsLiberary/demo.js" var="contactUsLib2" />
<spring:url value="/resources/contactUsLiberary/jquery.cabinet.js" var="contactUsLib3" />

<spring:url value="/resources/images/blue-arrow.png" var="arrow" />


<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link href="${contactUsLib1}" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${contactUsLib2}"></script>
<script type="text/javascript" src="${contactUsLib3}"></script>


</head>
<body>
<div class="cabinet-right" style="top:25%;width:500px;">
			<div class="cabinet-drawer">
				<div class="cabinet-knob" style="height:100px;" >
					<p style="color:white;font-weight: bold;font-variant: small-caps;">Contact Us</p>
				</div>
				 <div class="cabinet-box">
					<form action="${pageContext.request.contextPath}/contactUs" method="post">
 						 <fieldset>
  							<legend>Contact Us</legend>
  								<input style="z-index:1;" type="text" placeholder="Enter your name" name="contactName">&nbsp;&nbsp;&nbsp;&nbsp;<br/>
  								<input type="email" placeholder="Enter your Email" size="25" name="contactEmail" required><br><br>
 								<!-- <input type="text" id="mainCaptcha" readonly/>&nbsp;&nbsp;&nbsp;&nbsp;<br>
								<input type="text" placeholder="Enter the captcha" ng-model="emailReg2" ng-match="emailReg" required><br><br> -->
								<!-- <span data-ng-show="myForm.emailReg2.$error.match">Captcha have to match!</span> -->
								<input type="text" placeholder="Enter your contact no" name="contactNumber" required><br><br>
								<textarea rows="8" cols="30" name="contactText"></textarea>
		 						<input type="submit" value="Send"/>
 						</fieldset>
					</form>
				</div>
			</div>
		</div>
</body>
</html>