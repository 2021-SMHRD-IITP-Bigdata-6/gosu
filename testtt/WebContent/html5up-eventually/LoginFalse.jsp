<%@page import="com.book.DAO.BookDAO"%>
<%@page import="com.book.DTO.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>Eventually by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
		<body class="is-preload">
		<!-- Header -->
			<header id="header">
				<h1>로그인 실패입니다</h1>
			</header>
		<!-- Signup Form -->
			<form  method="post" action="LoginCon.do" >
				<input type="email" name="email"  placeholder="아이디">
				<input type="password" name="pw"  placeholder="비밀번호" />
				<input type="submit" value="로그인">
			</form>
			<a href="/project/Home.jsp" align="center">메인페이지 돌아가기</a>
		<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
					<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; Untitled.</li><li>Credits: <a>대표 김진우</a></li>
				</ul>
			</footer>
		<!-- Scripts -->
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