<%@page import="com.book.DTO.T_BookDTO"%>
<%@page import="com.book.DAO.T_BookDAO"%>
<%@page import="com.category.DAO.categoryDTO"%>
<%@page import="com.category.DAO.categoryDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.book.DAO.BookDAO"%>
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
<style>
body {
   background: #212129;
}

::selection {
   background: #212129;
}

.search-wrapper {
    position: absolute;
    transform: translate(-50%, -50%);
    top:50%;
    left:50%;
}
.search-wrapper.active {}

.search-wrapper .input-holder {    
    height: 70px;
    width:70px;
    overflow: hidden;
    background: rgba(255,255,255,0);
    border-radius:6px;
    position: relative;
    transition: all 0.3s ease-in-out;
}
.search-wrapper.active .input-holder {
    width:450px;
    border-radius: 50px;
    background: rgba(0,0,0,0.5);
    transition: all .5s cubic-bezier(0.000, 0.105, 0.035, 1.570);
}
.search-wrapper .input-holder .search-input {
    width:100%;
    height: 50px;
    padding:0px 70px 0 20px;
    opacity: 0;
    position: absolute;
    top:0px;
    left:0px;
    background: transparent;
    box-sizing: border-box;
    border:none;
    outline:none;
    font-family:"Open Sans", Arial, Verdana;
    font-size: 16px;
    font-weight: 400;
    line-height: 20px;
    color:#FFF;
    transform: translate(0, 60px);
    transition: all .3s cubic-bezier(0.000, 0.105, 0.035, 1.570);
    transition-delay: 0.3s;
}
.search-wrapper.active .input-holder .search-input {
    opacity: 1;
    transform: translate(0, 10px);
}
.search-wrapper .input-holder .search-icon {
    width:70px;
    height:70px;
    border:none;
    border-radius:6px;
    background: #FFF;
    padding:0px;
    outline:none;
    position: relative;
    z-index: 2;
    float:right;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
}
.search-wrapper.active .input-holder .search-icon {
    width: 50px;
    height:50px;
    margin: 10px;
    border-radius: 30px;
}
.search-wrapper .input-holder .search-icon span {
    width:22px;
    height:22px;
    display: inline-block;
    vertical-align: middle;
    position:relative;
    transform: rotate(45deg);
    transition: all .4s cubic-bezier(0.650, -0.600, 0.240, 1.650);
}
.search-wrapper.active .input-holder .search-icon span {
    transform: rotate(-45deg);
}
.search-wrapper .input-holder .search-icon span::before, .search-wrapper .input-holder .search-icon span::after {
    position: absolute; 
    content:'';
}
.search-wrapper .input-holder .search-icon span::before {
    width: 4px;
    height: 11px;
    left: 9px;
    top: 18px;
    border-radius: 2px;
    background: #FE5F55;
}
.search-wrapper .input-holder .search-icon span::after {
    width: 14px;
    height: 14px;
    left: 0px;
    top: 0px;
    border-radius: 16px;
    border: 4px solid #FE5F55;
}
.search-wrapper .close {
    position: absolute;
    z-index: 1;
    top:24px;
    right:20px;
    width:25px;
    height:25px;
    cursor: pointer;
    transform: rotate(-180deg);
    transition: all .3s cubic-bezier(0.285, -0.450, 0.935, 0.110);
    transition-delay: 0.2s;
}
.search-wrapper.active .close {
    right:-50px;
    transform: rotate(45deg);
    transition: all .6s cubic-bezier(0.000, 0.105, 0.035, 1.570);
    transition-delay: 0.5s;
}
.search-wrapper .close::before, .search-wrapper .close::after {
    position:absolute;
    content:'';
    background: #FE5F55;
    border-radius: 2px;
}
.search-wrapper .close::before {
    width: 5px;
    height: 25px;
    left: 10px;
    top: 0px;
}
.search-wrapper .close::after {
    width: 25px;
    height: 5px;
    left: 0px;
    top: 10px;
}
header {
    margin: 0 0 4em 0;
}



