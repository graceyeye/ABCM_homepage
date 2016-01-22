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

			<!-- 	<ul id="up_ul">
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
						<li id="u1_2"><a href="1_2.jsp">경영이념 </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li>
						<li id="u1_3"><a href="1_3.jsp">연혁</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li> 
						<li id="u1_4"><a href="1_4.jsp"><b>운용인력</b> </a>&nbsp;&nbsp;&nbsp;</li>
				</ul>	
				
				
			
			
			<br><br>
			
					
					<img src="img/내용/본문_회사소개(운용인력)_01.jpg">
					<br><br>
					<font color="#323232">
					<div id="a41">
					ㆍ 딜로이트 컨설팅 전략그룹 컨설턴트 <br>ㆍ 신성델타테크(주) 감사실 실장 <br>ㆍ KAIST 금융전문대학원 금융 MBA <br> ㆍ 서울대학교 경제학부 <br> ㆍ 투자자산 운용사</div>
					<br><br><br><br>
					<img src="img/내용/본문_회사소개(운용인력)_02.jpg">
					<br><br>
					<div id="a42">
					ㆍ 신성델타테크(주) 금융투자파트 파트장 <br>ㆍ 현대자동차(주) 기획실 <br>ㆍ KAIST 금융전문대학원 금융 MBA <br>ㆍ SIMON GRADUATE SCHOOL OF BUSINESS 경영학 석사 <br>ㆍ KAIST 기계공학과 <br>ㆍ CAIA(국제대체투자분석가), 투자자산운용사	</div>
					</font>




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