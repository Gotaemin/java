<%@ page import="java.util.HashMap" %>
<%@ page import="vo.Movie" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<title>Insert title here</title>

<style type="text/css">
	#productImage{
		width : 150px;
		height:150px;
		border: none;
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
				<li><a href="#">이벤트</a></li>
			</ul>
		</div>
	</nav>
	
	

	<div class="container">
		<div class="jumbotron">
			<h2>${movie.title}</h2>
			<div class="row">
				<c:if test="${movie != null}">
				
					<table>
						<tr>
							<td>
								<img src="image/${movie.image}.jpg" id="productImage" style="width:300px;height:300px;"/>
							</td>
							<td style="padding-left: 20px;text-align: left;">
								 관객수 : ${movie.visitors}명<br>
								  배우   : ${movie.actor}<br>
							</td>
	
						</tr>
					</table>
					
					
					<p><a class="btn btn-primary btn-pull" role="button" style="float: right; margin-top: 40px;">예매하기</a></p>
					
				</c:if>
			</div>
		</div>
	</div>


</body>
</html>