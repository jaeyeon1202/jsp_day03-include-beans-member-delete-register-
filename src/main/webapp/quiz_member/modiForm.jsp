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
	
	<% String id = request.getParameter("id"); %>
		<%= id %>
	<form action="modify.jsp" method="post">
		<input type="hidden" name="id" value="<%=id%>"> <!--  -->
		이름 <input type="text" name="name"> <br>
		주소 <input type="text" name="addr"> <br>
		전화번호 <input type="text" name="tel"> <br>
		<input type="submit" value="완료">
		<button type="button" onclick="location.href='getInfo.jsp?id=<%= id%>'">취소</button>
		
	</form>
	
	
	
	<%@include file="/quiz_default/footer.jsp" %>
</body>
</html>