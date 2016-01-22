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
					<li><a href="1_1.jsp">회사소개</a></li>
					<li><a href="2_1.jsp">투자철학</a></li>
					<li><a href="3_1.jsp"><b>투자자안내</b></a></li>
					<li><a href="boardlist.do">공지사항</a></li>
					<li><a href="4_1.jsp">연락처</a></li>
				</ul>
			</div>


			<!-- 메인0_5.jpg는234하지만, 헤더부분의 불투명 234px-105px(헤더) 그냥공백^^ -->
			<div style="height: 129px">			
				<!-- 상단의 이미지! -->
				<div id="header_down">
					<h1><font color="white">INVESTOR</font></h1>
				</div>			
			</div>



			<!-------------------------------- 내용시작---------------------------------->
			<div id="intro">	
					
					<br><br>
				<ul id="_1ul">						
					 <li id="u1_1"><a href="3_1.jsp">일임절차계약</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li>
					 <li id="u1_2"><a href="3_2.jsp"><b>일임수수료</b></a></li>
				</ul>	
			
			
				<img src="img/3_투자자안내/3_일임수수료q.jpg"/>
				<div id="d11">
				<br><br>
				:  최소 10억원 <br><br><br><br><br>
				:  1년	 <br><br><br><br>
				:  기관투자자, 법인, 개인 <br><br><br>	<br><br>
				:  기본수수료 2% / 성과수수료 20% <br>
				  <h5>&nbsp;&nbsp;(고객투자수익이 기준수익률 5%를 초과할경우 성과수수료가 발생합니다.)</h5>
				
				</div>
				
				<div id="d12">
				
				
				</div>

			




			</div>
			
				
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
				<img src="img/3_투자자안내/상단.jpg" width="100%" height="234px">
			</div>
			<div id="bg_footer" style="height: 85px; width:100%"></div>
		</div>

	</div>


</body>
</html>