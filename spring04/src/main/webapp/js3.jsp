<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Dialog - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#b2").click(function() {
			$("#dialog").css('visibility', 'visible')
			$("#dialog").dialog();
		})
		$("#progressbar").progressbar({
			value : false
		});
		$("button").on("click",function(event) {
			var target = $(event.target), progressbar = $("#progressbar"), progressbarValue = progressbar.find(".ui-progressbar-value");

			if (target.is("#colorButton")) {
				progressbarValue.css({"background" : '#'+ Math.floor(Math.random() * 16777215).toString(16)});
			}
		});

	});
</script>
<style>
#progressbar .ui-progressbar-value {
	background-color: #ccc;
}
</style>
</head>
<body>
	<button id="b2">다운로드</button>
	<div id="dialog" title="Starting download..."
		style="visibility: hidden;">
		<div id="progressbar"></div>
		<button id="colorButton">Random Color</button>
	</div>
</body>
</html>