<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<!-- bootstrap liberary -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" rel="stylesheet">

<!-- jquery liberary -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>


</head>
<body>

<div id="like" style="margin-left:88px;width:88%;height:40px;background:#0099FF;position:relative;padding-top:2px;marign-top:-9%;"><!-- float:right; -->
	 <span style="color:white;">${questionInformation.likes}<span id="like" style="float:left;margin-left:5%;color:white;" class="glyphicon glyphicon-thumbs-up" aria-hidden="true" onclick="doLike();"></span></span>
	 <span style="float:right;margin-right:5%;color:white;"><span id="dislike" style="color:white;" class="glyphicon glyphicon-thumbs-down" aria-hidden="true" onclick="doDislike();"></span>${questionInformation.dislikes}</span>
</div>
</body>
</html>