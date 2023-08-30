<%@page import="quiz.memberDAO"%>
<%@page import="quiz.memberDTO"%>
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
		request.setCharacterEncoding("utf-8");
	
		memberDAO dao = new memberDAO();
	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		
		int result = dao.modify(id ,name, addr, tel);
	
		if(result == 1){ %>
			<script type="text/javascript">
				alert("수정 완료");
				location.href="getInfo.jsp?id=<%=id%>";
			</script>
		<%}else { %>
			<script type="text/javascript">
				alert("수정 실패");
				location.href="modiForm.jsp?id=<%= id%>";
			</script>
		<%} %>
		
	<%@include file="/quiz_default/footer.jsp" %>
</body>
</html>