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



<style>

#_1ul
{
	position:absolute;
	left:400px;
}

#_1ul > li
{

	list-style: none;
	float: left;
}
</style>

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
					<li><a href="1_1.jsp"><b>회사소개</b></a></li>
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
					<h1><font color="white">COMPANY</font></h1>
				</div>			
			</div>



			<!-------------------------------- 내용시작---------------------------------->
			<div id="intro">	
					<br><br>
				<ul id="_1ul">
						
						<li id="u1_1"><a href="1_1.jsp">개요</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li>
						<li id="u1_2"><a href="1_2.jsp"><b>경영이념 </b></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li>
						<li id="u1_3"><a href="1_3.jsp">연혁 </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li> 
						<li id="u1_4"><a href="1_4.jsp">운용인력 </a>&nbsp;&nbsp;&nbsp;</li>
				</ul>	
			
			
			
			<br><br>
			
					
					<img src="img/내용/본문_회사소개(경영이념)_01.jpg">
					<br><br><br>
					<div id="a21">
					<font size="3"><b>(주)앤드 비욘드 투자자문(ABCM)</b></font>은 <br>원칙과 창의성을 함께 존중하는 연구, 개발 중심의 글로벌 금융기업 입니다.
					</div>
					<br><br><br>
					<img src="img/내용/본문_회사소개(경영이념)_02.jpg">
					<br><br><br>
					<div id="a22">
					<font size="3"><b>(주)앤드 비욘드 투자자문(ABCM)</b></font>은 하나된 가치로서<br><br> <h4><font color="#4176bb"><b>탁월하고 높은 수준<br><br>  투명하고 명백한 정직성<br><br>  사려깊은 나눔</b></font><br><br></h4>  을 추구하며 실천하고 있습니다.<br> 이 세 가지는 저희 회사 전체를 꿰뚫고 있는 저희만의 규약이자 언어로서 결코 포기할 수 없는 가치입니다. <br>(주)앤드비욘드 투자자문의 전 임직원은 이러한 가치를 바탕으로 강한 자부심과 세상을 향한 사명감으로 <br>오늘도 묵묵히 우리에게 주어진 임무를 수행해 나가고 있습니다.<br><br>  (주)앤드비욘드 투자자문은 아이들을 후원합니다.
					</div>
					




			</div>
			
				<br><br><br><br><br><br>
			<div id="footer" style="height: 85px;">
				<h5>
					17 Seochojungang-Ro 6 Gil, 2nd Floor, Seocho-Gu, Seoul, 137878,
					South Korea<br> Tel: +82-2-6931-2700 Fax: +82-2-6931-2719
					E-mail: ABCM@AndBeyondCM.com<br> Copyright© 2014 AndBeyond
					Capital Management Co., <a href=go.do?next=login>Ltd.</a> - All
					Rights Reserved
				</h5>
				<img src="img/main/로고_하단.png" />
			</div>
			
			
			
		</div>


		<!-- 불투명 헤더  -->
		<div id="bg_header"></div>

		<!-- 백그라운드 -->
		<div id="bg">
			<div style="height: 234px">
				<img src="img/1_회사소개/상단.jpg" width="100%" height="234px">
			</div>
			<div id="bg_footer" style="height: 85px; width:100%"></div>
		</div>

	</div>


</body>
</html>