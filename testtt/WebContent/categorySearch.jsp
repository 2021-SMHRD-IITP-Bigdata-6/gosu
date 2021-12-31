<%@page import="com.category.DAO.categoryDAO"%>
<%@page import="com.book.DTO.T_BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.book.DAO.T_BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
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
					<h1> 선택하신 E-BOOK 목록입니다</h1>
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
		<!-- Carousel -->

		<%
             request.setCharacterEncoding("UTF-8");
		
			String data = request.getParameter("data");
			String[] strArr = data.split(",");
			System.out.println("dataSize"+strArr.length);

            T_BookDAO dao = new T_BookDAO();
            ArrayList<T_BookDTO> arr = dao.selectbook();
            
            %>
		<%for(int i = 0; i <strArr.length; i++){%>
		<button id="detail">전체보기</button>
		<h1><%=strArr[i] %></h1>

		<section class="carousel">
			<div class="reel">
				<% for (int j = 0; j <arr.size(); j++){ %>
				<%if(strArr[i].equals(arr.get(j).getBook_category())){%>
				<article>
					<img src="<%=arr.get(j).getBook_img()%>" id="image" width="300" height="300">
					<!--  <a href="BookInfo.jsp" class="image featured" ><%=arr.get(j).getBook_img() %></a>-->
					<header>
						<a href="BookInfo.jsp" id="info"><%=arr.get(j).getBook_nmae() %> ♡</a>
					</header>
				</article>
				<%} %>
			<%}%>
			</div>
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
		<script type="text/javascript">
		$('#detail').on('click',function(){
			location.href="categoryDetail.jsp";
			$('h1').text();
			var content = document.getElementById("h1");
			console.log(content.innerText);
		});
		
		</script>
         <script src='https://unpkg.com/magic-snowflakes/dist/snowflakes.min.js'>
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