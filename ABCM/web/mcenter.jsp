<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

#mcenter_top>img{
  margin: 0 auto; 
  position: relative;
  width: 1900px;
}

#mcenter_down{
    margin: 0 auto; 
 	position: relative;
  	width: 1900px;
}

</style>

<script>
$(document).ready(function () {  // 바로 실행
    
    $('#main_08').hover(function () {    // 마우스가 올라갈 경우 hover클래스 추가
        $("#main_08").attr("src","img/0_첫페이지/메인_08_1.jpg");
    }, function () {    // 마우스가 올라간 상태에서 내려가면 hover클래스 제거
    	 $("#main_08").attr("src","img/0_첫페이지/메인_08.jpg");
    });
    
    $('#main_09').hover(function () {    // 마우스가 올라갈 경우 hover클래스 추가
        $("#main_09").attr("src","img/0_첫페이지/메인_09_1.jpg");
    }, function () {    // 마우스가 올라간 상태에서 내려가면 hover클래스 제거
    	 $("#main_09").attr("src","img/0_첫페이지/메인_09.jpg");
    });
    
    $('#main_10').hover(function () {    // 마우스가 올라갈 경우 hover클래스 추가
        $("#main_10").attr("src","img/0_첫페이지/메인_10_1.jpg");
    }, function () {    // 마우스가 올라간 상태에서 내려가면 hover클래스 제거
    	 $("#main_10").attr("src","img/0_첫페이지/메인_10.jpg");
    });
    
    $('#main_12').hover(function () {    // 마우스가 올라갈 경우 hover클래스 추가
        $("#main_12").attr("src","img/0_첫페이지/메인_12_1.jpg");
    }, function () {    // 마우스가 올라간 상태에서 내려가면 hover클래스 제거
    	 $("#main_12").attr("src","img/0_첫페이지/메인_12.jpg");
    });
    
    $('#main_13').hover(function () {    // 마우스가 올라갈 경우 hover클래스 추가
        $("#main_13").attr("src","img/0_첫페이지/메인_13_1.jpg");
    }, function () {    // 마우스가 올라간 상태에서 내려가면 hover클래스 제거
    	 $("#main_13").attr("src","img/0_첫페이지/메인_13.jpg");
    });
    
    
});

</script>
</head>

<body>
<div class="center">
<!-- 상단의 큰 이미지  -->
<div id="mcenter_top">
<img src="img/0_첫페이지/메인_05.jpg" width="100%">
</div>

<!-- 중간 이미지  -->
<div id="mcenter_mid">

<img src="img/0_첫페이지/메인_mid.png" width="100%">
</div>

<div id="mcenter_down">
<img src="img/0_첫페이지/메인_down.jpg" width="100%">
</div>

</div>


</body>
</html>