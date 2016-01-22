<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

#mcenter_top>img{
 background: pink;
 margin: 0 auto; 
 position: relative;
  width: 1900px;
}

#mcenter_down{
	position:relative;
	left:450px;
	background:#fafafa;
}
#mcenter_down > img
{
	border:0;
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
<div id=mcenter_top>
<img src="img/0_첫페이지/메인_05.jpg" width="100%">
</div>

<table id = mcenter_down border=0 cellpadding=0 cellspacing=0>
<tr>
<td><a href="go.do?next=1"><img id="main_08" src="img/0_첫페이지/메인_08.jpg"/></a></td>
<td><a href="go.do?next=2"><img id="main_09" src="img/0_첫페이지/메인_09.jpg"/></a></td>
<td><a href="go.do?next=3"><img id="main_10" src="img/0_첫페이지/메인_10.jpg"/></a></td>
</tr>
<tr>
<td><a href=""><img id="main_12" src="img/0_첫페이지/메인_12.jpg"/></a></td>
<td><a href="go.do?next=5"><img id="main_13" src="img/0_첫페이지/메인_13.jpg"/></a></td>
<td><img src="img/0_첫페이지/메인_14.jpg"/></td>
</tr>
</table>
</div>
</body>
</html>