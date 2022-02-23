<%@page import="com.hi.mvcProject.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="resources/css/project1.css">

<style>
#pp {
	text-align: center;
	color: white;
}
</style>
<%
	ArrayList<ProductVO> list = (ArrayList<ProductVO>) session.getAttribute("basket");
int p = 0;
int size=0;
if (list != null) {
	for (ProductVO one : list) {
		p += one.getPrice();
	}
	size=list.size();
}
%>

<a href="#"><span class="label label-danger"><%=size%></span></a>
<br>


<%
	

%>

<p id="pp">
	TOTAL :
	<%=p%>원
<p>