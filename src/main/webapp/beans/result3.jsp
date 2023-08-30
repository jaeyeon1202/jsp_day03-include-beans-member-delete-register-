<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result3.jsp <br>
	
	<jsp:useBean id="dto" class="day03.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/><!-- property="*"(모든값) name="dto"(dto에 저장) -->
	<!-- MemberDTO에 있는 변수 이름과 login.jsp에서 넘어오는 변수의 이름이 같아야 한다!!!★ -->
	id : <%= dto.getId() %> <br>
	pwd : <%=dto.getPwd() %> <br>
	name : <%=dto.getName() %> 
</body>
</html>