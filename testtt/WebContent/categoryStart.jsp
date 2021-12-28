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
	<body class="homepage is-preload">
		<div id="page-wrapper">
			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1>3가지 장르를 선택해주세요</h1>
								<hr />
								<select id="select1">
									<option value="genre1" name="choice"> choice</option>
									<option value="genre2"> 1</option>
									<option value="genre3"> 2</option>
									<option value="genre4"> 3</option>
									<option value="genre5"> 4</option>
									<option value="genre6"> 5</option>
								</select>
								<select id="select2">
									<option> choice</option>
									<option> 1</option>
									<option> 2</option>
									<option> 3</option>
									<option> 4</option>
									<option> 5</option>
								</select>
								<select id="select3">
									<option> choice</option>
									<option> 1</option>
									<option> 2</option>
									<option> 3</option>
									<option> 4</option>
									<option> 5</option>
								</select>
							</header>
							<footer>
								<a href="categorySearch.jsp" class="button circled scrolly">검색</a>
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


</body>
</html>