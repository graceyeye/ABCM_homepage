<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>


#_1down > #_1ul
{
	position:absolute;
	left:750px;
}

#_1down > #_1ul > li
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
	$("#u1_1").on('click',function(){				
		$("#_1img").attr("src","img/1_회사소개/1_개요.jpg");		
		
	});
	
	$("#u1_2").on('click',function(){		
		
		$("#_1img").attr("src","img/1_회사소개/1_경영이념.jpg");		
	});
	
	$("#u1_3").on('click',function(){		
	
		$("#_1img").attr("src","img/1_회사소개/1_연혁.jpg");		
	});
	
	$("#u1_4").on('click',function(){		
	
		$("#_1img").attr("src","img/1_회사소개/1_운용인.jpg");		
	});
	
});

</script>
</head>
<body>

<div id="_1down" class="center">

<div class="up">
	<img src="img/1_회사소개/상단.jpg">
</div>

	<ul id="_1ul">
			
			<li id="u1_1">개요 /</li>
			<li id="u1_2">경영이념 /</li>
			<li id="u1_3">연혁 / </li> 
			<li id="u1_4">운용인력 /</li>
	</ul>	
	<img id="_1img" src="img/1_회사소개/1_개요.jpg"/>
</div>


</body>
</html>