<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.invalidate();   //session 의 권한을 빼앗아온다	
	%>

	<script>
		location.href="MovieMain.jsp";
	</script>
</body>
</html>