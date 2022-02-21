<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="resources/img/sad.png">
<h3>회원가입</h3>
<hr>
<form action="insert">
		id : <input type="text" name="id"><br> 
		name : <input type="text"name="name"><br> 
		content:<input type="text"name="content"><br> 
		price: <input type="text" name="price"><br>
		<button >회원가입 요청</button>
</form>
<form action="up">
	id : <input type="text" name="id"><br> 
	content: <input type="text" name="content"><br>
	price: <input type="text" name="price"><br>
	<button >회원수정 요청</button>
</form>
</body>
</html>