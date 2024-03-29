<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
@CHARSET "UTF-8";

* {
	font-family: penB;
}

ul {
    padding: 0;
    margin: 0;
}
li {
    list-style: none;
}

.wrap {
    /* background-color: #eee; */
    padding: 0 10% 5% 10%;
}

.side_nav, .content {
    height: auto;
}

.navigation {
    background-color: white;
    /* border: 1px solid #ddd; */
    padding: 0 20px;
}
.navigation ul li {
    margin: 25px 0;
}
.navigation ul li a {
    text-decoration: none;
    font-size: 1.3em;
    font-family: vitamin;
}
.navigation ul li a:hover {
    color: royalblue;
}

.content {
    background-color: white;
    float: right;
    border-left: 3px solid black;
    padding: 0 50px 50px 100px;
}

.search_area div {
    border: 1px solid black;
}
.search_area div input {
    outline: none;
}

/*         .filter_area {
            margin-top: 30px;
        } */
.filter_header div, .filter_content div {
    border: 1px solid #ddd;
}
.filter_header div {
    padding: 10px 10px;
    background-color: #678F8D;
    color: white;
    font-size: 1.1em;
    font-family: vitamin;
}
.filter_content div {
    height: 250px;
    padding: 10px 0;
    overflow-y: auto;
}

/* width */
.filter_content div::-webkit-scrollbar {
    width: 10px;
}

/* Track */
.filter_content div::-webkit-scrollbar-track {
    background: #f1f1f1; 
}

/* Handle */
.filter_content div::-webkit-scrollbar-thumb {
    background: #777; 
}

/* Handle on hover */
.filter_content div::-webkit-scrollbar-thumb:hover {
    background: #555; 
}

.filter_content ul li {
    list-style: none;
    font-size: 0.9em;
    padding: 8px 20px;
}
.filter_content ul li:hover {
     color: royalblue; 
     font-weight: bold; 
    background: #eee;
}
.filter_content ul li:hover {
    cursor: pointer;
}
#age_area, #gender_area {
    border: none;
    padding: 0;
}
#age_area {
    height: 170px;
}
#gender_area {
    height: 45px;
    border-top: 1px solid #eee;
    padding-top: 10px;
    margin: 10px 8px 0 8px;
    font-size: .9em;
    line-height: 33px;
    text-align: center;
}
#gender_area ul li {
    display: inline;
    padding: 0;
    font-size: .9em;
}

.filter_condition {
    border: 1px solid #ddd;
    height: auto;
    padding: 10px;
}

.condition {
    font-size: .9em;
    padding: 0 10px;
    cursor: pointer;
    display: inline-block;
}

.list_area {
    margin-top: 30px;
}
.list_search_area {
    padding-bottom: 10px;
    border-bottom: 1px solid black;
}
.list_search_area h3 {
    display: inline;
}
.list_search_area h3 span {
    color: dodgerblue;
    font-weight: bold;
}
.list_search_area_right {
    float: right;
}
.list_search_area_right div:first-child {
    text-align: right;
}
.list_search_area_right div select {
    height: 30px;
}
.list_search_area_right div input {
    height: 30px;
}
.list_search_area_right div button {
    height: 30px;
    line-height: 14px;
}

.list_order_area {
    padding: 20px 0;
}
.list_order_area span {
    cursor: pointer;
    font-size: .9em;
}

.list_content {
}

.list_table {
    border-top: 1px solid #555;
}
.list_table thead th {
    text-align: center;
}
.list_table_tr td {
    padding-top: 20px;
}
.list_table_tr:hover {
    background-color: #eee;
}
.user_info div div img {
    cursor: pointer;
}
.user_info div div p {
    margin: 0;
}
.user_info_name {
    font-size: 1.0em;
}
.user_info_detail {
    font-size: .8em;
    color: #555;
}
.resume_view div p {
    margin: 0 0 10px 0;
}
.resume_view_title {
    font-weight: bold;
    cursor: pointer;
    display: inline-block;
    font-size: 1.1em;
}
.resume_view_detail {
    font-size: .9em;
    color: #333;
}
.resume_badge {
    border: 1px solid salmon;
    color: salmon;
    padding: 2px;
    font-size: .9em;
    border-radius: 15px;
}
.resume_date {
    font-size: .9em;
    color: #555;
    text-align: center;
    line-height: 123px;
}

