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
	td{width:150px; height:50px; text-align:center;}
	.right{ background: white;}
	.left{background:orange;}
	
	
	hr{
		width:500px;
		margin:10px;
	}
</style>
</head>
<body bgcolor="lime">
<br><br>
	<h3>회원 정보 검색 결과입니다.</h3>
	<hr>
	<c:forEach items="${list}" var="one">
		<table>
		<tr>
			<td class="left">아이디</td>
			<td class="right">${one.id}</td>
		</tr>
		<tr>
			<td class="left">패스워드</td>
			<td class="right">${one.pw}</td>
		</tr>
		<tr>
			<td class="left">이름</td>
			<td class="right">${one.name}</td>
		</tr>
		<tr>
			<td class="left">전화번호</td>
			<td  class="right">${one.tel}</td>
		</tr>
	</table>
	
		<hr>
	</c:forEach>

</body>
</html>