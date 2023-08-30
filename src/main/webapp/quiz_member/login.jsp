<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@include file="/quiz_default/header.jsp" %>

	<h5>로그인 페이지 입니다.</h5>
	
	<form action="loginCheck.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="password" name="pwd"><br>
		<input type="submit" value="로그인">
		<a href="insert.jsp">회원가입</a>
	</form>
	
	<%@include file="/quiz_default/footer.jsp" %>
	
</body>
</html>