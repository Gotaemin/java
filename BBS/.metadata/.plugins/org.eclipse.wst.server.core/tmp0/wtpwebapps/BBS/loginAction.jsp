<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.io.PrintWriter" %>

<% request.setCharacterEncoding("UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="user" class="vo.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>로그인 검사 페이지</title>
</head>
<body>

	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		if(userID != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인 되어 있습니다')");
			script.println("location.href='MovieMain.jsp'");
			script.println("</script>");
		}
	%>

	
	<c:choose>
		<c:when test="${result == 1}">
		<%
			session.setAttribute("userID", user.getUserID());	//로그인성공시 회원ID로 userID라는 session부여
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인에 성공하였습니다')");
			script.println("location.href='MovieMain.jsp'");
			script.println("</script>");
		%>
		</c:when>
		<c:when test="${result == 0}">
		<%
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다')");
			script.println("history.back()");
			script.println("</script>");
		%>
		</c:when>
		<c:when test="${result == -1}">
		<%
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다')");
			script.println("history.back()");
			script.println("</script>");
		%>
		</c:when>
		<c:when test="${result == -2}">
		<%
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB오류가 발생하였습니다')");
			script.println("history.back()");
			script.println("</script>");
		%>
		</c:when>
	</c:choose>
	
	
	

	
</body>
</html>