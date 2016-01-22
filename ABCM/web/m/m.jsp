<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/1.css" type="text/css">
<link rel="stylesheet" href="tinydropdown.css" type="text/css" />
<script type="text/javascript" src="tinydropdown.js"></script>

<script src="http://code.jquery.com/jquery-1.7.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"></script>
<script src="js/jquery.innerfade.js"></script>

<style>
#_1ul {
	position: absolute;
	left: 400px;
}

#_1ul>li {
	list-style: none;
	float: left;
}
</style>

</head>
<body>

	<div id="wrap">

		<!-- 위치 불변 배너 -->
		<div id="center">

			<div id="intro">
				<img src="../img/메인_1.jpg">
				<div			style="width: 100px; height: 100px;  position: absolute; left: 20px; top: 30px;">
								

    <ul id="menu" class="menu">
        
    <li><a href="#"><div style="width: 100px; height: 70px;  position: absolute; left: 20px; top:10px; z-index: 999;"></a> 
      <ul style="position: absolute; top:110px;  z-index: 999;">
        <li style=" z-index: 9999;"><a href="#"><br>회사소개</a></li>
        <li><a href="#">투자철학</a></li>
        <li class="submenu"> <a href="#">투자자안내</a> 
          <ul>
            <li class="noborder"><a href="#">One</a></li>
            <li><a href="#">Two</a></li>
            <li><a href="#">Three</a></li>
          </ul>
        </li>
         <li><a href="#">공지사항</a></li>
        <li><a href="#">연락처</a></li>
        
      </ul>
    </li>

    </ul>
				</div>

			</div>



		</div>



	</div>


	
<script type="text/javascript">
var dropdown=new TINY.dropdown.init("dropdown", {id:'menu', active:'menuhover'});
</script>


</body>
</html>