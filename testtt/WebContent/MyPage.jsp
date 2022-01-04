<%@page import="com.book.DAO.BookDAO"%>
<%@page import="com.book.DTO.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="no-sidebar is-preload">
		<%
			BookDAO dao = new BookDAO();
			BookDTO dto = (BookDTO) session.getAttribute("dto");
		%>
		<div id="header">
				<h2 style="color:#C4DEFF;">
				<a><%=dto.getMem_name()%>님의 마이페이지</a></h2>
		<nav id="nav">
			<ul>
				<li><a href="Home.jsp">홈</a></li>
				<li><a href="categoryStart.jsp">E-BOOK 검색</a></li>
			</ul>
		</nav>

		<br> <br> <br> <br> 
		<a href="MemberInfo.jsp">
			<button type="button" style="color:white; font-size:2em;
			border-radius:0.5en; padding:5px 15px;">내 정보 보기 및 수정</button>
		</a>
		<br><br><br><br><br><br><br><br><br><br><br><br><br>
	<footer>
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
		</footer>
		</div>
</body>
</html>