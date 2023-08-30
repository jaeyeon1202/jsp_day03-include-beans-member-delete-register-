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
	
	<h3>회원가입 페이지</h3>
	<form action="register.jsp" method="post">
		<input type="text" name="id" placeholder="id"><br>
		<input type="password" name="pwd" placeholder="pwd"><br>
		<input type="text" name="name" placeholder="name"><br>
		<input type="text" name="addr" placeholder="addr"><br>
		<input type="text" name="tel" placeholder="tel"><br>
		<input type="submit" value="회원가입"><br>
	</form>
	
	
	<%@include file="/quiz_default/footer.jsp" %>
</body>
</html>