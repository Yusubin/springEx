<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<script>
 $(function(){//body dom(Document object model) tree �� ram�� �о������ function����, �͸��Լ�
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
					 alert('ajax���� @');
					 
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
					 alert('ajax���� @');
					 
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
					 alert('ajax���� @');
					 
				 },
			 });
     	 });
 })
</script>
</head>
<body>
	��ȭ���� <input type="text" name="title" id="title">
	��ȭ ������: <input type="text" name="price" id="price">
	<button id="movie">��ȭ ���� ����</button>

	<hr color="red">
	
	���: <input type="text" name="comment" id="comment">
	<button id="commentBtn">��۴ޱ�</button>
	
	<hr color="blue">
	<hr color="red">
	
	������ ID: <input type="text" name="id" id="id">
	<button id="idCheck">id�ߺ�üũ</button>
	
	<hr color="blue">
	<div id="rd"></div>
</body>
</html>