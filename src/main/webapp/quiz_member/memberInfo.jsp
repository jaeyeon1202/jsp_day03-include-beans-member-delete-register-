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
	<%@include file="/quiz_default/header.jsp" %>
	<jsp:useBean id="dao" class="quiz.memberDAO"/>
		
	<% if(session.getAttribute("id")==null){ %>
		<script type="text/javascript">
			alert("로그인먼저!");
			location.href="login.jsp";
		</script>
	<%} %>
	
	<h3>회원목록</h3>
	
	<table border="1">
		<tr>
			<th>이름</th> <th>주소</th> <th>전화번호</th>
		</tr>
		<% 
			ArrayList<memberDTO> list = dao.getList();
			for(memberDTO d: list){%>
				<tr>
					<td><a href="getInfo.jsp?id=<%= d.getId() %>"><%= d.getName() %></a></td>
					<td><%= d.getAddr() %></td>
					<td><%= d.getTel() %></td>
				</tr>
			<%} %>
	</table>
		
	<%@include file="/quiz_default/footer.jsp" %>
</body>
</html>














