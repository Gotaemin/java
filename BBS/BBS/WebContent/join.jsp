<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.io.PrintWriter" %>

<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<title>영화 웹 사이트</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	<nav class="navbr navbar-default">
		<div class="navbar-header"> 
			<a class="navbar-brand" href="MovieMain.jsp">영화 웹 사이트</a>
			
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 		
			</button>
			
		</div>
		<div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li></li>
			</ul>
		</div>
	</nav>
	
	
	
	
	<div class="container">
		<div class="col-lg-4" style="padding-top:40px;"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top:20px;">
			
				<form method="post" action ="join.user">
					<h3 style="text-align:center;">회원가입</h3>
					
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20"/>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20"/>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20"/>
					</div>
					<div class="form-group" style="text-align:center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
							</label>
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20"/>
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
					
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>

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
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='MovieMain.jsp'");
			script.println("alert('회원가입에 성공했습니다')");
			script.println("</script>");
		%>
		</c:when>
		<c:when test="${result == 0}">
		<%
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('공백이 존재합니다')");
			script.println("history.back()");
			script.println("</script>");
		%>
		</c:when>
		
	</c:choose>

</body>
</html>




