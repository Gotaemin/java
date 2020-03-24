<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{

	margin:auto;
	margin-top : 10%;
	width: 500px;
	height: 250px; 
	text-align: center;
}


</style>
</head>
<body>

	<table border="1">
		<tr>
			<th>부품</th>
			<th>제조사</th>
			<th>단가</th>
			<th>수량</th>
			<th>합계</th>
		</tr>
		<tr>
			<td rowspan="2">CPU</td>
			<td>AMD</td>
			<td>1000</td>
			<td>2</td>
			<td>2000</td>
		</tr>
		<tr>
			<td>Intel</td>
			<td>2000</td>
			<td>1</td>
			<td class="price1"><c:set var="price1">2000</c:set></td>
		</tr>
		<tr>
			<td rowspan="2">G/C</td>
			<td>Nvidia</td>
			<td>500</td>
			<td>3</td>
			<td class="price2"><c:set var="price2">1500</c:set></td>
			
		</tr>
		<tr>
			<td>Redea</td>
			<td>800</td>
			<td>3</td>
			<td class="price3"><c:set var="price3">2400</c:set></td>
		</tr>
		<tr>
			<td>총합계</td>
			<td style="text-align: right;" colspan="4">7900 원</td>
		</tr>

	</table>
	

	
	가격: ${price2}
	
</body>
</html>