<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link 	type="text/css" 
		rel="stylesheet" 
		href="resources/css/project1.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "boardList", //view/list.jsp가 결과. 
			success : function(list1) {
				$("#d1").html(list1);
			},
			error : function() {
				alert('실패');
			}
		});

	});
</script>
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
	<hr>
	
	<div id="d1">
				
	
	</div>
	</div>
</div>


</body>
</html>