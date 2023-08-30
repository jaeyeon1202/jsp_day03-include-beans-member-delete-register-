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
	<jsp:useBean id="dao" class="quiz.memberDAO"/>
	
	<%	
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		int result = dao.register(id, pwd, name, addr, tel);
	%>
	
	<%if(result == 1){ %>
		<script type="text/javascript">
			alert("회원가입 성공!");
			location.href="login.jsp";
		</script>
	<%}else{ %>
		<script type="text/javascript">
			alert("회원가입 실패ㅜ");
			location.href="inset.jsp"
		</script>
	<%} %>
	
	<%@include file="/quiz_default/footer.jsp" %>
</body>
</html>