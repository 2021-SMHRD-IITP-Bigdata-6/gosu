<%@page import="com.book.DTO.T_BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.book.DAO.T_BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>E-BOOK 寃���</title>
<title>E-BOOK 장르</title>
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
				<header>
					<h1>E-BOOK 장르</h1>
				</header>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="Home.jsp">홈</a></li>
					<li><a href="BookGenre.html">E-BOOK 장르</a></li>
					<li><a href="BookInfo.html">E-BOOK 정보</a></li>
					<li><a href="MyPage.html">마이 페이지</a></li>
				</ul>
			</nav>
		</div>
		
		</select>
		<h1>찜</h1>
		
		<!-- Carousel -->
		
		<%
             request.setCharacterEncoding("UTF-8");

            T_BookDAO dao = new T_BookDAO();
            ArrayList<T_BookDTO> arr = dao.selectbook();
            
            for (int i = 0; i < arr.size(); i++) {
               
            }
                String name = arr.get(0).getBook_nmae();          // 책 제목
                int price = arr.get(0).getBook_price();          // 책 가격
                int grade = arr.get(0).getBook_grade();          // 책 평점
               String publisher = arr.get(0).getBook_publisher();  // 책 출판사 
               String category = arr.get(0).getBook_category();   // 책 분류
               String explain =arr.get(0).getBook_explain();      // 책 소개
               String author =arr.get(0).getBook_author();       // 책 저자
               int pages =arr.get(0).getBook_pages ();          // 책 페이지수
               String img = arr.get(0).getBook_img ();          // 책 표지
               String isbn = arr.get(0).getBook_isbn ();         // 책 ISBN
               String brief =arr.get(0).getBook_brief ();         // 책 줄거리
               String date = arr.get(0).getBook_date();         // 책 등록일자
            %>
			<%for(int i = 0; i <=5; i++) {%>
		<section class="carousel">
			<div class="reel">
			<% for (int j = 0; j <= 1; j++){ %>
						<article>
							<a href="BookInfo.jsp" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
							<header>
								<h3><a href="#"><%=arr.get(0).getBook_nmae() %></a></h3>
							</header>
						</article>
			<%} %>
			</div>
			<script type="text/javascript">
				$(document).ready(function(){
					$(".hide").hide();
					$("#favorite").click(function(){
						
					$.post(
						"/favorite"
						,{"articleId" : "${article.articleId}"}
						, function(data){
							
							var text = $("#favorite").text();
							if(text == "♡"){
								$("#favorite").text("♥");
							}
							else if (text == "♥"){
								$("#favorite").text("♡");
							
							}
						}
						)
					
					
					})
					
					
				});
			
			
			
			</script>
			
			
		</section>
		<%} %>

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