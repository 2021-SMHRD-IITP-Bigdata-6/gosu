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
					<h1>장르를 선택해주세요</h1>
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
			var count = 0;
			let buttonlist = []
			
			$('.choice').on('click',function(){
				count++;
				alert(count +"회 클릭하셨습니다.")
				$(this).css({
					background : 'yellow'
				})
		
	            //클릭한것의 text를 가져옴
	            //가져온것을 빈 리스트에 append()
	            
	            //로컬스토리지에 set,get 중에서 여기서는 set
	            //개발자 도구- Appication - localstorage에서 확인할 수 있음
	            
	            //search 페이지에서는 get해서 가져옴
	            

			});
	
		</script>
</body>
</html>