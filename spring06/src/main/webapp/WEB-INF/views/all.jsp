<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table {
	margin-left: auto;
	margin-right: auto;
}

td {
	width: 150px;
	height: 50px;
	text-align: center;
}

.right {
	background: pink;
	.
	left
	{
	background
	:
	white;
}

hr {
	width: 500px;
	margin: 10px;
}

img {
	width: 100px;
}
</style>
</head>
<body>
	<br>
	<br>
	<table>
		<tr>
			<td class="right">��ǰ��ȣ</td>
			<td class="right">�̸�</td>
			<td class="right">����</td>
			<td class="right">�̹���</td>

		</tr>
		<c:forEach items="${list}" var="one">
			<tr>
				<td class="left">${one.id}</td>
				<td class="left">${one.name}</td>
				<td class="left">${one.price}</td>
				<td class="left"><a href="one?id=${one.id}"><img
						src="${one.img}"></a></td>
			</tr>
		</c:forEach>
	</table>
	<hr>
</body>
</html>