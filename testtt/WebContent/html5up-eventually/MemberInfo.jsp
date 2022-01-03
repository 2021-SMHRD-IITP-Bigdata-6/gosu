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
		BookDTO dto = (BookDTO) session.getAttribute("dto");
	%>
	<!-- Header -->
	<div id="header">

		<!-- Signup Form -->

		<form action="UpdateCon.do" method="post" align="center">

			<h2>
				<a><%=dto.getMem_name()%>님의 정보 수정 </a>
			</h2>
			<br>
			<br> <input name="email" type="text" placeholder="Email를 입력하세요"
				style="width: 500px; margin: 0 auto;">
			<br> <input name="pw" type="password" placeholder="PW를 입력하세요"
				style="width: 500px; margin: 0 auto;">
			<br> <input name="name" type="text" placeholder="이름를 입력하세요"
				style="width: 500px; margin: 0 auto;">
			<br> <input name="tel" type="text" placeholder="전화번호를 입력하세요"
				style="width: 500px; margin: 0 auto;">
			<br> <input type="submit" value="정보 수정 완료"> <br>
			<br> <a href="/project/Home.jsp" align="center">메인페이지 돌아가기</a>
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