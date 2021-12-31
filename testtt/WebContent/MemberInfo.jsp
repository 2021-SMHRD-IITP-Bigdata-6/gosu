<%@page import="com.book.DAO.BookDAO"%>
<%@page import="com.book.DTO.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>내 정보 보기</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />

</noscript>
</head>
<meta charset="UTF-8">
		<title>내 정보 보기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
		<body class="is-preload">
		<!-- Header -->
			<header id="header">
			</header>
		<!-- Signup Form -->
			<form  method="post" action="UpdateCon.do"style="width: 500px; margin: 0 auto;" >
				<a align="center"><h1>내 정보 수정</h1></a>
				이메일<input type="email" name="email"  placeholder="아이디">
				비밀번호<input type="password" name="pw"  placeholder="비밀번호" />
				이름<input type="text" name="name"  placeholder="이름" />
				전화번호<input type="text" name="tel"  placeholder="전화번호" />
				나이<input type="text" name="age"  placeholder="나이" />
				<br>
			
				<button href="/project/Home.jsp" align="center">정보 수정 완료</button>
			</form>
			<br>
		<!-- Footer -->
			<footer id="footer">

				<ul class="copyright">
					<a>&copy; Untitled.</a>
						<br>			
					 <a>Credits:대표 김진우</a>
				</ul>
			</footer>
		<!-- Scripts -->
			
			<script src="/project/html5up-eventually/assets/js/jquery-3.6.0.min.js"></script>
					<script type="text/javascript">
			
			</script>
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