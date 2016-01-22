<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/a.css" type="text/css">
<script src="http://code.jquery.com/jquery-1.7.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"></script>
<script src="js/jquery.innerfade.js"></script>

</head>
<body>
	<div id="wrap">

		<!-- 위치 불변 배너 -->
		<div id="center">
			<div id="header" style="height: 105px">
				<a href="main.jsp"><img src="img/main/로고_상단.png" /></a>

			<!-- 한국어, 중국어 지우심
					
			 	<ul id="up_ul">
					<li><a href="">한국어</a></li>
					<li><a href="">English</a></li>
				</ul> -->

				
				<ul id="down_ul">
					<li><a href="1_1.jsp">회사소개</a></li>
					<li><a href="2_1.jsp">투자철학</a></li>
					<li><a href="3_1.jsp">투자자안내</a></li>
					<li><a href="boardlist.do">공지사항</a></li>
					<li><a href="4_1.jsp">연락처</a></li>
				</ul>
			</div>




			<!-- 메인0_5.jpg는 618 하지만, 헤더부분의 불투명한 부분이 있으므로 618px-105px(헤더) 그냥공백^^ -->
			<div style="height: 513px">
			
				<!-- Quantitative Value Investment  -->
				<div id="QVI">
					<h1>Quantitative Value Investment</h1>
					<h4> &emsp; &emsp; &emsp; &emsp; &emsp;
					The Korean market and ths US market Long/Short Equity</h4>
				
				</div>
			
			</div>



			<!-- 영어소개. -->
			<div id="intro" style="height: 170px">				
			<!-- 	<h4 id="intro_1">
				<font color="#4176bb">AndBeyond Capital Management(ABCM)</font> 
				<font color="#BDBDBD">is a global financial group specialized in Quantitative Value 
				Investment.	We deploy sophisticated	quantitative methodologies to develop traditional value investments.
				                      140                "somethin good will happen to you."</font>
				</h4>
				 -->
				 
				 <img src="img/0_첫페이지/메인_복사.png">
				
			</div>



			<!-- 한글소개 회색배경두 여깃음-->
			<div id="iqp" style="height: 530px">


				<h5 id="iqp_1">
					벤자민 그레이엄, 워런 버핏, 그리고 000로 이어지는 가치투자는 투자의 세계에서 위대한 직관 때로는 신념으로 표현되기도
					합니다. 저희는 이러한 투자의 대가들의 아이디어를 적극적으로 채용하고 있습니다. 
				
					<br> 
					다만, 이들의 수많은 아이디어가 우리나라와 미국의 주식시장에서 얼마나 그 위력을 충분히 발휘할지 계량적
					분석(DATA)(과학, 공학)을 통해 검증해가며 이를 발전시켜 왔습니다. 다듬고 또 다듬어 순수한 모델로 만들고, 상황에
					가장 적합한 포트폴리오로 도출해 왔습니다. 
					<br> <br>
					 그것이 저희가 추구하는 
					 <br>
					<font color="#4176bb">계량적 가치투자</font> 입니다.
				</h5>

				<h5 id="iqp_2">
					현재 저희는 HEDGE FUND(헷지펀드)에서 가장 많이 구사하는 전략 중의 하나인 LONG/SHORT
					EQUITY(롱/숏 에쿼티)전략으로 <font color="#4176bb">계량적 가치 투자 라는 독특한 투자철학을 구현해</font> 나가고 있으며, 이러한 가운데
					2014년 외국인 투자자 유치에 성공하였습니다.
					<br>
					<br>
					전통적인 가치 투자의 아이디어를 존중하면서 DATA를 바탕으로 이를
					검증하되, 철저히 공학과 계량적 방법론에 기반을 둔 우선의 과학적 투자를 집행해 온 모습이 외국인 투자자의 까다로운
					기준을 만족시켰다 판단됩니다. 
				</h5>

				<h5 id="iqp_3">
					고객의 세세한 운용지시를 모두 따르면서도 안정적인 수익을 달성해내는 100% 맞춤형
					포트폴리오를 제공해 드려야 하기 때문에 모든 과정에는 민감하고 복잡한 최고 난이도의 분석이 수반되고 있습니다. 
					<br>			
					이는 저희가 ‘탁월하고 높은 수전’을 제공하지 않았다면 불가능했을 것입니다. 
					<br><br>
					가치투자의 직관, 그리고 계량투자의 논리 사이에서 위대한 예술, 투자 그 아름다움을 저희는 발견해나가고 있습니다.
					
					</h5>


				<!-- 투명에 아이콘만있는거 3개짜리 -->
				<img src="img/0_첫페이지/메인3_수정.png">
				
			</div>
			<div id="footer" style="height: 85px;">
			
			
				<h5>
					17 Seochojungang-Ro 6 Gil, 2nd Floor, Seocho-Gu, Seoul, 137878,
					South Korea<br> Tel: +82-2-6931-2700 Fax: +82-2-6931-2719
					E-mail: ABCM@AndBeyondCM.com<br> Copyright© 2014 AndBeyond
					Capital Management Co., <a href="login.jsp">Ltd.</a> - All
					Rights Reserved
					
					
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
				<img src="img/0_첫페이지/메인_05.jpg" width="100%" height="618px">
			</div>
			<!-- 영어소개 -->
			<div style="height: 170px"></div>
			<!-- 한글소개 gray배경 -->
			<div id="bg_iqp" ></div>			
			<div id="bg_footer" style="height: 85px; width:100%"></div>
		</div>

	</div>


</body>
</html>