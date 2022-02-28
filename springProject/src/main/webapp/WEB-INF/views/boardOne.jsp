<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="resources/css/project1.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style type="text/css">
table, tr, td {
	margin-left: auto;
	margin-right: auto;
}

#center {
	background: white;
}
</style>
<script>
	$(function() {
		$('#commentBtn').click(function() {

							$.ajax({
								url : "replyInsert",
								data : {
									bbsid : ${one.id},
									content : $('#comment').val(),
									writer : "${userId}"
								},
								success : function(result) {
									$('#comment').val();
									$('#commem').append(result);
								},
										error : function() {
											alert('ajax���� @');

										},
									});

						});
		
		$('#delete').click(function() {
			if(confirm("������ �����Ͻðڽ��ϱ�?")){
				$.ajax({
					url : "del",
					data : {
						id: ${one.id}
					},
					success : function(result) {
						if(result==1){
							location.href="bbs.jsp";
						}
					},
					error : function() {
						alert('ajax���� @');

					},
				});
			}
							
		});
		
		$('#deltBtn').click(function() {
			if(confirm("�����Ͻðڽ��ϱ�?")){
				$.ajax({
					url : "replyDelete",
					data : {
						id: ${one.id}
					},
					success : function(result) {
						if(result==1){
							location.href="bbs.jsp";
						}
					},
					error : function() {
						alert('ajax���� @');

					},
				});
			}
							
		});

	});
</script>
<style>
#commen {
	text-align: left;
}

#commentBtn, #deltBtn {
	font-size: 10px;
	width: 80px;
}
</style>
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

			<h3>�� �� ������</h3>
			<hr>
			<table>
				<tr>
					<td class="left">����</td>
					<td class="right">${one.title}</td>
				</tr>
				<tr>
					<td class="left">�۾���</td>
					<td class="right">${one.writer}</td>
				</tr>
				<tr>
					<td class="left">����</td>
					<td class="right">${one.content}</td>
				</tr>

			</table>
			<c:if test="${userName eq one.writer}">
				<a href="del?id=${one.id}.jsp">
					<button id="delete">DELETE</button>
				</a>
				<a href="up2?id=${one.id}.jsp"><button>UPDATE</button></a>
				<hr>
			</c:if>
			���
			<!-- �α����ѻ���� �ۼ��ڰ� �����ϸ�  
				����, ���� ��ư�� ��Ÿ����������.���ǰ��� writer�� �����ϸ� %>-->
			<!-- userId:���� ��Ʈ����Ʈ  one.writer:�� ��Ʈ����Ʈ. �Ѵ� ��Ʈ����Ʈ�̹Ƿ�...    -->

			<br>
			<table id="commem">

				<%
					if (session.getAttribute("userId") != null) {
				%>
				<tr>
					<td><input type="text" name="comment" id="comment"></td>
					<td><button id="commentBtn">��۴ޱ�</button></td>

				</tr>
				<%
					}
				%>
				<c:forEach var="one" items="${list}">

					<tr>
						<td><img src="resources/img/reply.png" width=30>
							${one.writer} : ${one.content}</td>

						<c:if test="${userId eq one.writer}">
							<td>
								<a href="replyDelete?id=${one.id}&content=${one.content}.jsp"><button id="deltBtn">����</button></a>
							</td>

						</c:if>

					</tr>
				</c:forEach>
			</table>
			<div></div>
		</div>
	</div>

</body>
</html>