<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>E-BOOK 寃���</title>
<title>E-BOOK 장르</title>
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
					<h1>E-BOOK 장르</h1>
				</header>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="Home.jsp">홈</a></li>
					<li><a href="BookGenre.html">E-BOOK 장르</a></li>
					<li><a href="BookInfo.html">E-BOOK 정보</a></li>
					<li><a href="MyPage.html">마이 페이지</a></li>
				</ul>
			</nav>
		</div>

		<select>
			<option>ㅎㅇ</option>
			<option>ㅎㅇ2</option>
			<option>ㅎㅇ3</option>

		</select> <select>
			<option>ㅎㅇ</option>
		</select> <select>
			<option>ㅎㅇ</option>
		</select>
		<h1>선택하신 장르입니다.</h1>
		<button align='right'>
			<a href="categoryDetail.jsp"> 전체보기</a>
		</button>
		<!-- Carousel -->
			<%
			for(int i = 0; i <=5; i++) {%>
		<section class="carousel">
			<div class="reel">
			<%for(int j = 0; j <=10; j++){ %>
						<article>
							<a href="BookInfo.jsp" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
							<header>
								<h3><a href="#"><%=i %></a></h3>
							</header>
						</article>
			<%} %>
			</div>
		</section>
		<%} %>

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