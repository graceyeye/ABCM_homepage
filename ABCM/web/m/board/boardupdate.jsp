<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/1.css" type="text/css">

<script src="http://code.jquery.com/jquery-1.7.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"></script>
<script src="js/jquery.innerfade.js"></script>

<script>

//제목 수정을 위한 스크립트

var title="";
var titlec="";
var firstcheck = 0;

$(document).ready(function(){
	 

		//타이틀 색깔을 불러 온후
		var title = $("#title").val();			
		var temp;
		
		//처음수정 : split으로 쪼개준다.
	 	if(title.match("/"))
	 	{
			var title_arr = title.split("/");
			$('#title').val(title_arr[2]);			
	 	}	 	
	 	
}); 
</script>
</head>
<body>

	<div id="wrap">

		<!-- 위치 불변 배너 -->
		<div id="center">
			<div id="header" style="height: 105px">
				<a href="main.jsp"><img src="img/main/로고_상단.png" /></a>

				<!-- <ul id="up_ul">
					<li><a href="">한국어</a></li>
					<li><a href="">English</a></li>
				</ul> -->

				<c:choose>
					<c:when test="${logincust != null }">
						<li><a href="">${logincust.id }접속중! 관리자모드 </a></li>
						<li><a href="logout.do">LOGOUT</a></li>
					</c:when>
				</c:choose>
				<ul id="down_ul">
					<li><a href="1_1.jsp">회사소개</a></li>
					<li><a href="2_1.jsp">투자철학</a></li>
					<li><a href="3_1.jsp">투자자안내</a></li>
					<li><a href="boardlist.do">공지사항</a></li>
					<li><a href="4_1.jsp">연락처</a></li>
				</ul>

			</div>


			<!-- 메인0_5.jpg는234하지만, 헤더부분의 불투명 234px-105px(헤더) 그냥공백^^ -->
			<div style="height: 129px">
				<!-- 상단의 이미지! -->
				<div id="header_down">
					<h1>
						<font color="white">NEWS</font>
					</h1>
				</div>
			</div>



			<!-------------------------------- 내용시작---------------------------------->
			<div id="intro">

	<div id="boardform" class="center">
<br><br>
<form id="frm" method="post" action="boardupdate_impl.do" enctype="multipart/form-data">
<input type="hidden" name="seq" value="${bdetail.seq}"> 
TITLE : <input type="text" name="title" id="title" value= ${bdetail.title} ><br>

제목 색상 
빨강 <input type="radio" name="title_color" id="title_red" value="red" /> 
파랑 <input type="radio" name="title_color" id="title_blue" value="blue"/> 
검정 <input type="radio" name="title_color" id="title_black" value="black"/> 


<br>
제목 굵기<br> 보통 <input type="radio" name="title_bold" id="title_a" value="normal"> 
<b>굵게</b> <input type="radio" name="title_bold" id="title_b" value="bold">
<br>




WRITER
<input type="text" name="writer" id="writer" value=${bdetail.writer} ><br> 

CONTENTS 
<br>
<textarea rows="10" cols="30" id="ir1" name="contents" style="width:650px; height:350px;" class="" >${bdetail.contents}</textarea>
<br>

현재 사진파일 : ${bdetail.photo}
<img src="board/img/${bdetail.photo}"> <br>

바꿀사진파일 : <input type="file" name="photo" value=${bdetail.regdate} > <br><br>

DATE : <input type="text" name="regdate" value=${bdetail.regdate}> <br><br>

<input type="submit" id="save" value="REGISTER" >

</form>
<br>
<br>
</div>
	
	

			</div>


			<div id="footer" style="height: 85px;">
				<h5>
					17 Seochojungang-Ro 6 Gil, 2nd Floor, Seocho-Gu, Seoul, 137878,
					South Korea<br> Tel: +82-2-6931-2700 Fax: +82-2-6931-2719
					E-mail: ABCM@AndBeyondCM.com<br> Copyright© 2014 AndBeyond
					Capital Management Co., <a href="login.jsp">Ltd.</a> - All Rights
					Reserved
				</h5>
				<img src="img/main/로고_하단.png" />
			</div>



		</div>


		<!-- 불투명 헤더  -->
		<div id="bg_header"></div>

		<!-- 백그라운드 -->
		<div id="bg">
			<div style="height: 234px">
				<img src="img/4_공지사항/상단.jpg" width="100%" height="234px">
			</div>
			<div id="bg_footer" style="height: 85px; width: 100%"></div>
		</div>

	</div>


</body>
</html>