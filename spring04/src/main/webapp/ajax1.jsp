<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>

<script>
$(function(){
	var no = ""
	$('#b1').click(function(){
		$.ajax({
			url:"ajax1",
			data:{
				phone: $('#tel').val()
			},
			success: function(x){
				$('#result').html('인증번호는'+x);
				no=x;
			},
			error: function(){
				alert('실패!');
			},
			
		});
	});
	
	$('#b3').click(function(y){//인증번호 
		tel2Value=$('#confirm').val();
		alert(no);
		alert(tel2Value)
		
		noResult="인증실패"
		if(tel2Value == no){
			alert('if-------------')
			noResult="인증성공"
		}
		 
		 $('#result').html(noResult)
	});
	
	$('#b2').click(function(m){
		$.ajax({
			url:"ajax2",
			data:{
				money:$('#money').val(),
				payment: $('#choice').val()
				
			},
			success: function(m){
				$('#result1').html("결재할금액은:"+m)
			},
			error: function(){
				alert('실패!');
			},
			
		});
	});
	
	
	
	
});
</script>
</head>
<body>

인증받을 전화번호:
<input type="text" id="tel">
<button id="b1">인증번호받기.</button><br>
<input type="text" id="confirm">
<button id="b3">인증번호확인.</button><br>
<div id="result"></div>
<br>
<hr color="red"><br>
결재금액:<input type="text" id="money"><br>
결제수단(1. 계좌 이체, 2. 신용카드 3. 휴대폰결제): <input type="text" id="choice">
<button id="b2">결제하기.</button><br>
<br>
<hr color="red">

<div id="result1"></div>
</body>
</html>