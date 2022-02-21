<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<script>
 $(function(){
		 $('#movie').click(function(){
			 $.ajax({
				 url:"resources/file/MOCK_DATA.json",
				success: function(result){
					alert(result.length);
					$(result).each(function(i,one){
						
						console.log(one.id);
						$("#rd").append(one.first_name +" "+ one.last_name +" "+ one.email+"<br>")
					})
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
	
	<button id="movie">조선일보 문화</button>
	<hr color=red>
	<div id="rd"></div>
</body>
</html>