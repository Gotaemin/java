<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import ="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<title>영화 웹 사이트</title>

<style type="text/css">
#searchLine {
	float: right;
	height: 50px;
	margin-botton: 3px;
	margin-top: 10px;
}

h2 {
	text-align: center;
	border-bottom: 2px solid red;
}

a, a:hover{
		color: #000000;
		text-decoration:none;
	}

#listForm {
	width: 750px;
	height: 400px;
	border: 1px solid black;
	float: center;
	margin: auto;
	clear: right;
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

header {
	height: 50px;
	padding: 1rem;
	color: white;
	background: teal;
	font-weight: bold;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

#space {
	margin-left: 20px;
}
</style>
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
				<li><a href="movieReserve.movie">예  매</a></li>
				<li><a href="#">극  장</a></li>
				<li><a href="bbsList.bbs?pageNumber=1">게시판</a></li>
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
	

	<!-- 영화제목을 이용하여 검색하는 부분 -->
	<div class="container">
		<form action="movieSearch.movie" method="post" style="margin-top: 20px;">
			<input class ="btn btn-pimary pull-right" type="submit" value="검색"> 
			<input class="form-control pull-right" type="text" name = "title" placeholder="검색어 입력.." style="width:150px;" >
		</form>
	</div>
	
	<div class="container">
		<div id="myCarousel" class = "carousel slide" data-ride="carousel" style=" margin-top: 20px; overflow: hidden;" >
<!-- 			<ol class="Carousel-indicators"> -->
<!-- 				<li data-target="#myCarousel" data-slide-to="0" class="active"></li> -->
<!-- 				<li data-target="#myCarousel" data-slide-to="1" ></li> -->
<!-- 				<li data-target="#myCarousel" data-slide-to="2" ></li> -->
<!-- 			</ol> -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="image/1.jpg" style="min-width:100%; min-heigth:400px;">
				</div>
				<div class="item">
					<img src="image/2.jpg" style="min-width:100%; min-heigth:400px;">
				</div>
				<div class="item">
					<img src="image/3.jpg" style="min-width:100%; min-heigth:400px;">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>

	<div>
		<table border="1" style="text-align:center; background-color:brown; clear:right; width:90%; height:80px; margin:auto; margin-top: 20px; margin-bottom: 50px;">
			<tr>
				<td><a href="movieList.movie">무비 차트</a></td>
				<td><a href="movieReserve.jsp">예매</a></td>
				<td><a href="#">극장</a></td>
				<td><a href="#">이벤트</a></td>
			</tr>
		</table>
	</div>
	
</body>
</html>
