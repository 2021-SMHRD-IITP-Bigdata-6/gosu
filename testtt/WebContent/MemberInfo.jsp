<%@page import="com.book.DAO.BookDAO"%>
<%@page import="com.book.DTO.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 보기</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<style>
 table.ta{
    font-size: 15pt;
    border-collapse:collapse;
    magin : auto;
    whidh : 50%;
 }

 th,td{ 
 padding: 15px 15px;
 }
 
button {
   background: rgb(255 255 255/ 3%);
   color: #705956;
   border: none;
   position: relative;
   height: 50px font-size: 1.0em;
   padding: 1px 2em;
   cursor: pointer;
   transition: 800ms ease all;
   outline: none;
}

button:hover {
   background: #fff;
   color: #1AAB8A;
}

button:before, button:after {
   content: '';
   position: absolute;
   top: 0;
   right: 0;
   height: 2px;
   width: 0;
   background: #1AAB8A;
   transition: 400ms ease all;
}

button:after {
   right: inherit;
   top: inherit;
   left: 0;
   bottom: 0;
}

button:hover:before, button:hover:after {
   width: 100%;
   transition: 800ms ease all;
}

.choice {
   background-color: #0c0c01;
}

button {
   background: #6CAD9E;
   color: #000000;
   border: none;
   position: relative;
   height: 60px font-size: 1.0em;
   padding: 1px 2em;
   cursor: pointer;
   transition: 800ms ease all;
   outline: none;
}
</style>
</head>
<body class="is-preload">
   <%
      BookDAO dao = new BookDAO();
   BookDTO dto = (BookDTO) session.getAttribute("dto");
   %>
   <%
      String email = (String) session.getAttribute("email");
   String pw = (String) session.getAttribute("pw");
   String name = (String) session.getAttribute("name");
   String age = (String) session.getAttribute("age");
   String tel = (String) session.getAttribute("tel");
   String gender = (String) session.getAttribute("gender");
   %>

   <div id="header">
      <nav id="nav">
         <ul>
            <li><a href="Home.jsp">홈</a></li>
            <li><a href="categoryStart.jsp">E-BOOK 검색</a></li>
         </ul>
      </nav>
      <form action="UpdateCon.do" method="post" align="center">
         <div>
            <h2 style="color: #C4DEFF;">
               <a><%=dto.getMem_name()%>님의 정보 확인 </a>
            </h2>
         </div>
         
            <table class="ta">
               <tr align="center" >
                  <th scope="row">아이디</th>
                  <td><%=dto.getMem_id()%></td>
               </tr>
               <tr align="center">
                  <th scope="row">비밀번호</th>
                  <td><%=dto.getMem_pw()%></td>
               </tr>
               <tr align="center">
                  <th scope="row">이름</th>
                  <td><%=dto.getMem_name()%></td>
               </tr>
               <tr align="center">
                  <th scope="row">나이</th>
                  <td><%=dto.getMem_age()%></td>
               </tr>
               <tr align="center">
                  <th scope="row">전화번호</th>
                  <td><%=dto.getMem_tel()%></td>
               </tr>
               <tr align="center">
                  <th scope="row">성별</th>
                  <td><%=dto.getMem_gender()%></td>
               </tr>
            </table>
         
         <br> <a href="Home.jsp">
            <button class="btn" type="button"
               style="color: black; font-size: 1em; border-radius: 0.5en; padding: 5px 15px;">메인
               페이지 가기</button>
         </a>
      </form>
      <br>
      <br>
      <br>
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
   </div>
</body>
</html>