<%@page import="com.book.DTO.BookDTO"%>
<%@page import="com.book.DTO.ListDTO"%>
<%@page import="com.book.DAO.BookDAO"%>
<%@page import="com.book.DAO.ListDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜 목록</title>
</head>
<body>

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="left-sidebar is-preload">
	

	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">

			<!-- Inner -->
			<div class="inner">
				<header>
					<h1>나의 찜 목록</h1>
				</header>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="Home.jsp">홈</a></li>
					<li><a href="categorySearch.jsp">E-BOOK 장르</a></li>
					<li><a href="BookInfo.jsp">E-BOOK 정보</a></li>
					<li><a href="categoryStart.jsp">E-BOOK 검색</a></li>
					<li><a href="MyPage.jsp">마이 페이지</a></li>
				</ul>
			</nav>

		</div>
		
		<hr width = "100%" color = "gray" size="1">
		
		<!-- 반복문 -->
		<%
		ListDAO ldao = new ListDAO();
		ArrayList<ListDTO> book_ar = ldao.selectList();
		
		for(int i=0; i<book_ar.size(); i++){
			out.print("<div class='row get-50'>");
			out.print("<div class='col-4'>");
			out.print("<a href='categoryDetail.jsp'>");
			out.print("<img src=''>");
			out.print("<a>");
		}
		
		%>
		<section>
			<div class="row gtr-50">
				<div class="col-4">
					<a href="#" class="image fit"><img src="images/pic01.jpg"
						alt="" /></a>
				</div>
				<div class="col-8">
					<h4>내가 찜 누른 책</h4>
					<p>간단한 설명</p>
				</div>
				<div class="col-4">
					<a href="#" class="image fit"><img src="images/pic11.jpg"
						alt="" /></a>
				</div>
				<div class="col-8">
					<h4>내가 찜 누른 책</h4>
					<p>간단한 설명</p>
				</div>
				<div class="col-4">
					<a href="#" class="image fit"><img src="images/pic12.jpg"
						alt="" /></a>
				</div>
				<div class="col-8">
					<h4>내가 찜 누른 책</h4>
					<p>간단한 설명</p>
				</div>
				<div class="col-4">
					<a href="#" class="image fit"><img src="images/pic13.jpg"
						alt="" /></a>
				</div>
				<div class="col-8">
					<h4>내가 찜 누른 책</h4>
					<p>간단한 설명</p>
				</div>
				<div class="col-4">
					<a href="#" class="image fit"><img src="images/pic14.jpg"
						alt="" /></a>
				</div>
				<div class="col-8">
					<h4>내가 찜 누른 책</h4>
					<p>간단한 설명</p>
				</div>
			</div>
			
			<footer>
				<div>
				<h4 align="center">
				<a href="WishList.jsp" class="button">맨 위로</a>
				</h4>
				</div>
			</footer>
		</section>
		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.dropotron.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
</body>
</html>
</html>