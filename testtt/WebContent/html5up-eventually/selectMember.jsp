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
					<thaed>
				
					<h1 colspan="2" ><input type="text"name="email" placeholder="검생어입력하세여" style="width: 500px; margin: 0;"></h1>
					<h1><button onclick="memberSearch()">검색</button></h1>
			
					</thead>
			
						<table border="1" style="width:600px">
						<tbody id="tbody">
							<tr >
								<td>Email</td>
								<td>PW</td>
								<td>NAME</td>
								<td>AGE</td>		
								<td>TEL</td>
								<td>GENDER</td>
								<td>삭제</td>
								<!-- <td>date</td>	 -->	
							</tr>						
							
								
		<%
		BookDAO dao = new BookDAO();
		ArrayList<BookDTO> arr = dao.selectMember();
		for (int i = 0; i < arr.size(); i++) {
	 	out.print("<tr>");
		out.print("<td>" + arr.get(i).getMem_id() + "</td>");
		out.print("<td>" + arr.get(i).getMem_name() + "</td>");
		out.print("<td>" + arr.get(i).getMem_tel()+ "</td>");
		out.print("<td>" + arr.get(i).getMem_age()+ "</td>");
		out.print("<td>" + arr.get(i).getMem_gender()+ "</td>");
		out.print("<td><a href='DeleteCon.do?delete_email="+arr.get(i).getMem_id()+"'></a></td>");
		out.print("<td><a href='DeleteCon.do?delete_email="+arr.get(i).getMem_id()+"'>삭제</a></td>");
		}
		out.print("</tr>");
		%>
							
								
								
										
										</tbody>		
						</table>
			<a href="/project/html5up-eventually/login.jsp" align="center">로그인 바로가기</a>

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
		<script src="/project/html5up-eventually/assets/js/jquery-3.6.0.min.js"></script>
			<script type="text/javascript">
	function memberSearch() {
	    $.ajax({
            
            url : "memberSearch.do",
            type : "get", 
            data : {
               "email" : $('input[name=email]').val()
            },
            dataType : "json",
            success : function(res){
               
               console.log(res);
               
               $('#tbody').html("");
               
                  let table = "";
               for (let i = 0; i < res.length; i++) {
                  table += "<tr>";
                  table += "<td>" + res[i].email + "</td>";
                  table += "<td>" + res[i].name + "</td>";
                  table += "<td>" + res[i].tel + "</td>";
                  table += "<td>" + res[i].age + "</td>";
                  table += "<td>" + res[i].gender + "</td>";
                  table += "<td>" + res[i].date + "</td>";
                  if(res[i].email=="admin"){
                     table += "<td>관리자</td>";   
                  }else{
                     table += "<td><a href='DeleteCon.do?delete_email="+$('input[name=email]').val()+"'>삭제<a></td>";                        
                  }
                  table += "</tr>";
                  
                  $('tbody').append(table);
               }
                  
            },
            error : function(){
               alert("요청실패");
            }
            
         });
	}
	
	</script>

	</body>
</html>