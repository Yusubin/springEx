<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	환영합니다.....
	<br>

	<hr color='red'>
	<form action="create">
		id : <input type="text" name="id"><br> 
		name :<input type="text"name="name"><br> 
		_Url : <input type="text"name="url"><br> 
		_img: <input type="text" name="img"><br>
		<button >회원가입 요청</button>
	</form>

	<br>
	<hr color="blue">
	<form action="up">
		name: <input type="text" name="id"><br> 
		_Url: <input type="text" name="url"><br>
		<button>회원정보 수정</button>
	</form>
	
	<hr color="blue">
	<form action="del">
		id  : <input type="text" name="id" "><br>
		<button>회원탈퇴</button>
	</form>
	<a href="delete.jsp?id=${user}">
		<button>회원탈퇴</button>
	</a>
	<br>
</body>
</html>