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
				

<!-----------------  여기까지는 메뉴!! ------------------->		
	<!-- 넌 뭐하는 애닝? 메뉴 아이콘의 위치 였습니닷-->
	<div style="width: 100px; height: 100px;  position: absolute; left: 20px; top: 30px;">							
			<!-- 네비게이션 메뉴  -->
		    <ul id="menu" class="menu">        
		    <li><a href="#"><div style="width: 170px; height: 80px;  position: absolute; left: 20px; top:0px; z-index: 999;"></a> 
		      <ul style="position: absolute; top:70px;  z-index: 999;">
		        <li style=" z-index: 9999;"><a href="1_1.jsp"><br>회사소개</a></li>
		        <li><a href="2_1.jsp"><br>투자철학</a></li>
		        <li> <a href="3_1.jsp"><br>투자자안내</a></li>
		        <li><a href="../mboardlist.do"><br>공지사항</a></li>
		        <li><a href="4_1.jsp"><br>연락처</a></li>
		      </ul>
		    </li>
		
		    </ul>
	</div>
		
		<!-- 메뉴아이콘 -->
			<div id="header" style="height: 105px">
				<img src="img/모바일/메뉴아이콘.png">
				<a href="main.jsp" 
				style="position: absolute; left:400px;"><img src="img/main/로고_상단.png" /></a>

				
			</div>
			
<!-----------------  여기까지는 메뉴!! ------------------->


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
						<li id="u1_3"><a href="1_3.jsp"><b>연혁</b> </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li> 
						<li id="u1_4"><a href="1_4.jsp">운용인력 </a>&nbsp;&nbsp;&nbsp;</li>
				</ul>	
				
			
			
			<br><br>
			
					
					<img src="img/내용/본문_회사소개(연혁)_01.jpg">
					<br><br><br><br><br><br>
					<font color="#323232">
					<div id="a32">
					<br><br>
						제조업 금융 파트<br><br><br>
						
						분리<br>
						설립<br>
						유상증자(라이센스 위해서)<br><br><br><br>
						
						<b>02월</b>/ 등록 라이센스<br><br><br><br><br>
						
						<b>01월</b>/ 기관투자가<br>
						<b>05월</b>/ 미국 직접 투자<br><br><br><br>
						<b>04월</b>/ 외국인 투자 유치
					</div>
					</font>

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
<script type="text/javascript">
var dropdown=new TINY.dropdown.init("dropdown", {id:'menu', active:'menuhover'});
</script>


</body>
</html>