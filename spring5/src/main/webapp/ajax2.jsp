<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<script>
 $(function(){//body dom(Document object model) tree 로 ram에 읽어들인후 function실행, 익명함수
	 //var a=100    let a= 100          //table-tr-td
		 $('#movie').click(function(){
			 $.ajax({
				 url:"movie",
				 data: {
					title: $('#title').val(),
					price:$('#price').val()
				 },
				 success: function(r){
					 alert(r);
					 $('#rd').html();
				 },
				 error: function(){
					 alert('ajax실패 @');
					 
				 },
			 });
		 });
 
		 $('#commentBtn').click(function(){
			 
			 $.ajax({
				 url:"comment",
				 data: {
					 comment: $('#comment').val(),
				 },
				 success: function(comment){
					 alert(comment);
					 $('#rd').append("<img src='resources/img/sad.png' width='50px' height='50px'>");
					 $('#rd').append(comment);
					 $('#rd').append("<br>");
				 },
				 error: function(){
					 alert('ajax실패 @');
					 
				 },
			 });
			 
		 });
     	 $('#idCheck').click(function(){
     		 
     		$.ajax({
				 url:"user",
				 data: {
					id: $('#id').val(),
				 },
				 success: function(u){
					 alert(u);
					 $('#rd').html(u);
				 },
				 error: function(){
					 alert('ajax실패 @');
					 
				 },
			 });
     	 });
 })
</script>
</head>
<body>
	영화제목 <input type="text" name="title" id="title">
	영화 관람료: <input type="text" name="price" id="price">
	<button id="movie">영화 정보 제출</button>

	<hr color="red">
	
	댓글: <input type="text" name="comment" id="comment">
	<button id="commentBtn">댓글달기</button>
	
	<hr color="blue">
	<hr color="red">
	
	가입할 ID: <input type="text" name="id" id="id">
	<button id="idCheck">id중복체크</button>
	
	<hr color="blue">
	<div id="rd"></div>
</body>
</html>