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
������Ʈ
<form action ="up">
<table>
		<tr>
			<td class="right">��ǰ��ȣ</td>
			<td class="left"><input type="text"name="id" value="${one.id}" readonly="readonly"></td>
		</tr>
		<tr>
			<td class="right">��ǰ�̸�</td>
			<td class="left">${one.name}</td>
		</tr>
		<tr>
			<td class="right">��ǰ����</td>
			<td class="left"><input type="text"name="content" value="${one.content}"></td>
		</tr>
		<tr>
			<td class="right">��ǰ����</td>
			<td class="left"><input type="text" name="price" value="${one.price}"></td>
		</tr>
		<button>����</button>
</table>
</form>

</body>
</html>