.top_arrow {
    cursor: pointer;
    position: fixed;
    bottom: 10%;
    right: 10%;
    border: 1px solid black;
    padding: 5px;
    opacity: .6;
}

#registOrder {
	color: royalblue;
	font-weight: bold;
}

.selectedItem {
	color: royalblue;
	font-weight: bold;
}

th {
	font-family: vitamin;
	font-size: 1.1em;	
}
.gender li {
	font-size: 1.0em !important;
}

.wRotate {
	transform: rotate(-5deg)
}
</style>
<script
	src="${pageContext.request.contextPath}/resources/common/js/jquery-3.3.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/common/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div class="wrap" id="wrap">
		<div class="w3-row">
			<div class="w3-col side_nav" style="width: 10%; margin-right: 10px;">
				<div class="w3-col navigation">
					<ul>
						<li><a href="recruit.rc" style="color: royalblue;">n </a></li>
						<li><a href="javascript:loginChk()">n </a></li>
					</ul>
				</div>
			</div>

			<div class="w3-col content" style="width: 84%">

				<!-- 필터 -->
				<div class="filter_area">
					<div class="first_floor">
						<div class="w3-row filter_header">
							<div class="w3-col m3">목적</div>
							<div class="w3-col m3">재능</div>
							<div class="w3-col m3">토큰</div>
							<div class="w3-col m3">상태</div>
						</div>
						<div class="w3-row filter_content">
							<div class="w3-col m3">
								
								
								
								
								
								
								
								
								<ul class="job">
									<c:set var="jobList" scope="page">
                       				    취미,교육,기술지원
                    			    </c:set>


									<c:forEach var="jobItem" items="${jobList}">
										<c:set var="chk" value="true" />
										
										<c:forEach var="jobItemSelected" items="${job}" >
										
											<c:if test="${ jobItem == jobItemSelected }">
												<li class="selectedItem">${ jobItem }</li>
												<c:set var="chk" value="false" />
											</c:if>
											
										</c:forEach>
										
										
										<c:if test="${ chk }">
											<li>${ jobItem }</li>
										</c:if>
									</c:forEach>
								</ul>
							</div>
							
							
							<div class="w3-col m3">
								<ul class="language">
									<li>마케팅</li>
									<li>디자인</li>
									<li>번역</li>
									<li>비즈니스 문서</li>
									<li>작문</li>
									<li>음악</li>
									<li>영상</li>
									<li>IT개발</li>
								</ul>
							</div>
							
							
							
							
							
							
							
							
							
							
							
							
							<div class="w3-col m3">
								<ul class="salary">
									<li>무료 ~ 50 토큰</li>
									<li>50 토큰~100 토큰</li>
									<li>100 토큰~150 토큰</li>
									<li>150 토큰~200 토큰</li>
									<li>200 토큰~250 토큰</li>
									<li>250 토큰~300 토큰</li>
									<li>300 토큰~350 토큰</li>
									<li>350 토큰~400 토큰</li>
									<li>400 토큰~450 토큰</li>
									<li>450 토큰~500 토큰</li>
								</ul>
							</div>
							<div class="w3-col m3">
								<div id="age_area">
									<ul class="age">
										<li>등록중</li>
										<li>거래중</li>
										<li>완료</li>
									</ul>
								</div>
								<div id="gender_area">
									<ul class="gender">
										<li>이력서 無</li> 
										<li>이력서 有</li>
									</ul>
								</div>
							</div>
						</div>
					</div>


					<div class="filter_condition">
						<c:forEach items="${rcFilter.purpose}" var="rcJob">
							<span class="condition job"><span class="conditionText">${rcJob}</span>×</span>
						</c:forEach>
						<c:forEach items="${rcFilter.distinguish}" var="rcLang">
							<span class="condition language"><span
								class="conditionText">${rcLang}</span>×</span>
						</c:forEach>
						<c:if test="${!empty rcFilter.token}">
							<span class="condition salary"><span class="conditionText">${rcFilter.token}</span>×</span>
						</c:if>
						<c:if test="${!empty rcFilter.state}">
							<span class="condition age"><span class="conditionText">${rcFilter.state}</span>×</span>
						</c:if>
						<c:forEach items="${rcFilter.resumeExist}" var="rcGender">
							<span class="condition gender"><span class="conditionText">${resumeExist}</span>×</span>
						</c:forEach>
					</div>
				</div>
			</div>
			</div>
			</div>
</body>
</html>