<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.HashMap"%>
<%@ page import="vo.Movie"%>
<%@ page import="java.util.ArrayList"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<title>Insert title here</title>

<style type="text/css">


#productImage {
	width: 150px;
	heigth: 150px;
	border: none;
}

#rightAlignment{
	float:right;
	}
h2 {
	text-align: center;
}

table {
	float: center;
	margin: auto;
	width: 650px;
	height: 50%;
}

td {
	text-align: center;
	width: 25%;
	height: 50%;
}
</style>
</head>
<body>
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
				<li><a href="bbsList.bbs?pageNumber=1">게시판</a></li>
			</ul>
		</div>
	</nav>
	
	<div class="container">
		<h2 style="float: left;">무비차트</h2>
	
		<div id="rightAlignment">
			<form class="form-inline" action="movieAlignment.movie" method="post" style="margin-top:10px; margin-right:10px; margin-bottom: 20px;">
				<select class="form-control form-group mb-2" name="alignment">
					<option value="" selected>--선택--</option>
					<option value="2">제목순</option> 
					<option value="3">관람객순</option>
					<option value="4">최신순</option>
				</select>
				<input class="btn btn-primary mb-2" type ="submit" value="GO"  />
			</form>
		</div>
	</div>
	
	<%
		int i=1;
	%>
	<div class="container">
		<div class="jumbotron">
			<div class="row">
				<c:if test="${movieList != null}">
					<table>
						<tr>
							<c:forEach var="movie" items="${movieList}" varStatus="status">
								<td>
									No.<%=i++ %><br>
									<img src="image/${movie.image}.jpg" id="productImage" /> 
									<p style="text-align: center;">${movie.title}<br> </p>
									<p style="text-align: left;font-size:small;">관객수 : ${movie.visitors}명<br> </p>
									<p style="text-align: left;font-size:small;">배우    : ${movie.actor}<br> </p>
								</td>
							</c:forEach>
						</tr>
					</table>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>