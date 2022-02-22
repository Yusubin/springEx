<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="resources/css/project1.css">
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
		<h3> 회원가입 </h3>
		<hr>
		<form action="insert">
			<table>
				<tr>
					<td class="left">아이디</td>
					<td class="right"><input type="text" name="id"></td>
				</tr>
				<tr>
					<td class="left">패스워드</td>
					<td class="right"><input type="text" name="pw"></td>
				</tr>
				<tr>
					<td class="left">이름</td>
					<td class="right"><input type="text" name="name"></td>
				</tr>
				<tr>
					<td class="left">전화번호</td>
					<td class="right"><input type="text" name="tel"></td>
				</tr>
			</table>
			<button>회원가입</button>
		</form>

		<br>
		
		<form action="check">
			<table>
				<tr>
					<td class="left">아이디</td>
					<td class="right"><input type="text" name="id"></td>
				</tr>
				<tr>
					<td class="left">패스워드</td>
					<td class="right"><input type="text" name="pw"></td>
				</tr>
			</table>
			<button>로그인</button>
		</form>
	</div>
	</div>

</body>
</html>