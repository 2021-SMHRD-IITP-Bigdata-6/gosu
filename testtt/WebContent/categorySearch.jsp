<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>E-BOOK 검색</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="Home.jsp" id="logo">E-BOOK 장르</a></h1>
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

			<select> 
			<option>ㅎㅇ </option>
			<option>ㅎㅇ2 </option>
			<option>ㅎㅇ3 </option>
			
			</select>
			<select> <option>ㅎㅇ </option></select>
			<select> <option>ㅎㅇ </option></select>
			<h1>선택하신 장르입니다.</h1>
			<!-- Carousel -->
				<section class="carousel">
					<div class="reel">
						<h1>장르1</h1>
						<%for(int i = 0; i <=10; i++){ %>
						<article>
							<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
							<header>
								<h3><a href="#"><%=i %></a></h3>
							</header>
						</article>
						<%} %>
						<br>
						<h1>장르2</h1>
						<%for(int i = 0; i <=10; i++){ %>
						<article>
							<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
							<header>
								<h3><a href="#">second<%=i %></a></h3>
							</header>
						</article>
						<%} %>
						<br>
						<h1>장르3</h1>
						<%for(int i = 0; i <=10; i++){ %>
						<article>
							<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
							<header>
								<h3><a href="#">thrid<%=i %></a></h3>
							</header>
						</article>
						<%} %>

			<!-- Main 
				<div class="wrapper style1">

					<div class="container">
						<div class="row gtr-200">
							<div class="col-4 col-12-mobile" id="sidebar">
								<hr class="first" />
								<section>
									<header>
										<h3><a href="#">Accumsan sed penatibus</a></h3>
									</header>
									<p>
										Dolor sed fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
										porttitor phasellus tempus cubilia ultrices tempor sagittis  tellus ante diam nec penatibus dolor cras
										magna tempus feugiat veroeros.
									</p>
									<footer>
										<a href="#" class="button">Learn More</a>
									</footer>
								</section>
								<hr />
								<section>
									<header>
										<h3><a href="#">Sed lorem etiam consequat</a></h3>
									</header>
									<p>
										Tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
									</p>
									<div class="row gtr-50">
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic10.jpg" alt="" /></a>
										</div>
										<div class="col-8">
											<h4>Nibh sed cubilia</h4>
											<p>
												Amet nullam fringilla nibh nulla convallis tique ante proin.
											</p>
										</div>
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic11.jpg" alt="" /></a>
										</div>
										<div class="col-8">
											<h4>Proin sed adipiscing</h4>
											<p>
												Amet nullam fringilla nibh nulla convallis tique ante proin.
											</p>
										</div>
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic12.jpg" alt="" /></a>
										</div>
										<div class="col-8">
											<h4>Lorem feugiat magna</h4>
											<p>
												Amet nullam fringilla nibh nulla convallis tique ante proin.
											</p>
										</div>
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic13.jpg" alt="" /></a>
										</div>
										<div class="col-8">
											<h4>Sed tempus fringilla</h4>
											<p>
												Amet nullam fringilla nibh nulla convallis tique ante proin.
											</p>
										</div>
										<div class="col-4">
											<a href="#" class="image fit"><img src="images/pic14.jpg" alt="" /></a>
										</div>
										<div class="col-8">
											<h4>Malesuada fermentum</h4>
											<p>
												Amet nullam fringilla nibh nulla convallis tique ante proin.
											</p>
										</div>
									</div>
									<footer>
										<a href="#" class="button">Magna Adipiscing</a>
									</footer>
								</section>
							</div>
							<div class="col-8 col-12-mobile imp-mobile" id="content">
								<article id="main">
									<header>
										<h2><a href="#">Left Sidebar</a></h2>
										<p>
											Morbi convallis lectus malesuada sed fermentum dolore amet
										</p>
									</header>
									<a href="#" class="image featured"><img src="images/pic06.jpg" alt="" /></a>
									<p>
										Commodo id natoque malesuada sollicitudin elit suscipit. Curae suspendisse mauris posuere accumsan massa
										posuere lacus convallis tellus interdum. Amet nullam fringilla nibh nulla convallis ut venenatis purus
										lobortis. Auctor etiam porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum
										consequat integer interdum integer purus sapien. Nibh eleifend nulla nascetur pharetra commodo mi augue
										interdum tellus. Ornare cursus augue feugiat sodales velit lorem. Semper elementum ullamcorper lacinia
										natoque aenean scelerisque vel lacinia mollis quam sodales congue.
									</p>
									<section>
										<header>
											<h3>Ultrices tempor sagittis nisl</h3>
										</header>
										<p>
											Nascetur volutpat nibh ullamcorper vivamus at purus. Cursus ultrices porttitor sollicitudin imperdiet
											at pretium tellus in euismod a integer sodales neque. Nibh quis dui quis mattis eget imperdiet venenatis
											feugiat. Neque primis ligula cum erat aenean tristique luctus risus ipsum praesent iaculis. Fermentum elit
											fringilla consequat dis arcu. Pellentesque mus tempor vitae pretium sodales porttitor lacus. Phasellus
											egestas odio nisl duis sociis purus faucibus morbi. Eget massa mus etiam sociis pharetra magna.
										</p>
										<p>
											Eleifend auctor turpis magnis sed porta nisl pretium. Aenean suspendisse nulla eget sed etiam parturient
											orci cursus nibh. Quisque eu nec neque felis laoreet diam morbi egestas. Dignissim cras rutrum consectetur
											ut penatibus fermentum nibh erat malesuada varius.
										</p>
									</section>
									<section>
										<header>
											<h3>Augue euismod feugiat tempus</h3>
										</header>
										<p>
											Pretium tellus in euismod a integer sodales neque. Nibh quis dui quis mattis eget imperdiet venenatis
											feugiat. Neque primis ligula cum erat aenean tristique luctus risus ipsum praesent iaculis. Fermentum elit
											ut nunc urna volutpat donec cubilia commodo risus morbi. Lobortis vestibulum velit malesuada ante
											egestas odio nisl duis sociis purus faucibus morbi. Eget massa mus etiam sociis pharetra magna.
										</p>
									</section>
								</article>
							</div>
						</div>
						<hr />
						<div class="row">
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic07.jpg" alt="" /></a>
								<header>
									<h3><a href="#">Gravida aliquam penatibus</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic08.jpg" alt="" /></a>
								<header>
									<h3><a href="#">Sed quis rhoncus placerat</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic09.jpg" alt="" /></a>
								<header>
									<h3><a href="#">Magna laoreet et aliquam</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
						</div>
					</div>

				</div>-->

			<!-- Footer 
				<div id="footer">
					<div class="container">
						<div class="row">-->

							<!-- Tweets 
								<section class="col-4 col-12-mobile">
									<header>
										<h2 class="icon brands fa-twitter circled"><span class="label">Tweets</span></h2>
									</header>
									<ul class="divided">
										<li>
											<article class="tweet">
												Amet nullam fringilla nibh nulla convallis tique ante sociis accumsan.
												<span class="timestamp">5 minutes ago</span>
											</article>
										</li>
										<li>
											<article class="tweet">
												Hendrerit rutrum quisque.
												<span class="timestamp">30 minutes ago</span>
											</article>
										</li>
										<li>
											<article class="tweet">
												Curabitur donec nulla massa laoreet nibh. Lorem praesent montes.
												<span class="timestamp">3 hours ago</span>
											</article>
										</li>
										<li>
											<article class="tweet">
												Lacus natoque cras rhoncus curae dignissim ultricies. Convallis orci aliquet.
												<span class="timestamp">5 hours ago</span>
											</article>
										</li>
									</ul>
								</section>-->

							<!-- Posts 
								<section class="col-4 col-12-mobile">
									<header>
										<h2 class="icon solid fa-file circled"><span class="label">Posts</span></h2>
									</header>
									<ul class="divided">
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Nisl fermentum integer</a></h3>
												</header>
												<span class="timestamp">3 hours ago</span>
											</article>
										</li>
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Phasellus portitor lorem</a></h3>
												</header>
												<span class="timestamp">6 hours ago</span>
											</article>
										</li>
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Magna tempus consequat</a></h3>
												</header>
												<span class="timestamp">Yesterday</span>
											</article>
										</li>
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Feugiat lorem ipsum</a></h3>
												</header>
												<span class="timestamp">2 days ago</span>
											</article>
										</li>
									</ul>
								</section>-->

							<!-- Photos 
								<section class="col-4 col-12-mobile">
									<header>
										<h2 class="icon solid fa-camera circled"><span class="label">Photos</span></h2>
									</header>
									<div class="row gtr-25">
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic10.jpg" alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic11.jpg" alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic12.jpg" alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic13.jpg" alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic14.jpg" alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic15.jpg" alt="" /></a>
										</div>
									</div>
								</section>

						</div>
						<hr />
						<div class="row">
							<div class="col-12">-->

								<!-- Contact 
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
									</section>-->

								<!-- Copyright 
									<div class="copyright">
										<ul class="menu">
											<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
										</ul>
									</div>

							</div>

						</div>
					</div>
				</div>

		</div>-->

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