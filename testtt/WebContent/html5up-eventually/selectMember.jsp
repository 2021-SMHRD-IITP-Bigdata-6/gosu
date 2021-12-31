<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.book.DAO.BookDAO"%>
<%@page import="com.book.DTO.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>Eventually by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
		<body class="is-preload">
			<header id="header">
			</header>
			<font size="8">회원관리페이지</font><br>
					정보를 확인하세요<br><br>
						<table border="1" style="width:800px">
							<tr >
								<td>Email</td>
								<td>PW</td>
								<td>NAME</td>
								<td>AGE</td>		
								<td>TEL</td>
								<td>GENDER</td>
								<td>탈퇴</td>
							</tr>						
		<%
		BookDAO dao = new BookDAO();
		ArrayList<BookDTO> arr = dao.selectMember();
		
		for (int i = 0; i < arr.size(); i++) {
	 		out.print("<tr>");
			out.print("<td>" + arr.get(i).getMem_id() + "</td>");
			out.print("<td>" +"**********" + "</td>");
			out.print("<td>" + arr.get(i).getMem_name() + "</td>");
			out.print("<td>" + arr.get(i).getMem_tel()+ "</td>");
			out.print("<td>" + arr.get(i).getMem_age()+ "</td>");
			out.print("<td>" + arr.get(i).getMem_gender()+ "</td>");
			
		if(arr.get(i).getMem_id().equals("admin@naver.com")){
			out.print("<td><a href='DeleteCon.do?delete_email="+arr.get(i).getMem_id()+"'></a></td>");
		}else{
			out.print("<td><a href='DeleteCon.do?delete_email="+arr.get(i).getMem_id()+"'>회원삭제</a></td>");
		}
			out.print("</tr>");
		}
		%>
						</table>
			<a href="/project/Home.jsp" align="center">메인페이지 바로가기</a>
		<!-- Footer -->
		<br><br><br><br><br><br><br><br>
			<footer id="footer1">
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
					<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; Untitled.</li><li>Credits: <a>대표 김진우</a></li>
				</ul>
			</footer>

		<!-- Scripts -->
		<script src="assets/js/main.js"></script>
			<script type="text/javascript">
	</script>
	<script
            src='https://unpkg.com/magic-snowflakes/dist/snowflakes.min.js'></script>
         <script>
            var sf = new Snowflakes({
            	  color : "#ffffff", // 색상
                  count : 1000, // 갯수
                  minOpacity : 0.5, // 최소 투명도 0: 투명 | 1: 불투명
                  maxOpacity : 0.5
               // 최대 투명도
            });
         </script>
	</body>
</html>