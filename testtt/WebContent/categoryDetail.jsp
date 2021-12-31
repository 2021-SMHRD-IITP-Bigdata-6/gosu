<%@page import="com.book.DTO.T_BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.book.DAO.T_BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Helios by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
	<%
		String search = request.getParameter("search");
       T_BookDAO dao = new T_BookDAO();
       ArrayList<T_BookDTO> arr = dao.selectbook();
	%>
		<title><%=search %>서점</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1>Helios</h1>
							</header>
						</div>
						
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="Home.jsp">홈으로</a></li>
								<li><a href="categoryStart.jsp">검색창으로</a></li>
								<li><a href="categorySearch.jsp">카테고리</a></li>
							</ul>
						</nav>

				</div>

			<h1>선택하신 장르입니다.</h1>
			<!-- Carousel -->
				<section class="carousel">
					<div class="reel">
						<%for(int i = 0; i < arr.size(); i++){ 
							if(search.equals(arr.get(i).getBook_category())){%>
							<img src="<%=arr.get(i).getBook_img()%>" id="image" width="300" height="300">
							<header>
								 <a href="BookInfo.jsp" id="info"><%=arr.get(i).getBook_nmae() %> ♡</a>
							</header>
						</article>
							<%} %>
						<%} %>
<%-- 						<br>
						<%for(int i = 0; i <=10; i++){ %>
						<article>
							<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
							<header>
								<h3><a href="#">second<%=i %></a></h3>
							</header>
						</article>
						<%} %>
						<br>
						<%for(int i = 0; i <=10; i++){ %>
						<article>
							<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
							<header>
								<h3><a href="#">thrid<%=i %></a></h3>
							</header>
						</article>
						<%} %> --%>
						</div>
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