button {
  background: #6cad9e;
    color: #fff;
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


</style>
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
			T_BookDAO dao = new T_BookDAO();
			ArrayList<T_BookDTO> arr = dao.selectbook();
			
		
			
		%>
		
		
         <!-- Inner -->
         <div class="inner">
         <div>
         <div class="search-wrapper">
  <!--   <div class="input-holder">
        <input type="text" class="search-input" placeholder="원하는 책 제목 을 입력해주세요" name="book"/>
        <button class="search-icon" onclick="searchToggle(this, event);"><span></span></button>
        
        
      
    </div> 
    <span class="close" onclick="searchToggle(this, event);"></span>
    -->
</div>

         </div>

	

<<<<<<< HEAD
        <input type="text" placeholder="제목 입력" name="book">
        <button onclick
        ="webtoonSearch()" > 검색</button>
=======
        
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-6/gosu.git
            <header>
               <h1 style="color: #BFCCDA;">Booket List</h1>
               <br>
                
               <% if (dto == null) {%>
               <p>E-BOOK 알리미에 오신걸 환영합니다.</p>
               <br>
               <br>
                <input type="text" placeholder="제목 입력" name="book">
       			 <button onclick="webtoonSearch()" > 검색</button>
               <br>
               <%} else{%>
               <p><%= dto.getMem_name() %>님 E-BOOK 알리미에 오신걸 환영합니다. </p>
               <br>
               <br>
               <input type="text" placeholder="제목 입력" name="book">
       			 <button onclick="webtoonSearch()" > 검색</button>
               <br>
               <%} %>
               <hr />
<<<<<<< HEAD
               <tbody id="tbody">
               	<table>
               		<tr>1</tr>
               	</table>
               <table border="1">
               <tbody id="tbody">
               	<tr>
               		<td>1</td>
               		<td>2</td>
               		<td>3</td>
               	</tr>
               </tbody>
               	</table>
=======
               
              
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-6/gosu.git
               
            <% if (dto == null) {%>
               <button>
                  <h3>
                     <a href="/project/html5up-eventually/login.jsp">로그인</a>
                  </h3>
               </button>
               &emsp;&emsp;&emsp;&emsp;&emsp;
               <button>
                  <h3>
                     <a href="/project/html5up-eventually/join.jsp"">회원가입</a>
                  </h3>
               </button>
            <%} else {%>
               <button>
                  <h3>
                     <a href="/project/html5up-eventually/LogoutCon.do">로그아웃</a>
                  </h3>
               </button>
               &emsp;&emsp;&emsp;&emsp;&emsp;
               <button >
                     <h3><a href="/project/html5up-eventually/Update.jsp"> 회원정보수정 </a></h3>
               </button>
            <% if (dto.getMem_id().equals("admin@naver.com")){ %>
                  &emsp;&emsp;&emsp;&emsp;&emsp;
               <button>
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
               <li><a href="categoryStart.jsp">E-BOOK 검색</a></li>
               <% if (dto == null) {%>
               <%} else{%>
               <li><a href="MyPage.jsp">마이 페이지</a></li>
               <%}%>
        	</ul>
         </nav>
      </div>
     
     <tbody id="tbody">
               	<table>
               		
               	</table>
               <table border="1" align="center">
               <tbody id="tbody">
               	<tr>
               		<td>췍 이미지</td>
               		<td>췍 제목</td>
               		<td>췍 저자</td>
               	</tr>
               </tbody>
               	</table>
      
    

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
         function gogo() {
				$.ajax({
					url : 'check.do',
					type : 'get',
					data : {
						"book" : $('input[name=book]').val()
					},
				success : function (res) {
					console.log(res);
				},
				error : function() {
					alert('요청 실패');
				}
				});
			}
         function searchToggle(obj, evt){
        	
        	    var container = $(obj).closest('.search-wrapper');
        	        if(!container.hasClass('active')){
        	            container.addClass('active');
        	            evt.preventDefault();
        	        }
        	        else if(container.hasClass('active') && $(obj).closest('.input-holder').length == 0){
        	            container.removeClass('active');
        	            // clear input
        	            container.find('.search-input').val('');
        	        }
        	}
         
       
         </script>
           <script type="text/javascript">
         var count = 0;
         var check = false;
         let buttonlist = [];
         
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
      <script type="text/javascript">
            function webtoonSearch() {
               
               $.ajax({
                  
                  url : "book.do", // servlet으로 보낼꺼기 때문에 뒤에 확정자를 안붙여도됨.
                  type : "get",
                   data : {
                     "webtoon_name" : $('input[name=book]').val()
                  }, 
                  dataType : 'json', // JSON 데이터를 가져올때, jsoin으로 꼭 지정해야함.
                  success : function(res){ // 서버에 요청한 결과가 매개변수안에 담김
                     console.log(res);
                  
     					
     					
                     $('tbody').html(''); // tbody의 html코드를 초기화
                     //$('#tbody').html(''); // tbody의 html코드를 초기화
                     for(var i = 0; i <res.length; i++){
     					let table = '';
     					table += '<tr>';
     					table += '<td><img src=\'' + res[i]['book_img']+  "'width='400' height='300'"+ '\'/></td>';
     					table += '<td align="center" >' + res[i]['book_nmae'] + '</td>';
     					table += '<td align="center">' + res[i]['book_author'] + '</td>';
     					table += '</tr>';
     					// javascript코드로 html 태그 제작 4가지 방법
     					// 1.  .html()
     					// 2.  .after() ->선택한 태그 후에 script작동
     					// 3.  .before() -> 선택한 태그 전에 script작동
     					// 4.  .append() -> 선택한 태그 안에 script작동 추가
     					$('#tbody').append(table);
     					$('.reel').append()
     					}//for
                  },
                  error : function(a,e,f) {
                     console.log(a);
                     console.log(e);
                     console.log(f);
                     alert("요청 실패!");
                  }
                     
               });
            }
            </script>
</body>