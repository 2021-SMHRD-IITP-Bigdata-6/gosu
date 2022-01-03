<%@page import="com.book.DTO.T_BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.book.DAO.T_BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Helios by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
	<%
		 request.setCharacterEncoding("UTF-8");
		String search = request.getParameter("search");
       T_BookDAO dao = new T_BookDAO();
       ArrayList<T_BookDTO> arr = dao.selectbook();
	%>
		<title><%=search %>서점</title>

		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/category_detail.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><%=search %>&nbsp의 모든 책입니다.</h1>
							</header>
						</div>
						
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="Home.jsp">홈으로</a></li>
								<li><a href="categoryStart.jsp">검색창으로</a></li>
								<li><a href="categorySearch.jsp">카테고리</a></li>
							</ul>
						</nav>

				</div>

			<!-- Carousel -->
				<section class="carousel">
						<%for(int i = 0; i < arr.size(); i++){ 
							if(search.equals(arr.get(i).getBook_category())){%>
							<article>
							<img src="<%=arr.get(i).getBook_img()%>" id="image" width="300" height="400">
							<header>
								 <a href="BookInfo.jsp" id="info"><%=arr.get(i).getBook_nmae() %></a>
								 <button onclick="a(<%=i %>)" id="b<%=i%>"><%=arr.get(i).getBook_isbn()%></button>
							</header>
							</article>
							<%} %>
						<%} %>
						</section>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script type="text/javascript">
			 function a(i) {
					var ISBN = $('#b'+i).html();
					location.href="BookInfo.jsp?ISBN="+ISBN;
					//console.log(ISBN);
				}
			
			</script>

	</body>
</html>