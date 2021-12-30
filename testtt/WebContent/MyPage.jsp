<%@page import="com.book.DTO.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
</head>
<html>
<head>
<title>마이 페이지</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />

</noscript>
</head>
<body class="no-sidebar is-preload">
		<%
			BookDTO dto = (BookDTO)session.getAttribute("dto");
		
		%>

	<div id="header">
		<!-- Inner -->
		<div class="inner">
			<header>
				<h1>마이페이지</h1>
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

	<!-- Main -->
<article id="work" class="wrapper style2">
				<div class="container">
					<br><br><br><br>					  
					<div class="row aln-center">
						<div class="col-4 col-6-medium col-12-small">
							<section class="box style1">
						
						<ul>
					<a href="">
					<button style="color:black;">내 정보 관리</button></a>								
						
							</section>
						</ul>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box style1">
									<ul>
					<a href="WishList.jsp">
						<button style="color:black;">찜 목록 보기</button></a>								
						
						</section>
						</ul>
						</div>
					
					</div>
				</div>
			</article>
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.dropotron.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
		
		<ul class="copyright">
					<p>&copy; Untitled.</p>Credits: <a>대표 김진우</a>
				</ul>
			</footer>
		
</body>
</html>