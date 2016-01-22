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
<link rel="stylesheet" href="tinydropdown.css" type="text/css" />
<script type="text/javascript" src="tinydropdown.js"></script>


<style>
#QVI {
	position: absolute;
	top: 190px;
	left: 60px;
}


td{
padding-top: 9x;
padding-bottom: 9px;
padding-right: 10px;
padding-left: 10px;
text-align: center;
}

tr{
text-align: left;
border: 1px solid  #efefef;

}


/* 게시판을 감싸고 있는 div */
#board
{
	
	font-family: '나눔고딕', 'Nanum Gothic', sans-serif;
	margin-left: 1px; /* 글자사이간 넓이 */
	font-size: 15px;

}

/* 게시판 */
#boardlist
{
position:relative;
	margin-left:200px;
}

</style>



<script>


$(document).ready(function() {
	getData();
	color();
	

});


function getData()
{
	
	function display(data) {
		
		/*-----------------------리스트 출력하기(json에서 받아오기)---------------------------  */
		
		var output = '';
		//마지막 인덱스 ( 총인덱스의 갯수를 채크 );
		var lastindex = '';
		
		$('#boardlist').empty();
		output += '<br><br><br>'+
		'<table><thead><tr><td><h3>공지사항</h3></td><td>  </td><td>  </td><td><a href="../mboardlist.do"><b>더보기 ></b></a> </td></tr></thead><tbody>'
		+'<thead><tr><td></td><td></td><td></td><td></td></tr></thead><tbody>'; /* 띄어쓰기용 내용없음 */
		output += '<thead><tr><td>글번호</td><td>제목</td><td>글쓴이</td><td>날짜</td></tr></thead><tbody>';/* 헤더 */
		
		//Ajax에서 가져온 Json데이터에서 seq,title,writer,regdate. 제목의 id는 index이다!(json에서 가져오는것)
		$(data).each(
	 		function(index, item) {
	 			
	 			/* index는 0 부터시작 글 5개만 출력하기 */
	 			if(index <= 4){
	 				
			 		output += '<tr>';
					  with (item) {							  
						  output += 				
							  '<td>' + seq + '</td><td width="350px">'+
							  '<div id='+index+'>'
							+ title + '</div></td> <td>' + writer
							+ '</td><td>' 
							+ regdate+'</td>';
							;
							
						};				
					output += '</tr>';
	 			}
			});
		output += '</tbody></table><br><br>';			
		$('#boardlist').append(output);	
		
		
		/*-----------------------리스트 출력 완료 후 색변경 하기---------------------------  */	
		var title;
		var temp;

		for (var i = 0; i <8; i++) {
			title = $('#' + i).text(); //ID
			var title_arr = title.split("/");

			if (title_arr[1] == "bold") {
				temp = "<b>" + title_arr[2] + "</b>";
			} else {
				temp = title_arr[2];
			}
			//alert(title_arr[3])

			temp = "<font color='"+title_arr[0]+"'>" + temp + "</font>";

			$('#' + i).html(temp); 
		}
		
	};
		
	
	

	
	/* 제일먼저 JSON 실행 -> display함수실행 */
	$.getJSON('../boardjson.do',function(data){
		display(data);
	});
	
}

</script>



</head>
<body>
	<div id="wrap">

		<!-- 위치 불변 배너 -->
		<div id="center">


			<!-----------------  여기까지는 메뉴!! ------------------->
			<!-- 넌 뭐하는 애닝? 메뉴 아이콘의 위치 였습니닷-->
			<div
				style="width: 100px; height: 100px; position: absolute; left: 20px; top: 30px;">
				<!-- 네비게이션 메뉴  -->
				<ul id="menu" class="menu">
					<li><a href="#"><div
								style="width: 170px; height: 80px; position: absolute; left: 20px; top: 0px; z-index: 999;"></a>
						<ul style="position: absolute; top: 70px; z-index: 999;">
							<li style="z-index: 9999;"><a href="1_1.jsp"><br>회사소개</a></li>
							<li><a href="boardjson.do"><br>투자철학</a></li>
							<li><a href="3_1.jsp"><br>투자자안내</a></li>
							<li><a href="../mboardlist.do"><br>공지사항</a></li>
							<li><a href="4_1.jsp"><br>연락처</a></li>
						</ul></li>

				</ul>
			</div>

			<!-- 메뉴아이콘 -->
			<div id="header" style="height: 105px">
				<img src="img/모바일/메뉴아이콘.png"> <a href="main.jsp"
					style="position: absolute; left: 400px;"><img
					src="img/main/로고_상단.png" /></a>


			</div>

			<!-----------------  여기까지는 메뉴!! ------------------->

			<!-- 메인0_5.jpg는 618 하지만, 헤더부분의 불투명한 부분이 있으므로 618px-105px(헤더) 그냥공백^^ -->
			<div style="height: 513px">

				<!-- Quantitative Value Investment  -->
				<div id="QVI">
					<h1>Quantitative Value Investment</h1>
					<h4>&emsp; &emsp; &emsp; &emsp; &emsp; The Korean market and
						ths US market Long/Short Equity</h4>

				</div>

			</div>



			<!-- 사진들. 210 210 210 세개!-->
			<div id="intro" style="height: 630px">
				<div style="height: 210px">
					<a href="1_1.jsp"><img src="img/모바일/메인_아이콘_05.png"></a>
				</div>
				<div style="height: 210px">
					<a href="2_1.jsp"><img src="img/모바일/메인_아이콘_06.png"></a>
				</div>
				<div style="height: 210px">
					<a href="3_1.jsp"><img src="img/모바일/메인_아이콘_07.png"></a>
				</div>

			</div>



			<!-- 공지사항 !!!!!!!!!!-->
			<div id="board" style="height:290px">
				<div id="boardlist">	
	
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
			<!-- 건물 짱많은 큰 사진  -->
			<div style="height: 618px">
				<img src="img/모바일/메인.jpg" width="100%" height="618px">
			</div>
			<!-- 사진들 -->
			<div style="height: 210px">
				<img src="img/모바일/메인_02.jpg" width="100%" height="210px">
			</div>
			<div style="height: 210px">
				<img src="img/모바일/메인_03.jpg" width="100%" height="210px">
			</div>
			<div style="height: 210px">
				<img src="img/모바일/메인_04.jpg" width="100%" height="210px">
			</div>
			<!-- 한글소개 gray배경 -->
			<div id="bg_iqp"></div>
			<div id="bg_footer" style="height: 85px; width: 100%"></div>
		</div>

	</div>


	<script type="text/javascript">
		var dropdown = new TINY.dropdown.init("dropdown", {
			id : 'menu',
			active : 'menuhover'
		});
	</script>

</body>
</html>