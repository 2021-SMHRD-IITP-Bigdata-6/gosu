<%@page import="com.book.DTO.BookDTO"%>
<%@page	import="com.member.DAO.MypageDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
</head>
<html>
	<head>
		<title>마이 페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="no-sidebar is-preload">
	 <%
       BookDTO dto = (BookDTO) session.getAttribute("dto");
      System.out.println("session 값 : "+dto);
      int cnt = 0;
         if(session.getAttribute("visit")==null){
         session.setAttribute("visit", 1);
         }else{
         int visit = (int)session.getAttribute("visit");
         cnt = visit;
         session.setAttribute("visit", visit+1);
         }
      %>
    
				<div id="header">
					<!-- Inner -->
						<div class="inner">
							<header>
								<h1>마이페이지</h1>
							</header>
						</div>

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

				</div>

			<!-- Main -->
				<div id=""></div>
				<div class="wrapper style1">
			<h3><strong>내 정보</strong><button>정보 수정 </button></h3>
            	
						<p>회원 이메일</p><br>
						<p>회원 비밀번호</p><br>
						<p>회원 이름</p><br>
						<p>회원 닉네임</p><br>
					
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>