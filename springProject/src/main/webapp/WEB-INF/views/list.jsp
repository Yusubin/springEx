<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table>
	<tr>
		<td class="left">상품번호</td>
		<td class="left">이름</td>
		<td class="left">가격</td>
		<td class="left">이미지</td>

	</tr>
					
	<c:forEach items="${list}" var="one">
		<tr>
			<td class="right">${one.id}</td>
			<td class="right"><a href="one?id=${one.id}">${one.name}</a></td>
			<td class="right">${one.price}</td>
			<td class="right"><a href="one?id=${one.id}">
			<img src="resources/img/${one.img}" width="200px"></a></td></tr>
	</c:forEach>
</table>

<!-- 비동기식과 동기식을 혼용해서 쓰면 안된다. (ex) AJAX와 a href -->