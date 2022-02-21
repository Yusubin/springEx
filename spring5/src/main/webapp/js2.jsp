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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
//아이디가 b1인 것을 클릭햇을때 가로안에 넣은 이름없는 함수를 실행해주렴
	
	$(function(){
		//메모리에 돔트리읽으면 함수의 내용대로 처리해줘
		//html:태그가 있는 html 코드 일부분으로 대체
		//text:태그가없는 텍스트만]
		text = ""
		img = ""
		$('#b1').click(function(){
			idValue=$('#id').val()
			if(idValue.length<5){
				text = "<span style='color:red'>5미안, 다시작성하세요</span>"
					img = "<img src='resources/img/0fc108b9a016b2be79292b0bdfb17be2.gif'>"
				$('#id').val('')
			}else{
				text ="<span style='color:blue'>Good</span>"
				img = "<img src='resources/img/tenor.gif'>"
			}
			
			$('#result').html(text+img)
		})
		
		$('#b2').click(function(){
			pw1Value=$('#pass1').val()
			pw2Value=$('#pass2').val()
			if(pw1Value==pw2Value){
				text = "<span style='color:blue'>Good</span>"
				img = "<img src='resources/img/tenor.gif'>"
				$('#id').val('')
			}else{
				text = "<span style='color:red'>동일하지않습니다</span>"
					img = "<img src='resources/img/0fc108b9a016b2be79292b0bdfb17be2.gif'>"
				$('#pass1').val('')
				$('#pass2').val('')
			}
			
			$('#result').html(text+img)
		})
		
	})
	
</script>
</head>
<body>
	<h3>자바스크립트테스트</h3>
	<hr>
	아이디:
	<input name="id" id="id" value="test">
	<button id="b1">아이디 확인</button>
	<div id="dd"></div>
	<br> 패스워드 :
	<input id="pass1" name="pass1" value="1234">
	<br> 페스워드 확인 :
	<input id="pass2" name="pass2" value="1234">
	<br>
	<button id="b2">패스워드확인</button>
	<hr>
	<div id="result"></div>
</body>
</html>