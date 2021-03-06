<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<!DOCTYPE html>
<html>
<head>
<script
	src="${pageContext.request.contextPath}/resources/common/js/jquery-3.3.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/common/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/css/recruitStyle.css" />



<meta charset="UTF-8">
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
<title>Recruit</title>
</head>
<body>
	
	<div class="w3-white" style="height: 70px;" id="top"></div>
	<!-- Spare Space -->

	<div class="w3-display-container w3-right w3-center"
		style="width: 65%; margin-left: 17%; margin-right: 17%; background: rgb(250, 231, 145); margin-bottom: 1%;">
		<h1 style="font-family: vitamin; color: black;"
			class="w3-display-middle">재능검색</h1>
		<img
			src="${pageContext.request.contextPath}/resources/images/common/search.gif"
			style="width: 20%;" class="w3-right" />
	</div>

	<div class="wrap" id="wrap">
		<div class="w3-row">
			<div class="w3-col side_nav" style="width: 10%; margin-right: 10px;">
				<div class="w3-col navigation">
					<ul>
						<li><a href="recruit.rc" style="color: royalblue;"> </a></li>
						<li><a href="javascript:loginChk()"> </a></li>
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

									<c:forEach items="${jobList}" var="jobItem">
										<c:set var="chk" value="true" />
										<c:forEach items="${job}" var="jobItemSelected">
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
										<li>이력서 無</li> &nbsp;&nbsp;&nbsp;
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

				<!-- 리스트 -->
				<div class="list_area">
					<div class="list_header">
						<div class="list_search_area w3-row">
							<div class="w3-col m2">
								<h3 style="font-family: vitamin;">검색</h3>
								<img
									src="${pageContext.request.contextPath}/resources/images/common/magGlass.gif"
									style="width: 20%; float: left;" />
							</div>
							<div class="w3-col m5"></div>
							<div class="list_search_area_right w3-col m5 w3-row"
								style="float: right;">
								<div class="w3-col m3">
									<select name="" id="searchSelect">
										<option value="title">제목</option>
										<!-- <option value="name">이름</option> -->
									</select>
								</div>
								<div class="w3-col m7">
									<input class="w3-input w3-border" type="text"
										placeholder="필터 결과 내 재검색" id="searchInput">
								</div>
								<div class="w3-col m2">
									<button class="w3-button w3-black" id="searchBtn">검색</button>
								</div>
							</div>
						</div>

						<div class="list_order_area">
							· <span id="registOrder">등록일순</span>
							<!-- · <span id="updateOrder">수정일순</span> -->
						</div>
					</div>

					<!-- 실제 리스트 시작 -->
					<div class="list_content">
						<table class="w3-table w3-bordered list_table">
							<thead>
								<tr>
									<th>상태</th>
									<th>재능 요약</th>
									<th id="orderDate">등록일</th>
								</tr>
							</thead>
							<tbody id="list_tbody">
								<c:set var="d" value="${donator}" />
								<c:forEach items="${list}" var="rc">
									<tr class="list_table_tr">
										<td class="user_info" style="width: 22%; padding-top: 20px;">
											<div class="w3-row w3-center">
												<div class="w3-col m2">
													<input type="hidden" value="${rc.dnum}" />
												</div>
												<c:choose>
													<c:when test="${rc.situation eq 0}">
														<span
															class="w3-tag w3-large w3-padding w3-round-large langSpan w3-green wRotate">거래가능</span>
													</c:when>
													<c:when test="${rc.situation eq 1}">
														<span
															class="w3-tag w3-large w3-padding w3-round-large langSpan w3-pink wRotate">거래중</span>
													</c:when>
													<c:otherwise>
														<span
															class="w3-tag w3-large w3-padding w3-round-large langSpan w3-gray wRotate">완료</span>
													</c:otherwise>
												</c:choose>
												<p class="resume_view_detail">
													<b>글번호</b> | ${rc.dnum}
												</p>
												<input type="hidden" value="${rc.dnum}" />
											</div>
											<div class="w3-col m10"></div>
										</td>
										<td class="resume_view" style="width: 65%; padding-top: 20px;">
											<div>
												<p class="resume_view_title">${rc.title}</p>
												<p class="resume_view_detail">
													<b>목적</b> | ${rc.category1}
												</p>
												<p class="resume_view_detail">
													<b>분야</b> | ${rc.category2}
												</p>
												<p class="resume_view_detail">
													<b>토큰</b> | ${rc.token} 토큰
												</p>
											</div>
										</td>
										<td>
											<p class="resume_date">${rc.ddate}</p>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script>
		var order = 'regist';
		var searchSelect = '';
		var searchInput = '';
		var cPage = '${cPage}';
		var job = '';
		var language = '';
		var salary = '';
		var loc = '';
		var edu = '';
		var age = '';
		var gender = '';

		$(function() {

			getPageBar('${totalContents}', cPage, '${numPerPage}',
					"/recruit/recruit.rc");

			scrabBtnListner();

			$('.condition').each(function() {
				deleteCondition($(this));
			});

			/*[START] Get Script Value */

			var rcJob = '${rcFilter.purpose}';
			var rcLang = '${rcFilter.distinguish}';
			var rcSal = '${rcFilter.token}';
			var rcAge = '${rcFilter.state}';
			var rcGender = '${rcFilter.resumeExist}';

			ConditionChk(rcJob);
			ConditionChk(rcLang);
			ConditionChk(rcSal);
			/*           ConditionChk(rcLoc);
			 ConditionChk(rcEdu); */
			ConditionChk(rcAge);
			ConditionChk(rcGender);

			gotoResumeView();

			// gotoTop();

			/*[END] Get Script Value */

		});

		// 필터에서 클릭한 클래스와 같은 클래스가 조건에 5개 이상 존재하는지 체크
		function maxChk(className) {

			var count = 0;

			$('.condition').each(function() {

				if ($(this).attr('class') == 'condition ' + className) {
					count++;

				}

			});

			return count;

		}

		// 필터에서 클릭한 노드와 같은 내용을 갖는 노드가 조건에 존재하는지 체크
		function dupChk(content) {

			var dChk = true;

			$('.conditionText').each(function() {
				if ($(this).text() == content)
					dChk = false;
			});
			return dChk;

		}

		$('.filter_content div ul li').on(
				'click',
				function() {

					var className = $(this).parent().attr('class');
					var content = $(this).text();

					var dupCheck = dupChk(content);
					var maxCheck = true;
					var filterName;

					switch (className) {

					case 'job':
						filterName = '목적';
						if (maxChk(className) > 4)
							maxCheck = false;
						break;
					case 'loc':
						filterName = '희망근무지역';
						if (maxChk(className) > 4)
							maxCheck = false;
						break;
					case 'edu':
						filterName = '학력';
						if (maxChk(className) > 4)
							maxCheck = false;
						break;
					case 'language':
						filterName = '재능';
						if (maxChk(className) > 4)
							maxCheck = false;
						break;
					case 'salary':
						filterName = '희망연봉';
						if (maxChk(className) > 0)
							break;
					case 'age':
						filterName = '상태';
						if (maxChk(className) > 0)
							break;
					case 'gender':
						filterName = '성별';
						break;

					}

					if (!dupCheck) {

						$('.conditionText').each(function() {
							if ($(this).text() == content)
								$(this).parent().remove();
						});

						$(this).removeClass('selectedItem');
						reloadList();

					} else if (!maxCheck) {
						alert(filterName + '은(는) 최대 ' + maxChk(className)
								+ '개까지 선택이 가능합니다.');
					} else {

						if (className == 'salary' || className == 'age') {

							$(this).siblings('li').removeClass('selectedItem');
							$('.filter_condition').children('.' + className)
									.remove();

						}

						$(this).addClass('selectedItem');

						$condition = $('<span>');
						$conditionText = $('<span>');

						$condition.addClass('condition');
						$condition.addClass(className);
						$conditionText.addClass('conditionText');

						$conditionText.text($(this).text());
						$condition.append($conditionText);
						$condition.html($condition.html() + '&times;');

						$('.filter_condition').append($condition);

						cPage = '1';

						deleteCondition($condition);

						// 조건이 정상적으로 추가되었을 시에, 각 필터에 맞게 조건들의 리스트를 만들기
						reloadList();

					}

				});

		function reloadList() {

			job = '';
			language = '';
			salary = '';
			loc = '';
			edu = '';
			age = '';
			gender = '';

			$('.condition').each(function() {

				conditionClass = $(this).attr('class');
				conditionText = $(this).children('.conditionText').text();

				switch (conditionClass) {

				case 'condition job':
					job += conditionText + '::';
					break;
				case 'condition language':
					language += conditionText + '::';
					break;
				case 'condition salary':
					salary += conditionText;
					break;
				case 'condition loc':
					loc += conditionText + '::';
					break;
				case 'condition edu':
					edu += conditionText + '::';
					break;
				case 'condition age':
					age += conditionText;
					break;
				case 'condition gender':
					gender += conditionText + '::';
					break;

				}

			});

			$
					.ajax({

						url : '${pageContext.request.contextPath}/recruit/filterRecruitList.rc',
						data : {
							'cPage' : cPage,
							'job' : job,
							'language' : language,
							'salary' : salary,
							'loc' : loc,
							'edu' : edu,
							'age' : age,
							'gender' : gender,
							'order' : order,
							'searchSelect' : searchSelect,
							'searchInput' : searchInput
						},
						type : 'get',
						success : function(data) {

							$('#totalCount').text(data.totalContents);

							$('#list_tbody').html('');

							for ( var idx in data.list) {

								if (data.list[idx].language != null) {
									var langArr = data.list[idx].language
											.split(",");
								}
								var langs = '';
								for ( var i in langArr) {
									langs += langArr[i] + ' ';
								}

								var orderDate;
								if (order == 'regist')
									orderDate = new Date(
											data.list[idx].ddate + 86400000)
											.toISOString().slice(0, 10);
								else
									orderDate = new Date(
											data.list[idx].ddate + 86400000)
											.toISOString().slice(0, 10);

								/* var scrabImg
								if(data.list[idx].scrab == 'Y')
								   scrabImg = '${pageContext.request.contextPath}/resources/common/image/star_selected.png';
								else
								   scrabImg = '${pageContext.request.contextPath}/resources/common/image/star.png'; */

								var tagName = '<tr class="list_table_tr">'
										+ '      <td class="user_info" style="width: 22%; padding-top: 20px;">                                              '
										+ '        <div class="w3-row w3-center">                                                                                     '
										+ '            <div class="w3-col m2">                                                                              '
										+ '            <input type="hidden" value='+data.list[idx].dnum+' />                                    '
										+ '            </div>                                                                                               ';

								if (data.list[idx].situation == 0) {
									tagName += '            <span class="w3-tag w3-large w3-padding w3-round-large langSpan w3-green wRotate">거래가능<span>';
								} else if (data.list[idx].situation == 1) {
									tagName += '            <span class="w3-tag w3-large w3-padding w3-round-large langSpan w3-pink wRotate">거래중<span>';
								} else {
									tagName += '            <span class="w3-tag w3-large w3-padding w3-round-large langSpan w3-gray wRotate">완료<span>';
								}

								tagName += '        </div>                                                                                                   '
										+ '    </td>                                                                                                        '
										+ '    <td class="resume_view" style="width: 65%; padding-top: 20px;">                                              '
										+ '        <div>                                                                                                    '
										+ '            <p class="resume_view_title">                                                                        '
										+ '                '
										+ data.list[idx].title
										+ '            </p>                                                                                                 '
										+ '            <p class="resume_view_detail"><b>목적</b> | '
										+ data.list[idx].category1
										+ '</p>                  '
										+ '            <p class="resume_view_detail"><b>분야</b> | '
										+ data.list[idx].category2
										+ '</p>        '
										+ '            <p class="resume_view_detail"><b>토큰</b> | '
										+ data.list[idx].token
										+ '토큰 </p>                                             '
										+ '        </div>                                                                                                   '
										+ '    </td>                                                                                                        '
										+ '    <td>                                                                                                         '
										+ '        <p class="resume_date">'
										+ orderDate
										+ '</p>                                                             '
										+ '    </td>                                                                                                        '
										+ '</tr>     ';

								$('#list_tbody').html(
										$('#list_tbody').html() + tagName);

							}

							scrabBtnListner();
							gotoResumeView();

							$('.pageBar').remove();

							getPageBar(data.totalContents, cPage,
									data.numPerPage,
									"/recruit/filterRecruitList.rc");

						},
						error : function(data) {
							console.log(data);
						}

					});

		}

		function deleteCondition(condition) {

			condition.on('click', function() {

				var text = $(this).children('.conditionText').text();
				$(this).remove();

				$('.filter_content div ul li').each(function() {

					if ($(this).text() == text) {

						$(this).removeClass('selectedItem');

					}

				});

				cPage = '1';

				reloadList();
				// deleteCondition();

			});

		}

		function scrabBtnListner() {

			$('.scrab_btn')
					.on(
							'click',
							function() {

								var id = '${m.id}';
								var rId = $(this).siblings('input').val();
								var $thisObj = $(this);

								if (id == '') {
									alert('로그인을 해주세요.');
								} else {

									if ($(this).attr('src') == '${pageContext.request.contextPath}/resources/common/image/star.png') {

										$
												.ajax({

													url : '${pageContext.request.contextPath}/recruit/insertScrab.rc',
													data : {
														"rId" : rId,
													},
													type : "POST",
													success : function(data) {

														result = data.result;

														if (data.result == -1) {
															alert('자신의 글은 스크랩할 수 없습니다.');
														} else if (data.result == 0) {
															alert('스크랩 실패 했습니다.');
														} else {
															alert('스크랩되었습니다.');
															$thisObj
																	.attr(
																			'src',
																			'${pageContext.request.contextPath}/resources/common/image/star_selected.png');
														}

													},
													error : function(data) {
														console.log(data);
													}

												});

									} else {

										$
												.ajax({

													url : '${pageContext.request.contextPath}/recruit/deleteScrab.rc',
													data : {
														"rId" : rId,
													},
													type : "POST",
													success : function(data) {

														if (data.result == 1) {
															alert('스크랩 해제 되었습니다.');
														} else {
															alert('스크랩 해제를 실패 했습니다.');
														}

													},
													error : function(data) {
														console.log(data);
													}

												});

										$(this)
												.attr('src',
														'${pageContext.request.contextPath}/resources/common/image/star.png');

									}

								}

							});

		}

		$('#registOrder').on('click', function() {

			$('#orderDate').text('등록일');

			$(this).css({
				'color' : 'royalblue',
				'font-weight' : 'bold'
			});

			$('#updateOrder').css({
				'color' : 'black',
				'font-weight' : '500'
			});

			order = 'regist';

			cPage = '1';

			reloadList();

		});

		$('#updateOrder').on('click', function() {

			$('#orderDate').text('수정일');

			$(this).css({
				'color' : 'royalblue',
				'font-weight' : 'bold'
			});

			$('#registOrder').css({
				'color' : 'black',
				'font-weight' : '500'
			});

			order = 'update';

			cPage = '1';

			reloadList();

		});

		$('#searchBtn').on('click', function() {

			searchFn();

		});

		// 페이지바 만들기...
		function getPageBar(totalContents, cPage, numPerPage, url) {

			var $pageBarNode = $('<div>');
			var pageBar = "";
			var pageBarSize = 5;

			//총페이지수 구하기
			var totalPage = Math.ceil(totalContents / numPerPage);

			//1.pageBar작성
			//pageBar순회용변수 
			var pageNo = (Math.floor((cPage - 1) / pageBarSize)) * pageBarSize
					+ 1;
			//종료페이지 번호 세팅
			var pageEnd = pageNo + pageBarSize - 1;
			//System.out.println("pageStart["+pageNo+"] ~ pageEnd["+pageEnd+"]");

			pageBar += "<div class='w3-center' style='margin-top:30px;'><div class='w3-bar w3-border'>";
			//[이전]section
			if (pageNo == 1) {
				pageBar += "<a href='javascript:returnFalse2()' class='w3-bar-item w3-button' style='pointer-events: none; color: #bbb;'>&laquo;</a>";
			} else {
				pageBar += "<a href='javascript:fn_paging2(" + (pageNo - 1)
						+ ")' class='w3-bar-item w3-button'>&laquo;</a>";
			}

			// pageNo section
			while (!(pageNo > pageEnd || pageNo > totalPage)) {
				if (cPage == pageNo) {
					pageBar += "<a class='w3-button' style='pointer-events: none; color: #bbb;'>"
							+ pageNo + "</a>";
				} else {
					pageBar += "<a href='javascript:fn_paging2(" + pageNo
							+ ")' class='w3-button'>" + pageNo + "</a>";
				}
				pageNo++;
			}

			//[다음] section
			if (pageNo > totalPage) {
				pageBar += "<a href='javascript:returnFalse2()' class='w3-button' style='pointer-events: none; color: #bbb;'>&raquo;</a>";

			} else {
				pageBar += "<a href='javascript:fn_paging2(" + pageNo
						+ ")' class='w3-button'>&raquo;</a>";
			}

			pageBar += "</div></div>";

			$pageBarNode.html(pageBar);

			$pageBarNode.addClass('w3-center pageBar');

			$('.content').append($pageBarNode);

		}

		function fn_paging2(cPage, numPerPage) {

			location.href = 'filterRecruitListPage.rc?cPage=' + cPage + '&job='
					+ job + '&language=' + language + '&salary=' + salary
					+ '&age=' + age + '&gender=' + gender + '&order=' + order
					+ '&searchSelect=' + searchSelect + '&searchInput='
					+ searchInput;

		}

		function returnFalse2() {
			return false;
		}

		function ConditionChk(condition) {

			var cdList = (condition.substring(1, condition.length - 1))
					.split(", ");

			$('.filter_content div ul li').each(function() {

				for ( var i in cdList) {

					if ($(this).text() == cdList[i]) {

						$(this).addClass('selectedItem');

						job += $(this).text() + "::";

					}

				}

			});

		}

		function loginChk() {

			var id = '${m.id}';

			if (id == '') {
				alert('로그인을 해주세요.');
				return false;
			} else {
				location.href = "scrabList.rc";
			}

		}

		function gotoResumeView() {

			$('.resume_view_title')
					.on(
							'click',
							function() {

								var rId = $(this).parent().parent().siblings(
										'.user_info').children('.w3-row')
										.children('.m2').children('input')
										.val();

								/* location.href = "${pageContext.request.contextPath}/resume/resumeView.resume?resumeId="+rId; */
								location.href = "${pageContext.request.contextPath}/donation/donationView.do?dnum="
										+ rId;

							});

		}

		$('.top_arrow').on('click', function() {

			$('html, body').animate({
				scrollTop : 0
			}, 200);
			return false;

		});

		$("#searchInput").keyup(function(e) {

			if (e.keyCode == 13)
				searchFn();

		});

		function searchFn() {

			if ($('#searchSelect option:selected').val() == 'title') {
				searchSelect = 'title';
			} else if ($('#searchSelect option:selected').val() == 'name') {
				searchSelect = 'name';
			}

			searchInput = $('#searchInput').val();

			cPage = '1';

			location.href = 'filterRecruitListPage.rc?cPage=1' + '&job=' + job
					+ '&language=' + language + '&salary=' + salary + '&age='
					+ age + '&gender=' + gender + '&order=' + order
					+ '&searchSelect=' + searchSelect + '&searchInput='
					+ searchInput;

		}
		function logout() {
			var answer = confirm("로그아웃 하시겠습니까?");

			if (answer) {
				location.href = '${pageContext.request.contextPath}/member/memberLogout.do';
			}
		}
	</script>


</body>
</html>
















