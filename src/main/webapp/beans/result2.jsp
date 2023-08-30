<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	태그를 사용해서 - result2.jsp <br>
	<jsp:useBean id="dto" class="day03.MemberDTO"></jsp:useBean> 
	<!-- 객체르 만드는 과정(useBean) Bean == 객체 id="변수이름" class를 추가해서 위치정보 넣어주기(패키지, 클래스)-->
	<!-- day03패키지에 MemberDTO클래스의 객체 dto를 만들겠다. -->
	
	<jsp:setProperty property="id" name="dto"/>
	<!-- setter라고 생각, dto가 가지고 있는 변수 넣어주기(id,pwd, name) property="변수이름" name="만든 객체 이름"-->
	dto.serId( request.getParamerter("id")) <br>
	<!-- 자바파일에 만든 변수이름과 jsp파일에 변수이름이 같아야한다. -->
	
	id : <jsp:getProperty property="id" name="dto"/><br>
	id: <%= dto.getId()  %> <br>
	
	<%
		dto.setPwd(request.getParameter("pwd"));
	%>
	pwd : <%= dto.getPwd()%><br>
</body>
</html>