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

<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script>
$(document).ready(function(){
   var lat = 37.486631;   //위도를 정하고
   var lng = 127.0174951;   //경도를 정한다.
   
   var center = new google.maps.LatLng(lat,lng);
   var mapArea = document.getElementById('map');
   //alert(mapArea);
   var map = new google.maps.Map(mapArea,{
      mapTypeId:google.maps.MapTypeId.ROADMAP,
      zoom:17,
      center:center   
   
   });
   
   
   var marker = new google.maps.Marker({ //마커 설정
       map : map,
       position : center //마커 위치
      
   });

   var contentString = '<div>'+
   '<h2> ABCM </h2>' +
   '<p>서울시 서초구 서초중앙로 6길 17 2층</p>'
   '<div>';
   
   
   google.maps.event.addListener(marker, 'click', function() { 
	   var infowindow = new google.maps.InfoWindow( 
	   		     { content: contentString, 
	   		       size: new google.maps.Size(100,100) 
	   		     })
	   infowindow.open(map, marker);
	   });
   
   

   
   
   function success(position){
      lat = position.coord.latitude;
      lng = postiton.coord.longitude;
      center = new google.maps.LatLng(lat,lng);
      map.setCenter(center);
   };
   function error(){
      //alert('error');
   };
   
   var watch = window.navigator.geolocation.watchPosition(
      success,      //잡았으면 position객체를 잡고 success를 실행한다.
      error,
      {
         enableHighAccurancy:true,   //가장 잘잡히는 걸로 알아서 잡아라
         timeout:5000,   //5초안에 자리를 잡으면 성공 안그러면 에러
         maximumAge:0   //10으로 해놓으면 10미터가 움직였을때 다시 잡으라는 것이다.
      }
   
   );   
   
   //html5
// Checks that the PlacesServiceStatus is OK, and adds a marker
// using the place ID and location from the PlacesService.

   
   
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
					<li><a href="4_1.jsp"><b>연락처</b></a></li>
				</ul>
	
			</div>


			<!-- 메인0_5.jpg는234하지만, 헤더부분의 불투명 234px-105px(헤더) 그냥공백^^ -->
			<div style="height: 129px">			
				<!-- 상단의 이미지! -->
				<div id="header_down">
					<h1><font color="white">EIDOS</font></h1>
				</div>			
			</div>



			<!-------------------------------- 내용시작---------------------------------->
			<div id="intro">				
		
			<br><br>
			<img src="img/내용/본문_연락처_01.jpg">
			<br><br><br><br>	
		
<div id="Seoul">			
				<div style="float: left;"><img src="img/내용/본문_연락처_지도.jpg"/></div>
				<div id="map"></div>
				<br>
				<h5>서울시 서초구 서초중앙로 6길 17 2층 / 2/F Wealth Building 17, Seochojungangro 6gil, Seochogu, Korea <br> TEL: +82-2-6931-2700 / FAX: +82-2-6931-2719 / E-mail: ABCM@AndBeyondCM.com</h5>
				
			</div>	
			
			
			<br><br><br><br><br><br><br><br><br>
			
			<img src="img/내용/본문_연락처_02.jpg">
			<br><br><br><br><br><br>
	
			
			<br><br><br><br><br>
			<img src="img/내용/본문_연락처_03.jpg">		
			<br><br><br><br><br><br>

			<br><br><br><br><br>
			
			
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
				<img src="img/5_연락처/상단.jpg" width="100%" height="234px">
			</div>
			<div id="bg_footer" style="height: 85px; width:100%"></div>
		</div>

	</div>


</body>
</html>