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
				</ul>
 -->
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
					<br>	<br>
				<ul id="_1ul">
						
						<li id="u1_1"><a href="1_1.jsp"><b>개요</b></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li>
						<li id="u1_2"><a href="1_2.jsp">경영이념 </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li>
						<li id="u1_3"><a href="1_3.jsp">연혁 </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li> 
						<li id="u1_4"><a href="1_4.jsp">운용인력 </a>&nbsp;&nbsp;&nbsp;</li>
				</ul>	
			
			<br><br>
			<img src="img/내용/본문_회사소개(개요)_01.jpg">
			<br><br><br><br>
			<div class="a1">			
<font size="3"><b>(주)앤드 비욘드 투자자문(ABCM)</b></font>은 대한민국 상법 및 자본시장과 금융투자업에 관한 법률에 의해 금융위원회로부터 적법하게 등록 받은  <font color="#4176bb"><b>정식 투자자문 및 일임 전문 금융기업</b></font>입니다.<br><br>  저희는 주식투자를 통해 적극적으로 자산을 증식시키고자 하는 고객들께 일임투자서비스를 제공해 드리고 있습니다. 이를 위해 저희는 고객들로부터 고객 계좌에 대한 접근 권한을 부여받아,  <font color="#4176bb"><b>금융공학을 전공한 펀드매니저</b></font>들이 <font color="#4176bb"><b>개별 고객에 최적화된 맞춤 포트폴리오</b></font>를 설계하고, 이를 바탕으로 숙련된 트레이더들이 고객 계좌에 대해  직접 매매를 실행하여, 고객들께 업계 최고의 서비스를 제공해 드리고 있습니다.  <br><br>현재 기관투자자, 대기업 및 중소기업, 개인투자자에 이르기까지 다양한 투자자들이 저희의 일임 서비스를 통해 안정적으로 자산을 증식시켜 오고 있으며 관계 법령에 의하여 증권사 주문 시스템이 관리되고 있으므로 고객 계좌 자산에 대한 저희 일임회사의 자의적인 입출금 및 자금이체가 완벽하게 통제되어 있어 투자자의 계좌는  더욱 안전히 보호되고 있습니다. 동시에, 고객들은 언제든지 본인의 계좌를 확인할 수 있기 때문에, 이러한 일임 서비스는 투명성이 함께 고려된 서비스로 인정받아  미국에서는 기관이나 고액 자산가들 사이에서 펀드보다 더욱 선호되는 추세입니다.
			</div>	
			<br><br><br><br><br><br>
			<img src="img/내용/본문_회사소개(개요)_02.jpg">
			<br><br><br><br>
			
			<div class="a1">
<font size="3"><b>(주)앤드 비욘드 투자자문(ABCM)</b></font>은 이러한 일임서비스 인프라를 바탕으로 2010년부터 국내 주식시장에서 안정적인 투자 성과를 달성하여 고객들께  <font color="#4176bb"><b>업계  최상위 수준의 위험 대비 수익을 제공</b></font> 드려 왔으며 2013년 5월에는 국내 투자자문사 최초로 미국 현지 증권사를 통해 LONG/SHORT EQUITY(롱/숏 에쿼티) 전략으로  미국 주식시장 직접 투자를 시작하였습니다.<br><br>  특히 미국에서 개최되는 HEDGE FUND(헷지펀드) 콘퍼런스와 투자 전략 세미나에 2011년부터 매년 참석하여 광범위한 글로벌 네트워크를 유지해 나가고 있습니다. <br><br> 현재 저희는 HEDGE FUND(헷지펀드)에서 가장 많이 구사하는 전략 중의 하나인 LONG/SHORT EQUITY(롱/숏 에쿼티)전략으로  <font color="#4176bb"><b>계량적 가치 투자라는 독특한 투자 철학을 구현</b></font>해 나가고 있으며, 이러한 가운데 2014년 외국인 투자자 유치에 성공하였습니다.<br> 전통적인 가치 투자의 아이디어를 존중하면서 DATA를 바탕으로 이를 검증하되, 철저히 공학과 계량적 방법론에 기반을 둔 우선의 과학적 투자를 집행해 온 모습이  외국인 투자자의 까다로운 기준을 만족시켰다 판단됩니다.
			</div>
			<br><br><br><br><br><br>
			<img src="img/내용/본문_회사소개(개요)_03.jpg">			
			<br><br><br><br>
			
			<div class="a1">
 특히 글로벌 기준에 눈높이를 맞추고 해외의 고액자산가나 기관투자자들의 보수적인 리스크 기준보다 엄격한 기준을 채택하여, 그저 고수익을 추가하기 보다는<br><br><font color="#4176bb"><b>- 분산을 한번 더 분산하여 위험에 대응</b></font><br><font color="#4176bb"><b>- 전통적 가치투자와 최신의 금융공학기법을 블렌딩한 독특한 투자철학</b></font><br><font color="#4176bb"><b>- 그 기저에 놓여있는 보수적 운용기조에서 결코 벗어나지 않는 자세</b></font><br><br> 로 고객의 자산을 무조건 안전 일변도로 운용해오고 있습니다.
			</div>
			
			<br><br><br><br><br><br>
			<img src="img/내용/본문_회사소개(개요)_04.jpg">
			<br><br><br><br>
			<div class="a1">	
