<%@page import="com.book.DTO.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
<title>Booket List</title>
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
               <h1 style="color: #BFCCDA;">Booket List</h1>
               <br>
               <% if (dto == null) {%>
               <p>E-BOOK 알리미에 오신걸 환영합니다.</p>
               <%} else{%>
               <p><%= dto.getMem_name() %>님 알리미에 오신걸 환영합니다. </p>
               <%} %>
               <hr />
            <% if (dto == null) {%>
               <button style="background-color: #9399AB">
                  <h3>
                     <a href="/project/html5up-eventually/login.jsp">로그인</a>
                  </h3>
               </button>
               &emsp;&emsp;&emsp;&emsp;&emsp;
               <button style="background-color: #9399AB">
                  <h3>
                     <a href="/project/html5up-eventually/join.jsp"">회원가입</a>
                  </h3>
               </button>
            <%} else {%>
               <button style="background-color: #9399AB">
                  <h3>
                     <a href="/project/html5up-eventually/LogoutCon.do">로그아웃</a>
                  </h3>
               </button>
               &emsp;&emsp;&emsp;&emsp;&emsp;
               <button style="background-color: #9399AB">
                     <h3><a href="/project/html5up-eventually/Update.jsp"> 회원정보수정 </a></h3>
               </button>
            <% if (dto.getMem_id().equals("admin@naver.com")){ %>
                  &emsp;&emsp;&emsp;&emsp;&emsp;
               <button style="background-color: #9399AB">
                  <h3><a href="/project/html5up-eventually/selectMember.jsp">회원관리</a></h3>
               </button>
               <%} else{ %>
               
               
               
               <%} %>
               
               <%} %>
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
         </nav>
      </div>

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