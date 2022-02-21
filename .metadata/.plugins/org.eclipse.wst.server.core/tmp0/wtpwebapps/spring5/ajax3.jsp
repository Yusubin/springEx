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
				 url:"https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fwww.chosun.com%2Farc%2Foutboundfeeds%2Frss%2Fcategory%2Fentertainments%2F%3FoutputType%3Dxml&api_key=kecjkmg3mfkmxbef94bj6u08txpnwglrtlnea1ne",
				data:{
					url:"https://www.chosun.com/arc/outboundfeeds/rss/category/entertainments/?outputType=xml" ,
					api_key:"kecjkmg3mfkmxbef94bj6u08txpnwglrtlnea1ne",
					count : 20					},
					success: function(result){
					
					 list=result.items;
					
					 $(list).each(function (index, news){
						 console.log(index+" "+news.title);
						 console.log(index+" "+news.author);
						 img=news.thumbnail;
						 console.log(img)
						 title=news.title
						 link=news.link
						 pubDate=news.pubDate
						 
						 str="<h5><a href='"+link+"'>"+title+"</a></h5><p>"+pubDate+"</p>"
						 $("#rd").append("<div><img src='"+img+"' width=200px height=200px>'"+str+"</div>")
						 $("#rd").append()
					 });
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
	<div id="rd"></div>
</body>
</html>