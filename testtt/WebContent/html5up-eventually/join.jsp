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
			</header>

		<!-- Signup Form -->
			<form  method="post" action="JoinCon.do"style="width: 500px; margin: 0 auto;" >
				<a align="center"><h1>회원가입</h1></a>
				이메일<input type="email" name="email"  placeholder="아이디">
				비밀번호<input type="password" name="pw"  placeholder="비밀번호" />
				이름<input type="text" name="name"  placeholder="이름" />
				전화번호<input type="text" name="tel"  placeholder="전화번호" />
				나이<input type="text" name="age"  placeholder="나이" />
				<br>
		
				<input type="radio" name="gender" value="M" checked  id="man">
				<label for="man">남자</label> 
				<input type="radio" name="gender" value="W" checked  id="woman">
				<label for="woman">여자</label>


				
				<div align="center"><input id="su" type="submit" value="회원가입"></div>
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

	</body>
</html>