<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test2.jsp <br>
	<%@ include file="test1.jsp" %> <%--인쿨루드 지시자 --%>
	
	<hr>
	<jsp:include page="test3.jsp"/>
	<hr>
	
	<h3>내용 입니다.</h3>
	test1 : <%= msg%><br> <%--include 지시자 --%>
	<%--test2 : <%= m %><br> --%>
</body>
</html>