<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
	#title{background:blue; color:white; font-size:20px;}
	#ansewer{background:white; color:gray; font-size:10px; text-style:bold;}
	
  table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
</style>
</head>
<body>
<div>
	<div class="well", style="width:20%; height:150px; float:left;"><h1>FAQ</h1>	<p>자주 묻는 질문사항</p></div>
	<div class="well", style="width:80%; height:150px; float:left;">
		<div id="faqBtn"><h4>FAQ<h4></div>
		<div id="qnaBtn"><h4>QnA</h4></div>
		<div id="qnaBtn"><h4>공지사항</h4></div>
	</div>
</div>
<div style="float:clear;"></div>
<hr>
<h3> 회원가입 </h3>
		<hr>
		<form action="insert">
			<table>
				<tr>
					<td class="left">아이디</td>
					<td class="right"><input type="text" name="id"></td>
				</tr>
				<tr>
					<td class="left">패스워드</td>
					<td class="right"><input type="text" name="pw"></td>
				</tr>
				<tr>
					<td class="left">이름</td>
					<td class="right"><input type="text" name="name"></td>
				</tr>
				<tr>
					<td class="left">전화번호</td>
					<td class="right"><input type="text" name="tel"></td>
				</tr>
			</table>
			<br>
			<button class="btn-info">회원가입</button>
		</form>
</body>
</html>