<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">



.filter_content ul li:hover {
	color: royalblue;
	font-weight: bold;
	background: #eee;
}

.filter_content ul li:hover {
	cursor: pointer;
}



.filter_content ul li {
    list-style: none;
    font-size: 0.9em;
    padding: 8px 20px;
}
</style>

</head>
<body>

	<div class="filter_content">
		<div class="w3-col m3">
			<ul class="language" onclick="">
				<li class ="name">마케팅</li>
				<li class ="name">디자인</li>
				<li class ="name">번역</li>
				<li class ="name">비즈니스 문서</li>
				<li class ="name">작문</li>
				<li class ="name">음악</li>
				<li class ="name">영상</li>
				<li class ="name">IT개발</li>
			</ul>
		</div>
	</div>

	<c:set var="jobList" scope="page">
                    취미,교육,기술지원
    </c:set>

	<c:forEach var="jobItem" items="${jobList}">
		list  =  ${jobItem}
	
	</c:forEach>
	
	
	
	
	
	
	<script>
	$(".name").click(function(){ 	

		var str = ""
		// 현재 클릭된 Row(<tr>)
		var tr = $(this);
		
		var city = tr.text();	
		str = city; 
		
		alert('hellow');	
		
	
		$("#city_result").html(city);		
		$("#city_result").html(tdArr);
		$("#city_result2").html(tdArr);	
	});


	
	
	</script>
	
	
	
	
	
	
</body>
</html>