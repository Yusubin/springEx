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
		_pw:<input type="text"name="pw"><br> 
		name : <input type="text"name="name"><br> 
		_tel: <input type="text" name="tel"><br>
		<button >회원가입 요청</button>
</form>
<form action="up">
	id : <input type="text" name="id"><br> 
	_tel: <input type="text" name="tel"><br>
	<button >회원수정 요청</button>
</form>
</body>
</html>