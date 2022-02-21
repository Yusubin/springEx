<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<script type="text/javascript" src="resources/js/out.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	call()
	//제이쿼리 자주쓰는 자바사스크립트 기능을 라이브러리로 만들어놓아서 복잡한 문법을 단순화 ㅣ시켜줌
	//Document Object Model(DOM) tree
	//document.ready()=$
	$(function(){
		
		//alert('html이 ram에 모두 로딩되었음 ')
		
		alert("id가 ${user}인 ${uname}님 환영합니다.")
	})
</script>
</head>
<body>
	환영합니다.....
	<br>

	<hr color='red'>
	<form action="create">
		아이디 : <input type="text" name="id"><br> 패스워드 : <input
			type="text" name="pw"><br> 이름 : <input type="text"
			name="name"><br> 전화번호 : <input type="text" name="tel"><br>
		<button >회원가입 요청</button>
	</form>
	<br>
	<hr color="blue">
	<form action="check.hi">
		아이디 : <input type="text" name="id" style="background: lime;"><br>
		패스워드 : <input type="text" name="pw" style="background: lime;"><br>
		<button style="background: yellow; color: red; width: 100px;">로그인
			요청</button>
	</form>
	<br>
	<hr color="blue">
	<form action="up">
		<input type="text" name="id"><br> 전화번호 : <input
			type="text" name="tel"><br>
		<button>회원정보 수정</button>
	</form>
	<br>
	<hr color="blue">
	<form action="one.jsp">
		아이디 : <input type="hidden" name="id" value="${user}"><br>
		<button>회원정보 검색</button>
	</form>
	<a href="one.jsp?id=${user}">${user} 검색 </a>
	<br>
	<hr color="blue">
	<form action="del">
		아이디 : <input type="text" name="id" value="${user}"><br>
		<button>회원탈퇴</button>
	</form>
	<a href="delete.jsp?id=${user}">
		<button>회원탈퇴</button>
	</a>
	<br>
	<hr color="blue">
	<a href="list.jsp">
		<button style="color: yellow; background: red;">전체 목록 보기</button>
	</a>
</body>
</html>