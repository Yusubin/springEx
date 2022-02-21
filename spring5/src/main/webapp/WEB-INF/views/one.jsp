<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	td{width:150px; height:50px;}
	
</style>
</head>
<body bgcolor="lime">
	회원 정보 검색 결과입니다.
	<hr>

	<table>
		<tr>
			<td>아이디</td>
			<td>${one.id}</td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td>${one.pw}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${one.name}</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td>${one.tel}</td>
		</tr>
	</table>
</body>
</html>