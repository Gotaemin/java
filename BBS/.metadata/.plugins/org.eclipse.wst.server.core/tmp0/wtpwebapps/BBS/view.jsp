<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import ="java.io.PrintWriter" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% response.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<title>게시판</title>

</head>

<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		
		
		
		int bbsID = 0;
		if(request.getParameter("bbsID") != null){
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if(bbsID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='bbsList.bbs?pageNumber=1'");
			script.println("alert('유효하지 않은 글 입니다')");
			script.println("</script>");

		}
	%>	
	


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	
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
				<li><a href="bbs.jsp">게시판</a></li>
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
							<li ><a href="login.jsp">로그인</a></li>
							<li ><a href="join.jsp">회원가입</a></li>
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
						<th colspan="3" style="background-color : #eeeeee; text-align: center">게시판 글 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width:20%">글제목</td>
						<c:set var="title" value="${bbs.bbsTitle}"></c:set>
							<%
								String title = (String)pageContext.getAttribute("title");
							%>
						<td colspan="2">
							<%=title.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll(">", "&gt").replaceAll("\n", "<br>") %>
						</td>
					</tr>
					<tr>
						<td >작성자</td>
						<td colspan="2">${bbs.userID}</td>
					</tr>
					<tr>
						<td >작성일자</td>
						<c:set var="bbsDate" value="${bbs.bbsDate}"></c:set>
							<% 
								String str = (String)pageContext.getAttribute("bbsDate"); 
								str = str.substring(0,10) +" "+ str.substring(11,13)+"시"+str.subSequence(14, 16)+"분";
							%>
						<td colspan="2"><%=str%></td>
					</tr>
					<tr>
						<td >내용</td>
						
						<c:set var="bbsContent" value="${bbs.bbsContent}"></c:set>
						<%
							String content = (String)pageContext.getAttribute("bbsContent");
						%>
						<td colspan="2" style="min-height:200px; text-align:left;">
							<%=content.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll(">", "&gt").replaceAll("\n", "<br>") %>
						</td>
					</tr>
				</tbody>
		</table>
		<a href = "bbsList.bbs?pageNumber=1" class="btn btn-primary">목록</a>
		
		<c:if test="${bbs.userID != null && userID eq bbs.userID}">
			<a href="update.bbs?bbsID=${bbs.bbsID}" class = "btn btn-primary">수정</a>
			<a href="delete.bbs?bbsID=${bbs.bbsID}" class = "btn btn-primary">삭제</a>
		</c:if>

			
		</div>
	</div>
	
		
<%-- 		userID : ${userID } --%>
<%-- 		bbs.userID : ${bbs.userID } --%>
	
</body>
</html>







