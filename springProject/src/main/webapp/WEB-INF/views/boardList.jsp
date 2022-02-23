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
<h3> ${userName}님 환영합니다. 
<a href="write.jsp"><button>글쓰기</button></a><% } %></h3>
	<hr>
<table>
	<tr>
		<td class="left">번호</td>
		<td class="left">제목</td>
		<td class="left">작성자</td>
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