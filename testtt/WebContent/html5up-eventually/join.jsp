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
		<!-- Header -->
			<header id="header">
			</header>
		<!-- Signup Form -->
			<form  method="post" action="JoinCon.do"style="width: 500px; margin: 0 auto;" >
				<a align="center"><h1>회원가입</h1></a>
				이메일<input type="email" name="email"  placeholder="아이디">
				<button type="button" id="Check" align="center" onclick="emailCheck()">중복체크</button>
									<p id="result"></p>
				비밀번호<input type="password" name="pw"  placeholder="비밀번호" />
				이름<input type="text" name="name"  placeholder="이름" />
				전화번호<input type="text" name="tel"  placeholder="전화번호" />
				나이<input type="text" name="age"  placeholder="나이" />
				<br>
				<input type="radio" name="gender" value="M" checked  id="man">
				<label for="man">남자</label> 
				<input type="radio" name="gender" value="W" checked  id="woman">
				<label for="woman">여자</label>
				<div align="center"><input id="su" type="submit" value="회원가입"></div>
			</form>
			<br>
			<a href="/project/Home.jsp" align="center">메인페이지 돌아가기</a>
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
			<script src="/project/html5up-eventually/assets/js/jquery-3.6.0.min.js"></script>
					<script type="text/javascript">
			function emailCheck() {
				$.ajax({
					url : 'check.do',
					type : 'get',
					data : {
						"email" : $('input[name=email]').val()
					},
				success : function (res) {
					console.log(res);
					if(res == 'true'){
						$('#result').html("중복된 아이디입니다").css('color','red');
						alert("아이디 중복입니다");
					}else{
						$('#result').html("사용가능한 아이디 입니다").css('color','green');
						alert("사용가능한 아이디 입니다");
					}
				},
				error : function() {
					alert('요청 실패');
				}
				});
			}
			</script>
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
</html>