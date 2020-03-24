<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

.ol>li {
	list-style: none;
	padding: 10px 2px;
}

.ul>li>ol hover {
	background: gray;
}
</style>
</head>
<body>

<h1>Form Tag</h1>
<form action="" method="get" enctype="application/x-www-form-urlencoded">


	<p>짧은 문자열 입력 : <input type="text" name="id" value="test" readonly="readonly"></p>


	<p>패스워드 입력 : <input type="password" name="pw" placeholder="비밀번호"></p>
	<p>이메일 입력 : <input type="email" disabled="disabled" ></p>
	<p><input type="date" > </p>
	<p><input type="file" value="file"></p>
	<p><input type="color"></p>
	<p><input type="hidden"></p>

</form>
<bR>
	<c:set var ="a">set</c:set>
	
	<ol class="ol">
		<li>
		<a href="">${a }</a>
			
		</li>
		<li>이탈리아</li>
		<li>한국</li>
		<li>이란</li>
		<li>일본</li>
	</ol>

</body>
</html>