<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
table, tr, td {
	margin-left: auto;
	margin-right: auto;
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
			<h3>�۾���</h3>
			<hr>

			<div id="d1">
				<h3>${userName}��ȯ���մϴ�.</h3>
				<hr>
				<form action="write">
				<input type="hidden" name="writer" style="width:300px;"
								value="${userName}" readonly="readonly">
					<table>
						<tr>
							<td class="left">����</td>
							<td class="right"><input type="text" name="title"  style="width:300px;"></td>
						</tr>
						
						<tr>
							<td class="left">����</td>
							<td class="right"><input type="text" name="content" style="width:300px; height:300px"></td>
						</tr>

					</table>
					<button>���</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>