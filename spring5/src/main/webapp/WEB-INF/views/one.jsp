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
	ȸ�� ���� �˻� ����Դϴ�.
	<hr>

	<table>
		<tr>
			<td>���̵�</td>
			<td>${one.id}</td>
		</tr>
		<tr>
			<td>�н�����</td>
			<td>${one.pw}</td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td>${one.name}</td>
		</tr>
		<tr>
			<td>��ȭ��ȣ</td>
			<td>${one.tel}</td>
		</tr>
	</table>
</body>
</html>