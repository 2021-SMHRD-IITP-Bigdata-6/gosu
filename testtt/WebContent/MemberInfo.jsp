<%@page import="com.book.DAO.BookDAO"%>
<%@page import="com.book.DTO.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 보기</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<meta charset="UTF-8">

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">
	<%
		BookDAO dao = new BookDAO();
		BookDTO dto = (BookDTO) session.getAttribute("dto");
	%>
	<div id="header">

		<form action="UpdateCon.do" method="post" align="center">

			<h2>
				<a><%=dto.getMem_name()%>님의 정보 보기 </a>
			</h2>
			<br>
			<br> <input name="email" type="text" value=""
				style="width: 500px; margin: 0 auto;">
			<br> <input name="pw" type="password" value=""
				style="width: 500px; margin: 0 auto;">
			<br> <input name="name" type="text" value=""
				style="width: 500px; margin: 0 auto;">
			<br> <input name="tel" type="text" value=""
				style="width: 500px; margin: 0 auto;">
			<br> <a href="/project/html5up-eventually/Update.jsp" align="center">정보 수정 하기</a>
		</form>

		<br>
		<!-- Footer -->
		
		<!-- Scripts -->

	</div>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src='https://unpkg.com/magic-snowflakes/dist/snowflakes.min.js'></script>
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