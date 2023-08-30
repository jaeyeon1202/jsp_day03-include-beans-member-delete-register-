<%@page import="quiz.memberDAO"%>
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

	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		memberDAO dao = new memberDAO();
		int result = dao.loginCheck(id,pwd);
		
		if(result ==1){
			
			session.setAttribute("id", id);
			%>
			<script type="text/javascript">
				alert("로그인 성공");
				location.href="successLogin.jsp"
			</script>
			
		<% }else if(result ==2){  %>
			<script type="text/javascript">
				alert("비밀번호 틀림");
				location.href="login.jsp";
			</script>
		<%}else { %>
			<script type="text/javascript">
				alert("아이디 틀림");
				location.href="login.jsp";
			</script>
		<%}%>
		
		<%@include file="/quiz_default/footer.jsp" %>
</body>
</html>