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

<script type="text/javascript">

$(document).ready(function(){
 	var a = $('#photoname').text();	
 	var pho1 = "";
		if(a != " " )
		{		
			
			if(a.match("jpg") || a.match("PNG")){
				//alert('jpg입니다');
				pho1 = "<br> <img src="+"board/img/${bdetail.photo}"+" width=800px > <br><br>";
			
			}else if(a.match("pdf"))
			{
				
				//alert('pdf입니다');
				pho1 = "<object type='application/pdf' data='board/img/ㅎㅎ.pdf' width='800px' height='600px'>"+
				"<param name='src' value='board/img/${bdetail.photo}'> </object>";


			}
			
			
			var down = "<a href=board/img/${bdetail.photo} download><b>다운로드</b></a>";			
			$('#photoname').html(pho1);
			$('#photoname').prepend(down);
			
		}else
		{
		} 
		
		
		/* 타이틀 텍스트 불러오기 
		   1.타이틀 내에 / 가있는경우  --> 타이틀색깔 / 굵기 / 제목 쪼갠후 보여주기
		   2./가 없는경우(두번째 업데이트에 해당)  --> 바로 보여지기 
		*/	
		 
		var title = $("#title").text();
		var temp;

		if (title.match('/')) {
			//split으로 쪼개준다.
			var title_arr = title.split("/");
			

			//쪼개진 제목확인. 
			for (var i = 0; i < title_arr.length; i++) {
				//alert("AA"+title_arr[0]+"AA");
			}
			
			
			//보드굵기 확인
			if (title_arr[1] == "bold") {
				temp = "<b>" + title_arr[2] + "</b>";
			} else {
				temp = title_arr[2];
			}
			
			//보드색깔 확인
	/* 		if (title_arr[0] == "red") 
			{
				temp = "<font color='red'>" + temp + "</font>";
			} else if (title_arr[0] == "blue") 
			{
				temp = "<font color='blue'>" + temp + "</font>";
			} else if (title_arr[0] == "black")
			{
				temp = "<font color='black'>" + temp + "</font>";
			} */
			
			temp = "<font color='"+title_arr[0]+"'>" + temp + "</font>";
		
			//alert(temp); 
			$('#title').html(temp);
		} 
		else 
		{
			$('#title').html(temp);

		}

	});

	function boardupdate() {

		var c = confirm('UPDATE?');
		if (c == true) {
			f.encoding = 'multipart/form-data';
			f.action = 'boardupdate1.do'
			f.method = 'post';
			f.submit();

		}

	}

	function boarddelete() {

		var c = confirm('DELETE?');
		if (c == true) {
			f.encoding = 'multipart/form-data';
			f.action = 'boarddelete.do'
			f.method = 'post';
			f.submit();

		}

	}
</script>
<style>
table.type05 {
 
    border-spacing: 1px;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;  
    margin: 0 auto;
}
table.type05 th {
    width: 10px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #efefef;
}
table.type05 td {
    width:400px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
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
					<li><a href="4_1.jsp">연락처</a></li>
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
		<br><br><br>
<div id="boarddetail" class="center">
	<form name="f">
		<input type="hidden" name="seq" value="${bdetail.seq}"> 				

<table class="type05">
    <tr>
        <th scope="row">TITLE</th>
        <td><div id="title">${bdetail.title}</div></td>
    </tr>
    <tr>
        <th scope="row">REGDATE</th>
        <td> ${bdetail.regdate}</td>
    </tr>
    <tr>
        <th scope="row">WRITER</th>
        <td>${bdetail.writer}</td>
    </tr>
    <tr>
        <th scope="row">CONTENTS</th>
        <td>${bdetail.contents}</td>
    </tr>
     <tr>
     
        <th scope="row">PHOTO</th>
        <td>${bdetail.photo} <br>
      
        
     	 <b5 id="photoname">${bdetail.photo}</b5>
        </td>
        
    </tr>



<!-- <object type='application/pdf' data='board/img/ㅎㅎ.pdf' width='100%' height='450px'>
<param name='src' value='board/img/ㅎㅎ.pdf'> </object>
 -->

    <c:choose>
			<c:when test="${logincust != null }">
			    <td>
			   	 	<input type="button" value="UPDATE" onclick="boardupdate();">
					<input type="button" value="DELETE" onclick="boarddelete();">
				<td>
		
			</c:when>
	</c:choose>

	<tr>
	
		
		</table>

		

	</form>

</div>
			
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
			<div style="height: 234px">
				<img src="img/4_공지사항/상단.jpg" width="100%" height="234px">
			</div>
			<div id="bg_footer" style="height: 85px; width:100%"></div>
		</div>

	</div>


</body>
</html>