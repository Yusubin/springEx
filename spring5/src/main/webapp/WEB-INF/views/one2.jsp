<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	td{width:150px; height:50px;}
	img{width:150px; }
	.right{ background: white;}
	.left{background:orange;}
	
	
	hr{
		width:500px;
		margin:10px;
	}
</style>
</head>
<body bgcolor="lime">
<br>${one}<br>
	ȸ�� ���� �˻� ����Դϴ�.
	<hr>

	<table>
		<tr>
			<td class="right">���̵�</td>
			<td class="left">${one.id}</td>
		</tr>
		<tr>
			<td class="right">�̸�</td>
			<td class="left">${one.name}</td>
		</tr>
		<tr>
			<td class="right">�ּ�</td>
			<td class="left"><a href="${one.url}"><button>Click</button></a></td>
		</tr>
		<tr>
			<td class="right">�̹���</td>
			<td class="left"><img src="resources/img/${one.img}"></td>
		</tr>
	</table>
</body>
</html>