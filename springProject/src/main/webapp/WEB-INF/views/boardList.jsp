<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%if(session.getAttribute("userId") != null){ %>
<h3> ${userName}�� ȯ���մϴ�. 
<a href="write.jsp"><button>�۾���</button></a><% } %></h3>
	<hr>
<table>
	<tr>
		<td class="left">��ȣ</td>
		<td class="left">����</td>
		<td class="left">�ۼ���</td>
	</tr>
					
	<c:forEach items="${list}" var="one">
		<tr>
			<td class="right">${one.id}</td>
			<td class="right"><a href="boardOne?id=${one.id}">${one.title}</a></td>
			<td class="right">${one.writer}</td>
	</c:forEach>
</table>
</body>
</html>