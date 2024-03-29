<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import ="java.io.PrintWriter" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="dao.BbsDAO" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% response.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbsDAO" class="dao.BbsDAO" scope="page"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<title>게시판</title>
<style type="text/css">
	a, a:hover{
		color: #000000;
		text-decoration:none;
	}

</style>
</head>

<body>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		
		int pageNumber = 1;
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	

	<nav class="navbr navbar-default">
	
		<div class="navbar-header"> 
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 		
			</button>
			<a class="navbar-brand" href="MovieMain.jsp">영화 웹 사이트</a>
		</div>
		
		
		<div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="movieList.movie">무비 차트</a></li>
				<li><a href="#">예  매</a></li>
				<li><a href="#">극  장</a></li>
				<li><a href="bbsList.bbs?pageNumber=1" class="active">게시판</a></li>
			</ul>
			
			<%
				if(userID == null){
			%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle"
							data-toggle="dropdown" 
							role="button"
							aria-haspopup="true"
							aria-expanded="false">접속하기
						<span class="caret"></span>	
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="join.jsp">회원가입</a></li>
						</ul>
					</li>
				</ul>
			<%
				}else{
			%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle"
							data-toggle="dropdown" 
							role="button"
							aria-haspopup="true"
							aria-expanded="false">회원관리
							<span class="caret"></span>	 
						</a>
						
						<ul class="dropdown-menu">
							<li ><a href="logout.jsp">로그아웃</a></li>
							
						</ul>
					</li>
				</ul>
			<%
				}
			%>
			
		</div>
	</nav>
	
	<div class= "container" style="margin-top: 20px;">
		<div class="row">
			<table class="table talbe-striped" style="text-align:center; border:1px solid #dddddd">
				<thead><%-- 제목부분 --%>
					<tr>
						<th style="background-color : #eeeeee; text-align: center">번호</th>
						<th style="background-color : #eeeeee; text-align: center">제목</th>
						<th style="background-color : #eeeeee; text-align: center">작성자</th>
						<th style="background-color : #eeeeee; text-align: center">작성일</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${bbsList != null}">
						<c:forEach var="bbsList" items="${bbsList}" varStatus="status">
							
							<tr>
								<td>${bbsList.bbsID}</td>
								<c:set var="bbsTitle" value="${bbsList.bbsTitle}"></c:set>
									<%
										String title = (String)pageContext.getAttribute("bbsTitle");
									%>
								<td><a href = "view.bbs?bbsID=${bbsList.bbsID}">
									<%=title.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll(">", "&gt").replaceAll("\n", "<br>") %>
								</a></td>
								<td>${bbsList.userID}</td>
								
								<c:set var="bbsDate" value="${bbsList.bbsDate}"></c:set>
								<% String str = (String)pageContext.getAttribute("bbsDate"); 
									str = str.substring(0,10) +" "+ str.substring(11,13)+"시"+str.subSequence(14, 16)+"분";
								%>
								<td><%=str%></td>
							</tr>						
						</c:forEach>
					</c:if>				
					
				</tbody>
			</table>
			
			<%
				if(pageNumber != 1){
			%>
					<a href = "bbsList.bbs?pageNumber=<%=pageNumber-1%>" class="btn btn-success btn-arraw-left">이전</a>
			<%
				}
				if(bbsDAO.nextPage(pageNumber+1)){
			%>
					<a href = "bbsList.bbs?pageNumber=<%=pageNumber+1%>" class="btn btn-success btn-arraw-left">다음</a>
			<%
				}
			%>
			
			
			
			
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	
</body>
</html>







