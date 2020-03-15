<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			
				<form method="post" action ="login.user">
					<h3 style="text-align:center;">login</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20"/>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20"/>
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인">
					
					
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>





</body>
</html>




