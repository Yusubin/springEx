<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#result, #dd {
	color: red;
}
</style>
<script type="text/javascript">
	function idCheck() {

		idValue = document.getElementById("id").value
		//window:브라우저 전체 
		//document:body태그 
		//console:개발할대 확인하는창(f12) 
		//location:주소부분.
		//history:탐색 리스트
		text = ""
		img = ""
		if (idValue.length < 5) {
			//	document.getElementById("result").value="5미안, 다시작성하세요";
			document.getElementById("id").value = ""
			//text="<span style='color:red'>5미안, 다시작성하세요</span>"
			text = "<span style='color:red'>5미안, 다시작성하세요</span>"
			img = "<img src='resources/img/0fc108b9a016b2be79292b0bdfb17be2.gif'>"

		} else {
			//document.getElementById("result").value="Good";
			console.log("Good");
			text = "<span style='color:blue'>Good</span>"
			img = "<img src='resources/img/tenor.gif'>"
		}
		document.getElementById("result").innerHTML = text + "<br>" + img
	}

	function pwCheck() {
		pw1Value = document.getElementById("pass1").value
		pw2Value = document.getElementById("pass2").value
		text = ""
		if (pw1Value == pw2Value) {
			//	document.getElementById("result").value="5미안, 다시작성하세요";
			console.log("Good");
			text = "<span style='color:blue'>Good</span>"
			img = "<img src='resources/img/tenor.gif'>"

		} else {
			//document.getElementById("result").value="Good";
			console.log("동일하지않습니다.");
			document.getElementById("pass1").value = ""
			document.getElementById("pass2").value = ""
			text = "<span style='color:red'>동일하지않습니다</span>"
			img = "<img src='resources/img/0fc108b9a016b2be79292b0bdfb17be2.gif'>"
		}
		document.getElementById("result").innerHTML = text + "<br>" + img
	}
</script>
</head>
<body>
	<h3>자바스크립트테스트</h3>
	<hr>
	아이디:
	<input name="id" id="id" value="test">
	<button onclick="idCheck()">아이디 확인</button>
	<div id="dd"></div>
	<br> 패스워드 :
	<input id="pass1" name="pass1" value="1234">
	<br> 페스워드 확인 :
	<input id="pass2" name="pass2" value="1234">
	<br>
	<button onclick="pwCheck()">패스워드확인</button>
	<hr>
	<div id="result"></div>
</body>
</html>