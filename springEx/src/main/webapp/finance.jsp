<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="red">
<h3>주식 정보 시스템입니다.</h3>
<hr>

<form action="stock.do">
code : <input name="code"><br>
<button>code로 네이버에서 크롤링하여 db에 저장</button>
</form>
<a href="http://localhost:8080/springEx/stock.do?code=005930"><button>현대자동차</button></a><!-- 005930 -->
<a href="http://localhost:8080/springEx/stock.do?code=051910"><button>LG화학</button></a><!-- 051910 -->
<a href="http://localhost:8080/springEx/stock.do?code=035720"><button>삼성</button></a><!-- 035720 -->
<hr>
<form action="create.do">
code : <input name="code"><br>
company : <input name="company"><br>
today : <input name="today"><br>
yesterday : <input name="yesterday"><br>
high : <input name="high"><br>
<button>db에 저장</button>
</form>
</body>
</html>