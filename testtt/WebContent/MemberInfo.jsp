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

<body class="is-preload">
	<%
		BookDAO dao = new BookDAO();
		BookDTO dto = (BookDTO) session.getAttribute("dto");
	%>
	<%
		String email = (String) session.getAttribute("email");
		String pw = (String) session.getAttribute("pw");
		String name = (String) session.getAttribute("name");
		String age = (String) session.getAttribute("age");
		String tel = (String) session.getAttribute("tel");
		String gender = (String) session.getAttribute("gender");
	%>
	
	<div id="header">
		<nav id="nav">
			<ul>
				<li><a href="Home.jsp">홈</a></li>
				<li><a href="categoryStart.jsp">E-BOOK 검색</a></li>
			</ul>
		</nav>
		<form action="UpdateCon.do" method="post" align="center">
			<div>
			<h2 style="color:#C4DEFF;">
				<a><%=dto.getMem_name()%>님의 정보 </a>
			</h2>
			</div>
			<div align="center">
			아이디<input name="email" type="text" value="<%=dto.getMem_id() %>"
				style="width: 500px; height: 50px; font-size:20px;">
	 	       비밀번호<input name="pw" type="text" value="<%=dto.getMem_pw() %>"
				style="width: 500px; height: 50px; font-size:20px;">
			이름<input name="name" type="text" value="<%=dto.getMem_name() %>"
				style="width: 500px; height: 50px font-size:20px;">
			전화번호<input name="tel" type="text" value="<%=dto.getMem_tel() %>"
				style="width: 500px; height: 50px; font-size:20px;">
			성별<input name="gender" type="text" value="<%=dto.getMem_gender() %>"
				 style="width: 500px; height: 50px; font-size:20px;">
			</div>
			<br> 
			<h3 style="color:white;" align="center">
			<a href="/project/html5up-eventually/Update.jsp">정보 수정 하기</a>
			</h3>
		</form>
		<br><br><br>
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
	</div>
</body>
</html>