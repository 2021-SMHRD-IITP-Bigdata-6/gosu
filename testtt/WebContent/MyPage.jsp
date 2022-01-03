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
</head>
<body class="no-sidebar is-preload">

	
		<%
			BookDTO dto = (BookDTO) session.getAttribute("dto");
		System.out.println("session 값 : " + dto);

		int cnt = 0;

		if (session.getAttribute("visit") == null) {
			session.setAttribute("visit", 1);

		} else {
			int visit = (int) session.getAttribute("visit");
			cnt = visit;
			session.setAttribute("visit", visit + 1);
		}
		%>
		<!-- Inner -->
		<div id="header">
			
				<%
					if (dto == null) {
				%>
				<h2>
					<a>마이 페이지</a>
				</h2>
				<%
					} else {
				%>
				<h2>
					<a><%=dto.getMem_name()%>님의 마이페이지</a>
				</h2>
				<%
					}
				%>


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


		<!-- Main -->

		<br> <br> <br> <br> <a href="UpdateCon.do">
			<button style="color: black;">내 정보 관리</button>
				&emsp;&emsp;&emsp;&emsp;&emsp;
		</a> <a href="WishList.jsp">
			<button style="color: black;">찜 목록 보기</button>
		</a>



	
		</div>
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

</body>
</html>