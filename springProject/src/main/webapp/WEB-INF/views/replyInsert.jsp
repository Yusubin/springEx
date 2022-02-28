<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tr>
	<td><img src="resources/img/reply.png" width=30>
		${one.writer} : ${one.content}</td>

	<c:if test="${userId eq one.writer}">
		<td>
			<button id="deltBtn">ªË¡¶</button>
		</td>
	</c:if>
<tr>