<font color="#4176bb"><b>투자에서 가장 중요한 것은 잃지 않는 것</b></font>입니다.<br>
저희는 잃지 않는 투자 그 이상을 실현하고자 AndBeyond라는 이름으로 일임업 라이센스를 받았습니다. 그리고 지금까지 다양한 고객들의 더욱 다양한 투자수요에  성공적으로 대응하며 고객만족 최우선을 실현해왔습니다. <br><br> 고객이 투자하는 소중한 자산에는 늘 목적이 있습니다. <br>저희는 이 목적 있는 자산이 가장 적절한 방향으로, 가장 적절한 속도로 유지하며, 그리하여 최고의 향해를 할 수 있도록 좌로나 우로나 치우치지 않는 과학적인 시각으로 잃지 않는 투자 그 이상을 실현하고 그 너머를 바라보기 위하여 지금 이 순간에도 끊임없이 연구하고 있습니다
			</div>

			<div class="a1">
<font color="#4176bb"><b>투자에는 반드시 철학이 있어야 합니다.</b></font> <br>그리고 그 철학은 결코 흔들림이 없어야 합니다.<br> 그러한 철학을 흔들림 없이 굳건하게 세우기 위해서는 끊임없이 연구하지 않으면 안 됩니다. <br><br> 하지만 그 어떠한 성공적인 투자와 고메한 철학도, 나눔이 없이는 열매 맺지 못한다는 것이 저희 전 직원의 생각이자 가치입니다. <br>이러한 가치를 실현하기 위해 저희 (주)앤드 비욘드 투자자문은 <font color="#4176bb"><b>설립 후 첫 매출이 실현되자마자 수익의 일부를 기부하기 시작했습니다.</b></font> <br><br> 나늠은 곧 투자의 완성이자<br> 때로는 투자를 위한 동기가 된다고 저희 전 직원은 믿고 있습니다.<br> 그래서 저희는 아이들을 후원합니다.<br><br>  먼저 이 나라에서 그리고 세계에서 선한 가치를 실현하기 위해서, 저희만의 투자를 완성하기 위해서 쉬지 않고 연구하며, 쉬지 않고 나눌것입니다.<br> 저희의 비전은 가장 많이 버는 것에 있지 않습니다. 가장 많이 나누는 것이야말로 저희의 비전이라는 사실을 모든 임직원이 자랑스럽게 가슴에 새기고서<br> 고객들의 소중한 자산, 목적 있는 자산을 최선을 다해 운용하고 있습니다. <br>저희는 이미 세계라는 바다에 닻을 올렸습니다.<br><br>  고객과 함께 <br>그리고 아이들과 함께 <br>잃지 않는 투자 그 이상을 위하여<br> 선한 열매를 맺기 위하여, <br><br> 끊임없이 앞으로 나아갈 것입니다.<br><br>  We are evolving even at this moment with our clients. And we will keep forward as we have done so far. <br>To naver losing investment, AND BEYOND...  <br><br>We support children.
			<br><br><br><br><br><br>
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
				<img src="img/1_회사소개/상단.jpg" width="100%" height="234px">
			</div>
			<div id="bg_footer" style="height: 85px; width:100%"></div>
		</div>

	</div>


</body>
</html>