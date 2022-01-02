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
	
button {
    background: rgb(255 255 255 / 3%);
    color: #705956;
    border: none;
    position: relative;
    height: 50px
    font-size: 1.0em;
    padding: 1px 2em;
    cursor: pointer;
    transition: 800ms ease all;
    outline: none;
}
button:hover{
  background:#fff;
  color:#1AAB8A;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
}
.choice {
    background-color: #0c0c01;
}
	
	
	button {
    background: #a46fad;
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
<body class="homepage is-preload">
	<div id="page-wrapper">
	
		<!-- Header -->
		<div id="header">
			<!-- Inner -->
			<div class="inner">
				<header>
					<h1>장르를 선택해주세요</h1>
					<hr />
						<h3>
						<button class="btn">시/에세이</button>
						<button class="btn">소설</button>
						<button class="btn">경제/경영</button>
						<button class="btn">과학</button>
						<button class="btn">여행/기행</button>
						<br>
						<button class="btn">역사/문화</button>
						<button class="btn">예술/대중문화</button>
						<button class="btn">인문</button>
						<button class="btn">자기계발</button>
						<button class="btn">정치/사회</button>
						<button class="btn">취미/스포츠</button>
						</h3>
				</header>
				<footer>
					<button id="send_btn" class="search" ">검색</button>
				</footer>
					<a href="Home.jsp">메인페이지 돌아가기</a>
			</div>

			<!-- Nav -->
			
			
				
			
		</div>
	</div>
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
            
            location.href="categorySearch.jsp?data="+buttonlist;
            
            
            /* $.ajax({
               url : 'categorySearch.jsp',
               type : 'post',
               traditional : true,
               data : {
                  checklist : buttonlist
               },
               success : function(){
                  alert('성공');
                  location.href="categorySearch.jsp";
               },
               error : function(){
                   alert('실패');
               }
            })*/
         })
   
      </script>
</body>
</html>