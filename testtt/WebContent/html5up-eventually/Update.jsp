<%@page import="com.book.DAO.BookDAO"%>
<%@page import="com.book.DTO.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>회원정보 수정</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
		<body class="is-preload">
		<!-- Header -->
			<header id="header">
			</header>
		<!-- Signup Form -->
			<form action="UpdateCon.do" method="post" align="center">
			<%
							BookDTO dto = (BookDTO) session.getAttribute("dto");
					      	System.out.println("현재 로그인 한 사람의 email 값 :"+dto.getMem_id());
			%>
			<h2><%=dto.getMem_name()%> 회원 정보 수정 </h2>
			<br>
		<select name="select" style="width: 500px; margin: 0 auto;">
			<option value="name">name</option>
			<option value="pw">pw</option>
			<option value="age">age</option>
			<option value="tel">tel</option>
			<option value="gender">gender</option>
		</select>
		변경할  DATA <input type="text" name="data" style="width: 500px; margin: 0 auto;">
		<br>
		<input type="submit"  value="회원수정"  >
	</form>
			<br>
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