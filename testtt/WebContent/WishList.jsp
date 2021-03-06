<%@page import="com.book.DTO.BookDTO"%>
<%@page import="com.book.DAO.T_EvaluationDAO"%>
<%@page import="com.book.DTO.T_EvaluationDTO"%>
<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.book.DTO.T_BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.book.DAO.T_BookDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>찜 목록</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="left-sidebar is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">

			<!-- Inner -->
			<div class="inner">
				
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="Home.jsp">홈</a></li>
					<li><a href="BookInfo.jsp">E-BOOK 정보</a></li>
					<li><a href="categoryStart.jsp">E-BOOK 검색</a></li>
					<li><a href="MyPage.jsp">마이 페이지</a></li>
		
			</ul>
			</nav>



		<h2><a>내가 찜한 E-BOOK</a></h2>

		<!-- Carousel -->

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
			T_BookDAO dao = new T_BookDAO();
			ArrayList<T_BookDTO> arr = dao.selectbook();
			
		
			
		%>
		<%
			for (int i = 0; i < arr.size(); i++) {
		
			String name = arr.get(0).getMem_id(); //회원ID
					
		%>
		<section class="carousel">
			<div class="reel">
				<%
					for (int j = 0; j < i; j++) {
				%>
				<article>
					<a href="BookInfo.jsp" id="su"><%=arr.get(i).getMem_id()%></a>

				</article>
				<%
					}
				%>
			</div>

		</section>
		<%
		}
		%>
		
		</div>
		<!-- Scripts -->

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