<%@page import="java.util.Random"%>
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
<meta charset="utf-8" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
<body class="right-sidebar is-preload">
	<div id="footer">
		<%
			request.setCharacterEncoding("UTF-8");
		String info = request.getParameter("info");
		T_BookDAO dao = new T_BookDAO();
		ArrayList<T_BookDTO> arr = dao.selectbook();
		for (int i = 0; i < arr.size(); i++) {
		}
		String name = arr.get(0).getBook_nmae(); // 책 제목
		int price = (int) arr.get(0).getBook_price(); // 책 가격
		int grade = arr.get(0).getBook_grade(); // 책 평점
		String publisher = arr.get(0).getBook_publisher(); // 책 출판사 
		String category = arr.get(0).getBook_category(); // 책 분류
		String explain = arr.get(0).getBook_explain(); // 책 소개
		String author = arr.get(0).getBook_author(); // 책 저자
		int pages = arr.get(0).getBook_pages(); // 책 페이지수
		String img = arr.get(0).getBook_img(); // 책 표지
		String isbn = arr.get(0).getBook_isbn(); // 책 ISBN
		String brief = arr.get(0).getBook_brief(); // 책 줄거리
		String date = arr.get(0).getBook_date(); // 책 등록일자

		int LottoNumber[] = new int[3];

		Random random = new Random();

		int min = 1;
		int max = 45;

		for (int i = 0; i < LottoNumber.length; i++) {
			LottoNumber[i] = (random.nextInt((max - min) + 1) + min);
			System.out.println("LottoNumber --> " + LottoNumber[i]);

			for (int j = 0; j < i; j++) {
				if (LottoNumber[i] == LottoNumber[j]) {
			i--;
				}

				if (LottoNumber[i] < LottoNumber[j]) {
			int LottoNumberTemp = LottoNumber[i];
			LottoNumber[i] = LottoNumber[j];
			LottoNumber[j] = LottoNumberTemp;
				}

			}

		}

		String name1 = arr.get(LottoNumber[0]).getBook_nmae();
		String name2 = arr.get(LottoNumber[1]).getBook_nmae();
		String name3 = arr.get(LottoNumber[2]).getBook_nmae();

		String brief1 = arr.get(LottoNumber[0]).getBook_brief();
		String brief2 = arr.get(LottoNumber[1]).getBook_brief();
		String brief3 = arr.get(LottoNumber[2]).getBook_brief();

		String img1 = arr.get(LottoNumber[0]).getBook_img();
		String img2 = arr.get(LottoNumber[1]).getBook_img();
		String img3 = arr.get(LottoNumber[2]).getBook_img();
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
							<div align=center></div>
							<section>
								<header>
									<h2>
										<a><%=name%></a>
									</h2>
									<br> <img align="center" src="<%=img%>" alt="" width="200"
										height="300" />
								</header>
							</section>
							<header>
								<a> 장르 : <%=category%> <br>
								</a> <a> ISBN : <%=isbn%><br>
								</a> <a> 저자 : <%=author%> <br>
								</a> <a> 출판사 : <%=publisher%><br>
								</a> <a> 페이지수 : <%=pages%>
								</a>
							</header>
							<section>
								<header>
									<h3>
										<a>책소개 : <%=explain%></a>
									</h3>
								</header>
							</section>
						</article>
					</div>
					<div class="col-4 col-12-mobile" id="sidebar">
						<hr class="first" />
						<section>
							<header>
								<h3>
									<a href="#">월정액</a>
								</h3>
							</header>
							<div class="row gtr-50">
								<div class="col-4">
									<a href="https://select.ridibooks.com/home" class="image fit"><img
										src="images/pic10.jpg" alt="" /></a>
									<p>리디셀렉</p>
									<img
										src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcAMmOE%2FbtqCX8G2rdr%2FHEr6HIanLRV1PDEIQI4KtK%2Fimg.png"
										width="100" height="100">
								</div>
								<!-- <div class="col-4">
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
										</div> -->
							</div>
						</section>
						<hr />
						<section>
							<header>
								<h3>
									<a href="#">구매</a>
								</h3>
							</header>
							<div class="row gtr-50">
								<div class="col-4">
									<a href="#" class="image fit"><img src="images/pic10.jpg"
										alt="" /></a>
								</div>
								<div>
									<p>가격정보 ~ 얼마</p>
								</div>
								<div class="col-4">
									<a href="#" class="image fit"><img src="images/pic11.jpg"
										alt="" /></a>
								</div>
								<div>
									<p>가격정보 ~ 얼마</p>
								</div>

								<div class="col-4">
									<a href="#" class="image fit"><img src="images/pic12.jpg"
										alt="" /></a>
								</div>
								<div>
									<p>가격정보 ~ 얼마</p>
								</div>
								<div class="col-4">
									<a href="#" class="image fit"><img src="images/pic13.jpg"
										alt="" /></a>
								</div>
								<div>
									<p>가격정보 ~ 얼마</p>
								</div>
								<div class="col-4">
									<a href="#" class="image fit"><img src="images/pic14.jpg"
										alt="" /></a>
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
						<a href="#" class="image featured"><img src="<%=img1%>"
							width="200" height="400" /></a>
						<header>
							<h3>
								<a href="#">책 제목 : <%=name1%></a>
							</h3>
						</header>
						<header>
							<a> 줄거리 : <%=brief1%>
							</a>
						</header>
					</article>
					<article class="col-4 col-12-mobile special">
						<a href="#" class="image featured"><img src="<%=img2%>"
							width="200" height="400" /></a>
						<header>
							<h3>
								<a href="#">책 제목 : <%=name2%></a>
							</h3>
						</header>
						<header>
							<a> 줄거리 : <%=brief2%>
							</a>
						</header>
					</article>
					<article class="col-4 col-12-mobile special">
						<a href="#" class="image featured"><img src="<%=img3%>"
							width="200" height="400" /></a>
						<header>
							<h3>
								<a href="#">책 제목 : <%=name3%></a>
							</h3>
						</header>
						<header>
							<a> 줄거리 : <%=brief3%>
							</a>
						</header>
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
							<ul class="icons">
								<li><a href="#" class="icon brands fa-twitter"><span
										class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f"><span
										class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram"><span
										class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-pinterest"><span
										class="label">Pinterest</span></a></li>
								<li><a href="#" class="icon brands fa-dribbble"><span
										class="label">Dribbble</span></a></li>
								<li><a href="#" class="icon brands fa-linkedin-in"><span
										class="label">Linkedin</span></a></li>
							</ul>
						</section>

						<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved.</li>
								<li>Designer: <a href="http://html5up.net">대표 김진우</a></li>
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
</body>
</html>
