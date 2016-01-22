<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#map{
	

   width: 300px;
   height: 300px;
   border:1px solid black;
   background: yellow;
      
}


</style>
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
      alert('error');
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



<div>


</div>

<div id="_5down" class="center">

<div class="up">
	<img src="img/5_연락처/상단.jpg">
</div>
		<div id="map"></div>
	<img id="_5img" src="img/5_연락처/5_연락처.jpg"/>

</div>


</body>
</html>