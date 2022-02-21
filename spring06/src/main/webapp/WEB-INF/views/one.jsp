<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

	<table>
		<tr>
			<td class="right">제품번호</td>
			<td class="left">${one.id}</td>
		</tr>
		<tr>
			<td class="right">제품이름</td>
			<td class="left">${one.name}</td>
		</tr>
		<tr>
			<td class="right">제품설명</td>
			<td class="left">${one.content}</td>
		</tr>
		<tr>
			<td class="right">제품가격</td>
			<td class="left">${one.price}</td>
		</tr>
		<tr>
			<td class="right">제품이미지</td>
			<td class="left"><img src="${one.img}"></td>
		</tr>
	</table>
<a href="del?id=${one.id}"><button>DELETE</button></a>
<a href="up2?id=${one.id}&content=${one.content}"><button>UPDATE</button></a>
</body>
</html>