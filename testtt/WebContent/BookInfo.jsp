<%@page import="com.book.DTO.T_BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.book.DAO.T_BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대표 김진우</title>
</head>
<body>
	
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="right-sidebar is-preload">
		<div id="footer">

				<%
				 request.setCharacterEncoding("UTF-8");
				String info =  request.getParameter("info");
				T_BookDAO dao = new T_BookDAO();
				ArrayList<T_BookDTO> arr = dao.selectbook();
/* 				if(info.equals(arr.get(i).getBook_category())){
					
				}
 */				
				for (int i = 0; i < arr.size(); i++) {
					 
					
				}
					 String name = arr.get(0).getBook_nmae(); 			// 책 제목
					 int price = (int)arr.get(0).getBook_price(); 			// 책 가격
					 int grade = arr.get(0).getBook_grade(); 			// 책 평점
					String publisher = arr.get(0).getBook_publisher();  // 책 출판사 
					String category = arr.get(0).getBook_category();	// 책 분류
					String explain =arr.get(0).getBook_explain();		// 책 소개
					String author =arr.get(0).getBook_author(); 		// 책 저자
					int pages =arr.get(0).getBook_pages (); 			// 책 페이지수
					String img = arr.get(0).getBook_img (); 			// 책 표지
					String isbn = arr.get(0).getBook_isbn ();			// 책 ISBN
					String brief =arr.get(0).getBook_brief ();			// 책 줄거리
					String date = arr.get(0).getBook_date();			// 책 등록일자
					
					
					 
				%>
				<div id="footer">
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
				<div id="footer">
					<div class="container">
						<div class="row gtr-200">
							<div class="col-8 col-12-mobile" id="content">
								<article id="main">
									<header>
										<h2><a href="#"><%=name%></a></h2>
									</header>
									<div align= center>
									<img  align="center" src="<%=img %>" alt=""  width="200" height="300"/>
									<a href="/project/Home.jsp" class="image featured">책 표지 사진</a>
									</div>
									<section>
										<header>
											<h3>책 제목 <%=name%></h3> <!-- 책정보 -->
										</header>
									</section>
											장르 : <%= category%> <br>
											
											 ISBN : <%=isbn %><br> 
											 저자 : <%= author %> <br>
											 출판사 : <%= publisher %><br>
											페이지수 : <%= pages %>										
									<section>
										<header>
													<h3>책소개 : <%= explain %></h3>
										</header>
										<p>
									
										</p>
										
									</section>
									
								</article>
							</div>
							<div class="col-4 col-12-mobile" id="sidebar">
								<hr class="first" />
								<section>
									<header>
										<h3><a href="#">월정액</a></h3>
									</header>
									<div class="row gtr-50">
										<div class="col-4">
											<a href="https://select.ridibooks.com/home" class="image fit"><img src="images/pic10.jpg" alt="" /></a>
											<p>리디셀렉</p>
											<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcAMmOE%2FbtqCX8G2rdr%2FHEr6HIanLRV1PDEIQI4KtK%2Fimg.png" width="100" height="100">
										</div>
										
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic11.jpg" alt="" /></a>
										</div>
										
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic12.jpg" alt="" /></a>
										</div>
										
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic13.jpg" alt="" /></a>
										</div>
										
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic14.jpg" alt="" /></a>
										</div>
									</div>
								</section>
								<hr />
								<section>
									<header>
										<h3><a href="#">구매</a></h3>
									</header>
									<div class="row gtr-50">
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic10.jpg" alt="" /></a>
										</div>
										<div>
											<p>가격정보 ~ 얼마</p>
										</div>
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic11.jpg" alt="" /></a>
										</div>
										<div>
											<p>가격정보 ~ 얼마</p>
										</div>

										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic12.jpg" alt="" /></a>
										</div>
										<div>
											<p>가격정보 ~ 얼마</p>
										</div>
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic13.jpg" alt="" /></a>
										</div>
										<div>
											<p>가격정보 ~ 얼마</p>
										</div>
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic14.jpg" alt="" /></a>
										</div>
										<div>
											<p>가격정보 ~ 얼마</p>
										</div>
									</div>
									<footer>
										<a href="#" class="button">Magna Adipiscing</a>
									</footer>
								</section>
							</div>
						</div>
						<hr />
						<header align="center">추천도서</header>
						<div class="row">
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic07.jpg" alt="" /></a>
								<header>
									<h3><a href="#">추천 도서명 1</a></h3>
								</header>
								<p>
									줄거리1
								</p>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic08.jpg" alt="" /></a>
								<header>
									<h3><a href="#">추천 도서명2</a></h3>
								</header>
								<p>
									줄거리2
								</p>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic09.jpg" alt="" /></a>
								<header>
									<h3><a href="#">주천 도서명 3</a></h3>
								</header>
								<p>
									줄거리3
								</p>
							</article>
						</div>
					</div>

				</div>

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">

							<!-- Tweets -->
								

							<!-- Posts -->
								

							<!-- Photos -->
							

						</div>
						<hr />
						<div class="row">
							<div class="col-12">

								<!-- Contact -->
									<section class="contact">
										<header>
											<h3>Nisl turpis nascetur interdum?</h3>
										</header>
										<p>Urna nisl non quis interdum mus ornare ridiculus egestas ridiculus lobortis vivamus tempor aliquet.</p>
										<ul class="icons">
											<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
											<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
											<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
											<li><a href="#" class="icon brands fa-pinterest"><span class="label">Pinterest</span></a></li>
											<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
											<li><a href="#" class="icon brands fa-linkedin-in"><span class="label">Linkedin</span></a></li>
										</ul>
									</section>

								<!-- Copyright -->
									<div class="copyright">
										<ul class="menu">
											<li>&copy; Untitled. All rights reserved.</li><li>Designer: <a href="http://html5up.net">대표 김진우</a></li>
										</ul>
									</div>

							</div>

						</div>
					</div>
				</div>

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
