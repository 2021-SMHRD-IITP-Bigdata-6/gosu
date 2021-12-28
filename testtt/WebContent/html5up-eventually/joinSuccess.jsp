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

			<font size="8">회원가입성공</font><br>
					정보를 확인하세요<br><br>
			<%
				BookDTO dto = (BookDTO)request.getAttribute("dto");
		
			
			%>
						<table border="1">
							<tr>
								<td>Email</td>
								<td>PW</td>
								<td>NAME</td>
								<td>AGE</td>		
								<td>TEL</td>
								<td>GENDER</td>
								<td>date</td>
								<!-- <td>date</td>	 -->	
							</tr>						
								<tr>
							 	<td><%=dto.getMem_id() %></td>
								<td><%=dto.getMem_pw() %></td>
								<td><%=dto.getMem_name() %></td>		
								<td><%=dto.getMem_age() %></td>	
								<td><%=dto.getMem_tel() %>	
								<td><%=dto.getMem_gender() %>
								<td><%=dto.getDate()%>
								
							<%-- 	//<td><%=dto.getDate() %></td>  --%>
										
							</tr>				
						</table>
			<a href="/project/html5up-eventually/login.jsp" align="center">로그인 바로가기</a>

		<!-- Footer -->
			<footer id="footer">
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

	</body>
</html>