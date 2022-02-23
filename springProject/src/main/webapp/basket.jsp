<%@page import="com.hi.mvcProject.ProductVO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="resources/css/project1.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
button {
	color: white;
}

.right {
	background: white;
}
</style>


</head>
<body>
	<div id="total">
		<div id="top">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div id="top2">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
		<div id="center">
			<h3>장바구니 현재목록</h3>
			<hr>
			<%
				ArrayList<ProductVO> list = (ArrayList<ProductVO>) session.getAttribute("basket");
			int size = 0;
			if (list != null) {
				size = list.size();
			%>
			<%=size%>개가 장바구니에 들어있습니다.

			<table>
				<tr>
					<td class="left">상품번호</td>
					<td class="left">이름</td>
					<td class="left">가격</td>

					<td class="left">주문</td>
					<td class="left">삭제</td>

				</tr>

				<%
					for (ProductVO one : list) {
				%>
				<tr>
					<td class="right"><%=one.getId()%></td>
					<td class="right"><%=one.getName()%></td>
					<td class="right"><%=one.getPrice()%></td>
					<td class="right"><button>주문하기</button></td>
					<td class="right"><button>삭제하기</button></td>
				</tr>
				<%
					}
				%>
			</table>
			<%
				} else { %>
			
			<%=size%>개가 장바구니에 들어있습니다.
<% 
			}
			%>
		</div>
	</div>


</body>
</html>