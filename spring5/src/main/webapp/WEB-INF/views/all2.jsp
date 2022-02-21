<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- JSTL(Java Standard Tag Library -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
td {
	width: 150px;
	height: 50px;
	text-align: center;
}

.right {
	background: white;
}

.left {
	background: orange;
}

hr {
	width: 500px;
	margin: 10px;
}

	img{width:150px; }
</style>
</head>
<body bgcolor="lime">
	<br>
	<br>
	<h3>회원 정보 검색 결과입니다.</h3>
	<hr>
	<table>
			<tr>
				<td class="right">아이디</td>
				<td class="right">이름</td>
				<td class="right">주소</td>
				<td class="right">이미지</td>

			</tr>
	<c:forEach items="${list}" var="one">

		
			<tr>
				<td class="left">${one.id}</td>
				<td class="left">${one.name}</td>
				<td class="left"><a href="${one.url}"><button>Click</button></a></td>
				<td class="left"><a href="one2?id=${one.id}"><img src="resources/img/${one.img}"></a></td>
			</tr>
		

		
	</c:forEach>
</table>

		<hr>
</body>
</html>