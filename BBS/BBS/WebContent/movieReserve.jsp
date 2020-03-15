<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import ="java.io.PrintWriter" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<style type="text/css">
	table{
		width:500px;
	}
	
	#a th, #a td {
		border:1px solid gray;
	}
	#movie{
		max-height:150px; 
		overflow-y:scroll;
		width:520px;
	}
	
	


</style>
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		
	%>	
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	
	<nav class="navbr navbar-default" style="margin-bottom: 20px;">
	
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
	
	<div id="container">
		<div class="navi">
			네비 부분
		</div>
		<div id="movie">
			<table>
				<colgroup>
					<col width="20%">
					<col width="40%">
					<col width="40%">
				</colgroup>
				<thead>
					<tr>
						<td>no</td>
						<td>id</td>
						<td>name</td>
					</tr>
				</thead>
			</table>
			
			<div>
				<table>
					<colgroup>
						<col width="20%">
						<col width="40%">
						<col width="40%">
					</colgroup>
					<tbody id="a">
					<% for(int i=0;i<10;i++){
					
					%>
						<tr>
							<td>
								<input class="btn btn-primary" type="button" value="1">
							</td>
							<td>do</td>
							<td>도봉순</td>
						</tr>
					
					<%	
						}
					%>
					</tbody>
				</table>
			</div>
		</div>
	
	</div>



</body>
</html>