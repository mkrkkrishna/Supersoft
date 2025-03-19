<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-bootpag/1.0.4/jquery.bootpag.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-bootpag/1.0.4/jquery.bootpag.min.js"></script>

<%-- <spring:url value="/resources/pagination/newPagination/jquery.simplePagination.js" var="newPagination01" /> --%>







<%-- <div style="float: left;width: 60%;position:relative;left:5%;">
<div class="jumbotron" id="paging" style="border:0px solid #0099FF;border-radius:11px;box-shadow: 0px 0px 20px #888888;float: left;width: 100%;margin-top:13%;position:relative;left:5%;">

<c:if test="${!empty listQuestion}">
	<c:forEach items="${listQuestion}" var="ques">
		<div class="hover" style="width:90%;margin-top:3%;margin-left:3.1%;height:10%;border:1px solid lightgray;">
			<a style="padding:2%;font-size:140%;color:gray; " href="${pageContext.request.contextPath}/blog/questionDetails/${ques.questionId}">${ques.title}</a>
			<p style="color:gray;padding-left:2%;">${ques.doq}</p>
		</div>
	</c:forEach>
</c:if>
</div>

<script>
$(function() {
    $("#paging").pagination({
        itemsOnPage: 10,
        cssStyle: 'light-theme'
    });
});
</script>
</div> --%>










</head>


<body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.js"></script>

<!-- <div class = "outer" >
  <div class="child" > one1 </div>
  <div class="child" > one2 </div>
  <div class="child" > one3 </div>
  <div class="child" > one4 </div>
  <div class="child" > one5 </div>
  <div class="child" > one6 </div>
  <div class="child" > one7 </div>
  <div class="child" > one8 </div>
  <div class="child" > one9 </div>
  <div class="child" > one10 </div>
</div> -->

<div class="jumbotron outer" id="paging">
<c:if test="${!empty listQuestion}">
	<c:forEach items="${listQuestion}" var="ques">
		<div class="child" style="border:1px solid red; width:100px;">
			<a href="${pageContext.request.contextPath}/blog/questionDetails/${ques.questionId}">${ques.title}</a>
			<p >${ques.doq}</p>
		</div>
	</c:forEach>
</c:if>



</div>
<br/>
<a href="#" id="showMore">Show More</a>
<script>

var itemsCount = 0,
itemsMax = $('.outer div').length;
$('.outer div').hide();

function showNextItems() {
var pagination = 3;

for (var i = itemsCount; i < (itemsCount + pagination); i++) {
    $('.outer div:eq(' + i + ')').show();
}

itemsCount += pagination;

if (itemsCount > itemsMax) {
    $('#showMore').hide();
}
};

showNextItems();

$('#showMore').on('click', function (e) {
e.preventDefault();
showNextItems();
});
</script>

</body>
</html>