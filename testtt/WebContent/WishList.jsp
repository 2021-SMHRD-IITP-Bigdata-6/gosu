<%@page import="com.book.DAO.T_EvaluationDAO"%>
<%@page import="com.book.DTO.T_EvaluationDTO"%>
<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.book.DTO.T_BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.book.DAO.T_BookDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>찜 목록</title>
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
					<h1>찜 목록</h1>
				</header>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="Home.jsp">홈</a></li>
					<li><a href="BookInfo.jsp">E-BOOK 정보</a></li>
					<li><a href="categoryStart.jsp">E-BOOK 검색</a></li>
					<li><a href="MyPage.jsp">마이 페이지</a></li>
				</ul>
			</nav>

		</div>


		<h3>내가 찜한 E-BOOK</h3>

		<!-- Carousel -->

		<%
			request.setCharacterEncoding("UTF-8");

		T_EvaluationDAO dao = new T_EvaluationDAO();

		ArrayList<T_EvaluationDTO> arr = dao.wishbook();

		%>

		<%
			for (int i = 0; i < arr.size(); i++) {
		
			String name = arr.get(0).getMem_id(); //회원ID
			String wish = arr.get(0).getWish_yn(); //찜 목록
		%>

		<section class="carousel">
			<div class="reel">
				<%
					for (int j = 0; j <= i; j++) {
				%>
				<article>
					<a href="BookInfo.jsp" id="info"><%=arr.get(i).getMem_id()%></a>

				</article>
				<%
					}
				%>
			</div>

		</section>
		<%
			}
		%>

		<!-- Scripts -->

		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.dropotron.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
		<script
			src='https://unpkg.com/magic-snowflakes/dist/snowflakes.min.js'></script>
		<script>
			var sf = new Snowflakes({
				color : "#ffffff", // 색상
				count : 90, // 갯수
				minOpacity : 0.1, // 최소 투명도 0: 투명 | 1: 불투명
				maxOpacity : 0.3
			// 최대 투명도
			});
		</script>
</body>
</html>