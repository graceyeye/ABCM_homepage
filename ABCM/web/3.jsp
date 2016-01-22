<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>


#_3down > #_3ul
{
	position:absolute;
	left:750px;
}

#_3down > #_3ul > li
{

	list-style: none;
	float: left;
}

/* #_1down > #_1ul > li > a{
	font-size:90%;
	font-family: 'Righteous', cursive;
	margin-left: 45px; /* 글자사이간 넓이 */
	background-color: yellow;
} */



</style>
<script>

var img;

$(document).ready(function(){
	$("#u3_1").on('click',function(){				
		$("#_3img").attr("src","img/3_투자자안내/3_일임계약절차.jpg");		
		
	});
	
	$("#u3_2").on('click',function(){		
		
		$("#_3img").attr("src","img/3_투자자안내/3_일임수수료.jpg");		
	});
	
	
});

</script>
</head>
<body>

<div id="_3down" class="center">

<div class="up">
	<img src="img/3_투자자안내/상단.jpg">
</div>
	<ul id="_3ul">
			
			<li id="u3_1">일임계약절차 /</li>
			<li id="u3_2">일임수수료 /</li>
	
	</ul>	
	<img id="_3img" src="img/3_투자자안내/3_일임계약절차.jpg"/>
</div>


</body>
</html>