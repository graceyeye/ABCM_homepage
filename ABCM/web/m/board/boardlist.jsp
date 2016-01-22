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


/* 테이블리스트 */
#boardlist
{
	 margin: 0 auto; 
	 text-align: center; 
	
}

/* 리스트 테이블 */
#boardtable
{
	width: 700px; 
	border-collapse:collapse; 
	margin: 0 auto;
	font-size: 13.5px;
}

tr 
{
	border: 1px solid  #efefef;
	
	
}

td 
{
	  padding-top: 8px;
	padding-bottom: 8px;
	
}



#bg_header {
	position: absolute;
	top: 0px;
	left: 0px;
	height: 105px;
	width: 100%;
	opacity:0.8;
	background-color: white;
}

</style>

<script>
	$(document).ready(function() {
		//리스트 뽑아서 출력한다. 나중에 for돌리자!

		var title;
		var temp;

		for (var i = 1; i < 30; i++) {
			title = $('#' + i).text(); //ID
			//alert(title);

			var title_arr = title.split("/");

			if (title_arr[1] == "bold") {
				temp = "<b>" + title_arr[2] + "</b>";
			} else {
				temp = title_arr[2];
			}
			//alert(title_arr[3])

			temp = "<font color='"+title_arr[0]+"'>" + temp + "</font>";

			$('#' + i).html(temp);
		}

	});
</script>
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
		        <li style=" z-index: 9999;"><a href="m/1_1.jsp"><br>회사소개</a></li>
		        <li><a href="m/2_1.jsp"><br>투자철학</a></li>
		        <li> <a href="m/3_1.jsp"><br>투자자안내</a></li>
		         <li><a href="mboardlist.do"><br>공지사항</a></li>
		        <li><a href="m/4_1.jsp"><br>연락처</a></li>
		      </ul>
		    </li>
		
		    </ul>
	</div>
		
		<!-- 메뉴아이콘 -->
			<div id="header" style="height: 105px">
				<img src="img/모바일/메뉴아이콘.png">
				<a href="m/main.jsp" 
				style="position: absolute; left:400px;"><img src="img/main/로고_상단.png" /></a>

				
			</div>
			
<!-----------------  여기까지는 메뉴!! ------------------->


			<!-- 메인0_5.jpg는234하지만, 헤더부분의 불투명 234px-105px(헤더) 그냥공백^^ -->
			<div style="height: 129px">
				<!-- 상단의 이미지! -->
				<div id="header_down">
					<h1>
						<font color="white">NEWS</font>
					</h1>
				</div>
			</div>



			<!-------------------------------- 내용시작---------------------------------->
			<div id="intro">

				<div id="boardlist" >
					<div class="up"></div>	
					<br>

					<br><br>
					<table id="boardtable">
						<thead>
							<tr style="background-color: #efefef;" >
								<td><b>번호</b></td>
								<td><b>제목</b></td>
								<td><b>작성자</b></td>
								<td><b>작성일</b></td>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${plist}" var="list">
								<tr>
									<td>${list.seq}</td>
									<td><a href="mboarddetail.do?seq=${list.seq}"
										id="${list.seq}">${list.title}</a></td>
									<td>${list.writer}</td>
									<td>${list.regdate}</td>
									<td id="title"></td>

								</tr>
							</c:forEach>

						</tbody>


					</table>
					<br>
					<br>

					<%-- <c:choose>
			<c:when test="${logincust != null }">
			 	<button type="button" onclick="location.href='go.do?next=board/boardform'">글쓰기</button>
			</c:when>
		</c:choose>	  --%>


<!-- <button type="button" onclick="location.href='go.do?next=board/boardform'">TESfT</button>
 -->

				</div>



			</div>


			<div id="footer" style="height: 85px;">
				<h5>
					17 Seochojungang-Ro 6 Gil, 2nd Floor, Seocho-Gu, Seoul, 137878,
					South Korea<br> Tel: +82-2-6931-2700 Fax: +82-2-6931-2719
					E-mail: ABCM@AndBeyondCM.com<br> Copyright© 2014 AndBeyond
					Capital Management Co., <a href="login.jsp">Ltd.</a> - All Rights
					Reserved
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
			<div id="bg_footer" style="height: 85px; width: 100%"></div>
		</div>

	</div>
<script type="text/javascript">
var dropdown=new TINY.dropdown.init("dropdown", {id:'menu', active:'menuhover'});
</script>


</body>
</html>