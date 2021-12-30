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

<style>
	.choice{
		background-color: yellow;
	}
</style>
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
						<button class="btn">시/에세이</button>
						<button class="btn">경제/경영</button>
						<button class="btn">역사/문화</button>
						<button class="btn">예술/대중문화</button>
						<button class="btn">검색</button>
						<br>
						<button class="btn">검색</button>
						<button class="btn">검색</button>
						<button class="btn">검색</button>
						<button class="btn">검색</button>
						<button class="btn">검색</button>
				</header>
				<footer>
					<button id="send_btn" class="search">검색</button>
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
			var check = false;
			let buttonlist = [];
			
			
			$('.btn').on('click',function(){
				// 선택한 button의 내용을 가지고 온다. 
				var text = $(this).text();
				
				// 만약에 그 버튼의 class에 choice가 있으면(=이미 선택 되었다는 의미)
				if($(this).hasClass('choice')){
					console.log('선택취소');
					$(this).removeClass("choice");
					
					// buttonlist에 선택된 값의 인덱스 번호를 찾아내는 for문 
					for(var i =0; i<buttonlist.length; i++){
						if(buttonlist[i]==text){
							// 해당 인덱스 번호로부터 i개를 지우겠다.
							buttonlist.splice(i, 1);
							i--;
						}
					}
				}else{ // 만약에 그 버튼의 class에 choice가 없으면(=선택안되어있다는)
					$(this).addClass("choice");
					console.log('선택');
					for(var i=0; i<buttonlist.length; i++){
						if(buttonlist[i]==text){
							check = true;
							break;
						}
					}
					if(check == false){
						buttonlist.push(text);
					}
					
				}
				
				console.log(buttonlist);
			});
			
			// 검색버튼 누르면 ajax로 servlet으로 이동
			$('#send_btn').on('click', function(){
				$.ajax({
					url : 'categorySearch.do',
					traditional : true,
					data : {
						buttonlist : buttonlist
					},
					type : 'post',
					success : function(){
						alert('성공');
					},
					error : function(){
						alert('실패');
					}
				})
			})
	
		</script>
</body>
</html>