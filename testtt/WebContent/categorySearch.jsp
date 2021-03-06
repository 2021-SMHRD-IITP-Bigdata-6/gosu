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
<style type="text/css">
.hidden{
	background-color: white;
}

.cc{
	color: white;
}
</style>
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
               <li><a href="categoryStart.jsp">검색 창으로</a></li>
           </ul>
         </nav>
      </div>
      <!-- Carousel -->

      <%
             request.setCharacterEncoding("UTF-8");
      	//data라는 KEY 값을 가져온다
         String data = request.getParameter("data");
      	//배열값으로 담아진 ","를 장르 데이터가 넘어올떄 삭제시킨다
         String[] strArr = data.split(",");
			//책의 DB정보를 조회 
            T_BookDAO dao = new T_BookDAO();
            ArrayList<T_BookDTO> arr = dao.selectbook();
            
            %>
      <%for(int i = 0; i <strArr.length; i++){%>
      <button class="detail" onclick="asdf(<%=i%>)">전체보기</button>
      <h1 id="category_go<%=i%>" class="cc"><%=strArr[i] %></h1>

      <section class="carousel">
         <div class="reel">
            <% for (int j = 0; j < arr.size(); j++){ %>
            <%if(strArr[i].equals(arr.get(j).getBook_category())){%>
            <article>
               <img src="<%=arr.get(j).getBook_img()%>" id="image" width="300" height="300">
               <header>
                  <%-- <a id="info"><%=arr.get(j).getBook_nmae() %></a> --%>
                  <button onclick="a(<%=j %>)" id="b<%=j%>" style="display: none;"><%=arr.get(j).getBook_isbn()%></button>
                  <p onclick="a(<%=j %>)" style=""><%=arr.get(j).getBook_nmae() %></p>
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
      <script type="text/javascript">
      //$('.detail').on('click',
      function asdf(i){
    	 var dsearch = $('#category_go'+i).html();
    	 // 전체보기 클릭시 해당 장르의 모든 책을 보여주는 버튼 클릭 이벤트
        location.href="categoryDetail.jsp?search="+dsearch;         
      };
     function a(i) {
		var ISBN = $('#b'+i).html();
		//책 제목 클릭 시 책의 고유 값인 ISBN을 가져와 책정보 페이지로 넘겨줌 
		location.href="BookInfo.jsp?ISBN="+ISBN;
	}
      </script>

</body>
</html>