<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<title>Insert title here</title>

<!-- bootstrap liberary -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" rel="stylesheet">

<!-- jquery liberary -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<style>
.hover:hover
{
	box-shadow: 0px 0px 15px #888888;
}
</style>
</head>
<body>
<div id="listComment" style="positon:relative;padding:2% 0 0;width:85%;marign-left:5%;margin-top:10000px';">
    <c:if test="${!empty commentList}">
    	<div class="table table-striped" style="width:100%;">
        	<c:forEach items="${commentList}" var="commentsList">
            	<div class="hover" style="margin:3% 0 1% 0;width:100%;margin-left:83px;border:1px solid lightgray;">
                	<p style="font-size:90%;color:#999999;">${commentsList.employeeName}<span style="float:right;">${commentsList.commentDate}</span></p>
                	<p style="font-size:130%;color:gray;">${commentsList.commentContent}</p>
                </div>
        	</c:forEach>
    	</div>
	</c:if>
</div>
</body>
</html>