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
			<h3>�Խñ� ��ϿϷ�.</h3>
			<hr>
				<a href="bbs.jsp"><button>��Ϻ���.</button></a>
				<a href="write.jsp"><button>�۾���.</button></a>
				<a href="boardOne?id=${id}.jsp"><button> ��Ȯ���Ϸ�����.</button></a>
			</div>
		</div>
	</div>
</body>
</html>