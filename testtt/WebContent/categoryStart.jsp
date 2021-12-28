<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>E-BOOK 검색</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/category.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="homepage is-preload">
	<div id="page-wrapper">
		<!-- Header -->
		<div id="header">
			<!-- Inner -->
			<div class="inner">
				<header>
					<h1>3가지 장르를 선택해주세요</h1>
					<hr />
						<button class="choice">시/에세이</button>
						<button class="choice">경제/경영</button>
						<button class="choice">역사/문화</button>
						<button class="choice">예술/대중문화</button>
						<button class="choice">검색</button>
						<br>
						<button class="choice">검색</button>
						<button class="choice">검색</button>
						<button class="choice">검색</button>
						<button class="choice">검색</button>
						<button class="choice">검색</button>
				</header>
				<footer>
				<form action="categorySearch.jsp">
					<input type="hidden" name="book">
					<button class="search">검색</button>
				</form>
				</footer>
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
		<script src="assets/js/jquery.min.js"></script>
		<script type="text/javascript">
			$('.choice').on('click',function(){
				$(this).css({
					background : 'yellow'
				})
			});
			var list = [];
			$('.search').on('click', function(){
				list = [];
				
				
			});
		</script>
</body>
</html>