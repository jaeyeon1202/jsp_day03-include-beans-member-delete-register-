<%@page import="quiz.memberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="quiz.memberDAO"/>
	<%@include file="/quiz_default/header.jsp" %>
	
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		memberDTO dto = dao.getInfo(id);
	%>
	<h3>개인정보</h3>
	아이디 : <%= dto.getId() %> <br>
	비밀번호 : <%= dto.getPwd() %> <br>
	이름 : <%= dto.getName() %> <br>
	주소 : <%= dto.getAddr() %> <br>
	전화번호 : <%= dto.getTel() %> <br>
	
	<button type="button" onclick="location.href='modiForm.jsp?id=<%= dto.getId()%>'">수정</button>
	<button type="button" onclick="location.href='delete.jsp?id=<%= dto.getId()%>'">삭제</button>
	
	
	
	
	<%@include file="/quiz_default/footer.jsp" %>
</body>
</html>