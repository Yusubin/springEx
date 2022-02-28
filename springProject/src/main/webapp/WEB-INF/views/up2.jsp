<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="total">
		<div id="top">
			<jsp:include page="../../top.jsp"></jsp:include>
		</div>
		<div id="top2">
			<jsp:include page="../../top2.jsp"></jsp:include>
		</div>
		<div id="center">
			<h3>물건 상세 페이지</h3>
			<hr>
			<form action="up">
				<input type="hidden" name="id" value="${one.id}">
				<table>
					<tr>
						<td class="left">제목</td>
						<td class="right"><input type="text" name="title"
							value="${one.title}" style="width:300px;"></td>
					</tr>
					<tr>
						<td class="left">내용</td>
						<td class="right"><input type="text" name="content"
							value="${one.content}" style="width:300px; height:300px">
					</tr>
				</table>
				<button>수정</button>
			</form>
		</div>
	</div>


</body>
</html>