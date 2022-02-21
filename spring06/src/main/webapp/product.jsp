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
<h3>회원전체검색</h3>
<a href="all">
	<button >조회</button>
</a>

<form action="one">
	id : <input type="text" name="id"><br> 
	<button >조회</button>
</form>

<form action="insert">
		id : <input type="text" name="id"><br> 
		name : <input type="text"name="name"><br> 
		content:<input type="text"name="content"><br> 
		price: <input type="text" name="price"><br>
		_img: <input type="text" name="img"><br>
		<button>상품등록</button>
</form>
</html>