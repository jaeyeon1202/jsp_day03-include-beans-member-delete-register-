<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">CARE LAB</h1>
	<hr>
	
	<p align="right">
		<a href="index.jsp">HOME</a>
		<a href="memberInfo.jsp">회원정보</a>
		<%if(session.getAttribute("id")!=null){%> <!-- 로그인이 되어있다면 -->
				<a href="logout.jsp">로그아웃</a>
		<%}else{ %>	<!-- 로그인이 안되어있다면 -->
			<a href="login.jsp">로그인</a>
		<%} %>
	</p>
	<hr>
	
</body>
</html>