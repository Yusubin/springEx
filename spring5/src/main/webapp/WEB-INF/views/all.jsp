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
	<h3>ȸ�� ���� �˻� ����Դϴ�.</h3>
	<hr>
	<c:forEach items="${list}" var="one">
		<table>
		<tr>
			<td class="left">���̵�</td>
			<td class="right">${one.id}</td>
		</tr>
		<tr>
			<td class="left">�н�����</td>
			<td class="right">${one.pw}</td>
		</tr>
		<tr>
			<td class="left">�̸�</td>
			<td class="right">${one.name}</td>
		</tr>
		<tr>
			<td class="left">��ȭ��ȣ</td>
			<td  class="right">${one.tel}</td>
		</tr>
	</table>
	
		<hr>
	</c:forEach>

</body>
</html>