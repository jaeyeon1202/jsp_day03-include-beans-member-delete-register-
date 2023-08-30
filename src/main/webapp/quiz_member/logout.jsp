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
			session.invalidate(); //id세션 삭제
		%>
		<script type="text/javascript">
			alert("로그아웃 되었습니다.");
			location.href="login.jsp";
		</script>
		
	<%@include file="/quiz_default/footer.jsp" %>
</body>
</html>