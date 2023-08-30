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
		int result = dao.delete(id);
		
		if(result==1){
			session.invalidate();%>
			<script type="text/javascript">
				alert("삭제되었습니다.");
				location.href="index.jsp";
			</script>
		<%}else{ %>
			<script type="text/javascript">
				alert("삭제 실패");
				location.href="getInfo.jsp?id<%= id%>";
			</script>	
		<%} %>
	<%@include file="/quiz_default/footer.jsp" %>
</body>
</html>