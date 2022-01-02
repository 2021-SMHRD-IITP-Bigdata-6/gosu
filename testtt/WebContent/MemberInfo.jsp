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
			<form action="UpdateCon.do" method="post" align="center">
			<%
							BookDTO dto = (BookDTO) session.getAttribute("dto");
					      	System.out.println("현재 로그인 한 사람의 email 값 :"+dto.getMem_id());
			%>
			<h2><%=dto.getMem_name()%> 회원 정보 수정 </h2>
			<br>
		<select name="select">
			<option value="name">name</option>
			<option value="pw">pw</option>
			<option value="tel">tel</option>
		</select>
		변경할 패스워드 DATA <input type="text" name="data">
		<br>
		<input type="submit"  value="회원수정" >
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