<%@page import="com.book.DTO.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<title>Helios by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="homepage is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">
		
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
		
	

			<!-- Inner -->
			<div class="inner">
				<header>
					<h1 style="color:#BFCCDA;">Booket Listsdfsdfsdf</h1><br>
					
						<%if(dto == null){ %>
					<p>E-BOOK 알리미에 오신걸 환영합니다.</p>
					<%} else{%>
					<p><%=dto.getMem_id() %>님 알리미에 오신걸 환영합니다.</p>
					<%} %>
					<hr />
					
						<%if(dto == null){ %>
					<button style="background-color:#9399AB">
						<h3><a href="/project/html5up-eventually/login.jsp">로그인</a></h3>
					</button>
							&emsp;&emsp;&emsp;&emsp;&emsp;
					<button style="background-color:#9399AB">
						<h3><a href="#">회원가입</a></h3>
						
						</button>
								<%} else{%>
								<button style="background-color:#9399AB">
						<h3><a href="/project/html5up-eventually/LogoutCon.do">로그아웃</a></h3>
						</button>
								&emsp;&emsp;&emsp;&emsp;&emsp;
								<%if(dto.getMem_id().equals("admin@naver.com")) {%>
						<button style="background-color:#9399AB">
								<h3><a href="#"> 회원관리페이지 </a></h3>
								</button>
							&emsp;&emsp;&emsp;&emsp;&emsp;
							<button style="background-color:#9399AB">
								<h3><a href="#"> 회원정보수정 </a></h3>
								</button>
								<%} %>
								
								
								<%} %>
				</header>
			</div>
			<!-- Nav -->
			<nav id="nav">
				<ul>				
					<li><a href="Home.html">홈</a></li>
					<li><a href="BookGenre.html">E-BOOK 장르</a></li>
					<li><a href="BookInfo.html">E-BOOK 정보</a></li>
					<li><a href="MyPage.html">마이 페이지</a></li>
				</ul>
			</nav>

		</div>

		<!-- Banner -->
		<section id="banner">
			<header>
				<h2>
					하나의 사이트로 E-BOOK 플랫폼을 <br>즐기세요.
				</h2>
				<p></p>
			</header>
		</section>
			
		<!-- Carousel -->
		<section class="carousel">
			<div class="reel">
			<h3><strong>베스트셀러</strong></h3>
				<article>
					<a href="#" class="image featured"><img src="images/pic01.jpg"
						alt="" /></a>
					<header>
						<h3>
							<strong><a href="#">책 정보</a></strong>
						</h3>
					</header>
				</article>
				<article>
					<a href="#" class="image featured"><img src="images/pic02.jpg"
						alt="" /></a>
					<header>
						<h3>
							<strong><a href="#">책 정보</a></strong>
						</h3>
						
					</header>
				</article>
				<article>
					<a href="#" class="image featured"><img src="images/pic03.jpg"
						alt="" /></a>
					<header>
						<h3>
							<strong><a href="#">책 정보</a></strong>
						</h3>
					</header>
				</article>
				<article>
					<a href="#" class="image featured"><img src="images/pic04.jpg"
						alt="" /></a>
					<header>
						<h3>
							<strong><a href="#">책 정보</a></strong>
						</h3>
					</header>
				</article>
				<article>
					<a href="#" class="image featured"><img src="images/pic05.jpg"
						alt="" /></a>
					<header>
						<h3>
							<strong><a href="#">책 정보</a></strong>
						</h3>
					</header>
				</article>

				<article>
					<a href="#" class="image featured"><img src="images/pic01.jpg"
						alt="" /></a>
					<header>
						<h3>
							<strong><a href="#">책 정보</a></strong>
						</h3>
					</header>
				</article>

				<article>
					<a href="#" class="image featured"><img src="images/pic02.jpg"
						alt="" /></a>
					<header>
						<h3>
							<strong><a href="#">책 정보</a></strong>
						</h3>
					</header>
				</article>

				<article>
					<a href="#" class="image featured"><img src="images/pic03.jpg"
						alt="" /></a>
					<header>
						<h3>
							<strong><a href="#">책 정보</a></strong>
						</h3>
					</header>
				</article>

				<article>
					<a href="#" class="image featured"><img src="images/pic04.jpg"
						alt="" /></a>
					<header>
						<h3>
							<strong><a href="#">책 정보</a></strong>
						</h3>
					</header>
				</article>
				<article>
					<a href="#" class="image featured"><img src="images/pic05.jpg"
						alt="" /></a>
					<header>
						<h3>
							<strong><a href="#">책 정보</a></strong>
						</h3>
					</header>
				</article>

			</div>

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

		
</body>