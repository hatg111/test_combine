<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<!-- Bootstrap core CSS -->
<link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resources/dist/css/shop-homepage.css" rel="stylesheet">

<link href="/resources/dist/css/dtindex.css" rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Noto+Sans+KR&display=swap&subset=korean"
	rel="stylesheet">


<style rel="stylesheet">
@charset "UTF-8";

@import url(https://fonts.googleapis.com/css?family=Lato:400,700);

* {
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	font-family: 'Lato', sans-serif;
	background-color: #f8f8f8;
}

body .container {
	position: relative;
	overflow-x: hidden;
	overflow-y: scroll;
	width: 100%;
	height: 100%;
	margin: 150px auto 0;
	background-color: #ffffff;
	-moz-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
	-webkit-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
}

body .container h1 {
	font-size: 18px;
	font-weight: 700;
	margin-bottom: 23px;
	text-align: center;
	text-indent: 6px;
	letter-spacing: 7px;
	text-transform: uppercase;
	color: #263238;
}

body .container .tabs .tab {
	display: inline-block;
	margin-bottom: -1px;
	padding: 20px 15px 10px;
	cursor: pointer;
	letter-spacing: 0;
	border-bottom: 1px solid #d9d9d9;
	-moz-user-select: -moz-none;
	-ms-user-select: none;
	-webkit-user-select: none;
	user-select: none;
	transition: all 0.1s ease-in-out;
}

body .container .tabs .tab a {
	font-size: 30px;
	text-decoration: none;
	text-transform: uppercase;
	color: #d9d9d9;
	transition: all 0.1s ease-in-out;
}

body .container .tabs .tab.active a, body .container .tabs .tab:hover a
	{
	color: #263238;
}

body .container .tabs .tab.active {
	border-bottom: 1px solid #263238;
}

body .container .content form {
	position: relative;
	height: 100%;
}

body .container .content label:first-of-type, body .container .content input:first-of-type,
	body .container .content .more:first-of-type {
	-moz-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
	-webkit-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
	animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
}

body .container .content label:nth-of-type(2), body .container .content input:nth-of-type(2),
	body .container .content .more:nth-of-type(2) {
	-moz-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
	-webkit-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
	animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
}

body .container .content label:nth-of-type(3), body .container .content input:nth-of-type(3),
	body .container .content .more:nth-of-type(3) {
	-moz-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
	-webkit-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
	animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
}

body .container .content label {
	font-size: 12px;
	color: #263238;
	-moz-user-select: -moz-none;
	-ms-user-select: none;
	-webkit-user-select: none;
	user-select: none;
}

body


















































































.container









































 









































.content









































 









































label


















































































:not










































 









































(
[
for
=
'remember'
]









































 









































)
{
display


















































































:









































 









































none


















































































;
}
body .container .content input.inpt {
	font-size: 14px;
	display: block;
	width: 100%;
	height: 42px;
	margin-bottom: 12px;
	padding: 16px 13px;
	color: #999999;
	border: 1px solid #d9d9d9;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
}

body .container .content input.inpt::-webkit-input-placeholder {
	font-size: 14px;
	color: #999999;
	font-family: 'Lato', sans-serif;
}

body .container .content input.inpt:-moz-placeholder {
	font-size: 14px;
	color: #999999;
	font-family: 'Lato', sans-serif;
}

body .container .content input.inpt::-moz-placeholder {
	font-size: 14px;
	color: #999999;
	font-family: 'Lato', sans-serif;
}

body .container .content input.inpt:-ms-input-placeholder {
	font-size: 14px;
	color: #999999;
	font-family: 'Lato', sans-serif;
}

body .container .content input.inpt:focus {
	border-color: #999999;
}

body .container .content input.submit {
	font-size: 12px;
	line-height: 42px;
	display: block;
	width: 100%;
	height: 42px;
	cursor: pointer;
	vertical-align: middle;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #263238;
	border: 1px solid #263238;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
}

body .container .content input.submit:hover {
	background-color: #263238;
	color: #ffffff;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
}

body .container .content input:focus {
	outline: none;
}

body .container .content .checkbox {
	margin-top: 4px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	width: 0;
	height: 0;
	margin: 17px -1px;
	padding: 0;
	border: 0;
}

body .container .content .checkbox+label {
	vertical-align: middle;
	display: inline-block;
	width: 50%;
}

body .container .content .checkbox+label:before {
	content: "\A";
	color: #999999;
	font-family: Verdana;
	font-weight: bold;
	font-size: 8px;
	line-height: 10px;
	text-align: center;
	display: inline-block;
	vertical-align: middle;
	position: relative;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	background: transparent;
	border: 1px solid #d9d9d9;
	width: 11px;
	height: 11px;
	margin: -2px 8px 0 0;
}

body .container .content .checkbox:checked+label:before {
	content: "✓";
}

body .container .content .submit-wrap {
	position: absolute;
	bottom: 0;
	width: 100%;
}

body .container .content .submit-wrap a {
	font-size: 12px;
	display: block;
	margin-top: 20px;
	text-align: center;
	text-decoration: none;
	color: #999999;
}

body .container .content .submit-wrap a:hover {
	text-decoration: underline;
}

body .container .content .signup-cont {
	display: none;
}

@
keyframes slideIn { 0% {
	filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
	opacity: 0;
	margin-left: -320px;
}

100%
{
filter




















































































:progid




















































































:DXImageTransform




















































































.Microsoft




















































































.Alpha






















































































(
enabled




















































































=
false


















































































);
opacity










































 










































1;
margin-left




















































































:




















































































0
px


















































































;
}
}
@
-webkit-keyframes slideIn { 0% {
	filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
	opacity: 0;
	margin-left: -320px;
}

100%
{
filter




















































































:progid




















































































:DXImageTransform




















































































.Microsoft




















































































.Alpha






















































































(
enabled




















































































=
false


















































































);
opacity




















































































:




















































































1;
margin-left




















































































:




















































































0
px


















































































;
}
}
.credits {
	display: block;
	position: absolute;
	right: 0;
	bottom: 0;
	color: #999999;
	font-size: 14px;
	margin: 0 10px 10px 0;
}

.credits a {
	filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=80);
	opacity: 0.8;
	color: inherit;
	font-weight: 700;
	text-decoration: none;
}
/* ------------------------------------------------------------------- */
.reviewstartable {
	margin-top: 20px;
	margin-left: auto;
	margin-right: auto;
	width: 100%;
	rules: none;
}

.reviewusertable {
	border: 1px;
	rules: none;
	margin-left: auto;
	margin-right: auto;
	width: 100%;
	border: 1px;
}

.reviewstar ul {
	list-style: none;
}

.reviewstar li {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	border: 0;
	float: left;
	margin-top: 20px;
	margin-right: 20px;
}

.reviewstartd {
	display: table;
	margin-left: auto;
	margin-right: auto;
}

.reviewuserid li {
	float: left;
}

.reviewimg {
	
}

.scoreall {
	text-align: center;
}

#christmas_promotion_boxes div {
	text-align: center;
}

.tabs {
	background: #ffffff;
	margin: 0;
	padding: 0;
	list-style: none;
	position: fixed;
	width: 100%;
	top: 70px;
	left: 0;
	z-index: 3000;
}

.tabs>ul {
	text-align: center;
}

.tabs>li {
	background: #ffffff;
	display: inline-block;
}

.tabs>li>a {
	background: #ffffff;
	display: block;
	text-decoration: none;
	padding: 10px 20px;
}

.tabs>li>a:hover {
	background: #e0e0e0;
}

.sangselist {
	font-size: 25.5px;
	border-bottom: 5px solid #d9d9d9;
	text-align: left;
}

.sangselistli {
	text-align: left;
}

.sangselistleft {
	float: left;
}

.sangselistright {
	float: right;
}

.star-rating {
	width: 205px;
}

.star-rating, .star-rating span {
	display: inline-block;
	height: 39px;
	overflow: hidden;
	background: url(star.png) no-repeat;
}

.star-rating span {
	background-position: left bottom;
	line-height: 0;
	vertical-align: top;
}

.storename {
	font-size: 40px;
	border-bottom: 5px solid #d9d9d9;
	text-align: center;
	font-weight: bold;
}

.imgliststyle {
	list-style: none;
	margin: 0;
	padding: 0;
	width: 100%;
	overflow: hidden;
}

.imgliststyle li {
	float: left;
	width: 100%;
	padding: 5px;
}

.imgliststyle>li>img {
	width: 95%;
	height: 300px;
	object-fit: cover;
}

.liststyle {
	text-align: center;
}

.proimg {
	border-radius: 50%;
	width: 100px;
	height: 100px;
}

.reviewimg {
	margin: 0 auto;
}

.rvlist {
	margin-top: 50px;
}

.rvdat {
	margin-top: 10px;
}

.rwlist li {
	margin-top: 10px;
}

.rwtext li {
	text-align: left;
	margin-top: 10px;
	font-size: 20px;
	font-family: '굴림체';
	margin-top: 10px;
}
</style>


<%@ include file="/WEB-INF/include/header.jspf"%>

<section class="container">

	<div id="christmas_promotion_boxes" style="text-align: center;">
		<c:forEach var="main" items="${main}">
			<ul class="imgliststyle">
				<li><a href="/main/dtpage?storeid=${main.storeid}"> <img
						src="${main.img}"
						style="width: auto; height: 250px; overflow: hidden;"></a></li>
			</ul>
		</c:forEach>
	</div>

	<div class="storename">
		<c:forEach var="main" items="${main}">
			<h4 class="card-title" style="font-size: 45px;">
				<b>${main.storename}</b>
			</h4>
		</c:forEach>
	</div>

	<form method="get" action="/feedback/register">


		<c:forEach var="main" items="${main}">
			<input type="hidden" name="storeid" value="${main.storeid}">
			<input type="submit" value="리뷰 작성하기">
		</c:forEach>


	</form>

	<!-- ========================================================================================= -->

	<div class="tabs">
		<ul>
			<li class="tab signin active"><a href="#signin">가게소개</a></li>
			<li class="tab signup"><a href="#signup">리뷰보기</a></li>
		</ul>
	</div>
	<div class="content">
		<div class="signin-cont cont">
			<form action="#" method="post" enctype="multipart/form-data">
				<div class="row">
					<div class="all">
						<div class="list">
							<div class="card-body">
								<div class="card-topbox">
									<div>
										<c:forEach var="main" items="${main}">
											<ul>
												<li class="sangselist"><b>편의정보</b></li>
												<br>
											</ul>

											<ul>
												<li><span class="sangselistleft">영업시간</span> <span
													class="sangselistright">${main.openhours}</span></li>
												<br>
												<br>
												<li><span class="sangselistleft">배달여부</span> <span
													class="sangselistright">${main.delivery}</span></li>
												<br>
												<br>
												<li><span class="sangselistleft">교통정보</span> <span
													class="sangselistright">${main.trans}</span></li>
												<br>
												<br>
												<li><span class="sangselistleft">연락처</span> <span
													class="sangselistright">${main.contact}</span></li>

												<br>
												<br>

												<li><span class="sangselistleft">휴무</span> <span
													class="sangselistright">${main.holiday}</span></li>
												<br>

											</ul>

											<ul>
												<li class="sangselist"><b>음식종류</b></li>
												<br>
												<li class="sangselistli">${main.foodtype}</li>
											</ul>
											<br>

											<ul>
												<li class="sangselist"><b>가격대</b></li>
												<br>
												<li class="sangselistli">${main.price}</li>
												<br>
											</ul>

											<ul>
												<li class="sangselist"><b>상세주소</b></li>
												<br>
												<li class="sangselistli">${main.address}</li>
												<br>
											</ul>

											<h3 style="text-align: center;">가게 위치 정보</h3>
											<table>
												<tr>
													<td style="border: 1px solid #cecece; width: 100%;"><a
														href="https://map.naver.com/?searchCoord=6c0c74fae5f0caab9a45d173519710ed67694b2b2430e55efd453387d07036f1&query=7Jyh7IiY64u5&tab=1&lng=ed9af846247bceb9a56d82c59372a5d6&mapMode=0&mpx=66d7c1183de509145c88f3ebd7f2d8afed518eda38f7ffa36614f72c1948f5605c36a0780cd43ad2d84ac2a503ceac700ba614b6037b5d1b177e612e82610dce&lat=e76e4b788585d549d145830469b810a8&dlevel=8&enc=b64&menu=location"
														target="_blank"> <img
															src="http://prt.map.naver.com/mashupmap/print?key=p1560755471919_748661119"
															width="100%" height="auto" alt="지도 크게 보기"
															title="지도 크게 보기" border="0" style="vertical-align: top;" /></a></td>
												</tr>

											</table>
										</c:forEach>
									</div>



								</div>


							</div>
							<!-- </div> -->
						</div>

					</div>

				</div>

			</form>

		</div>
		<!-- ========================================================================================= -->
		<div class="signup-cont cont">
			<!-- <form method="post" enctype="multipart/form-data"> -->
			<form method="post" id="viewForm" name="viewForm">
				<table class="reviewstartable">
					<tr>
						<td class="starlist">
							<ul>
								<li>총점</li>
							</ul>
							<ul>
								<li>&#9733; &#9733; &#9733; &#9733;&#9734;</li>
							</ul>
						</td>
						<td>
							<ul>
								<li>맛 : &#9733; &#9733; &#9733; &#9733;&#9734;</li>
							</ul> <br>
							<ul>
								<li>서비스 : &#9733; &#9733; &#9733; &#9733;&#9734;</li>
							</ul> <br>
							<ul>
								<li>가성비 : &#9733; &#9733; &#9733; &#9733;&#9734;</li>
							</ul>
						</td>
					</tr>
				</table>
				<c:forEach items="${list}" var="boardVO">
					<ul class="rwlist">
						<li><input type="hidden" value="${boardVO.reviewid}" /></li>
						<li><img src="${boardVO.imgname}" /></li>
						<c:forEach items="${main}" var="main">
							<li><img src="${main.img}" class="proimg">
						</c:forEach>
						<span style="margin-left: 20px;"></span>${boardVO.memberid}<br>
						<ul class="reviewstar">
							<li>맛 ${boardVO.taste}</li>
							<li>서비스 ${boardVO.service}</li>
							<li>가성비 ${boardVO.costef}</li>
						</ul>
						</li>

					</ul>

					<table>
						<tr>
							<td>
								<ul class="rwtext">
									<li>${boardVO.review}</li>
									<li><a href='#' onClick='fn_update()'>수정</a> <a href='#'
										onClick='fn_delete()'>삭제</a></li>
								</ul>
							</td>

						</tr>
					</table>
					<input type="hidden" name="storeid" value="${boardVO.storeid}">
					<input type="hidden" name="reviewid" value="${boardVO.reviewid}">

				</c:forEach>
			</form>

		</div> <!-- signup-cont cont end-->
		<div class="box-footer">
			<div class="text-center">
				<ul class="pagination">

					<c:if test="${pageMaker.prev}">
						<li><a href="${pageMaker.startPage - 1}">&laquo;</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }" var="idx">
						<li
							<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
							<a href="${idx}">${idx}</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a href="${pageMaker.endPage +1}">&raquo;</a></li>
					</c:if>

				</ul>
			</div>
		</div>

		<div class="half bg"></div>
</section>


<%@ include file="/WEB-INF/include/footer.jspf"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script>
	//수정
	function fn_update() {

		var form = document.getElementById("viewForm");
		var reviewid = "${feedbackvo.reviewid}";
		var storeid = "${feedbackvo.storeid}";
		form.action = "/feedback/reviewupdate?" + storeid + reviewid;
		form.submit();
	}

	//삭제
	function fn_delete() {

		var form = document.getElementById("viewForm");

		form.action = "<c:url value='/feedback/delete'/>";
		form.submit();

	}
</script>

<!-- 
<script>
//Delete
$(document).on("click","#btn-remove",function() {
	var IsConfirm = confirm('정말 삭제하시겠습니까?');
	
if (IsConfirm){
	var storeid = $(this).next().attr("data-storeid");
	var reviewid = $(this).next().attr("data-reviewid");
	var memberid = $(this).next().attr("data-memberid");
	$.ajax({
		type : 'delete',
		url : "/main/delete/"+memberid+"/"+storeid+"/"+reviewid,
		dataType : 'text',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "DELETE"
		},
		success : function(result) {
			if (result == 'SUCCESS') {
				alert("삭제 되었습니다.");
				getPageList();
			}
		}
	}); //ajax
	}//if문
}); //Delete end
</script>
 -->
<!-- 
<script>
	//삭제 버튼 누르면 삭제할 것이냐고 묻고 삭제한다고 하면 주소이동(BoardController의 remove 메소드 호출)
	$(function() {
		$('#modity_btn').click(
				function() {
					if (confirm("글 내용을 수정 하시겠습니까?")) {
						var reviewid = "${feedbackvo.reviewid}";
						var storeid = "${feedbackvo.storeid}";
						self.location.href = "/feedback/reviewupdate?reviewid="
								+ reviewid + "?storeid=" + storeid;
					}
				});
	});
</script>
 -->
<script type="text/javascript">
	function initialize() {
		var myLatlng = new google.maps.LatLng(37.556911, 126.918694);
		var myOptions = {
			zoom : 15,
			center : myLatlng,
			mapTypeId : google.maps.MapTypeId.TERRAIN
		}
		var map = new google.maps.Map(document.getElementById("map_canvas"),
				myOptions);
		var marker = new google.maps.Marker({
			position : myLatlng,
			map : map,
			title : "(주)서울"
		});
		var infowindow = new google.maps.InfoWindow({
			content : "(주)서울시 마포구"
		});
		infowindow.open(map, marker);
	}
	window.onload = function() {
		initialize();
	}
</script>

<script type="text/javascript">
	$('.tabs .tab').click(function() {
		if ($(this).hasClass('signin')) {
			$('.tabs .tab').removeClass('active');
			$(this).addClass('active');
			$('.cont').hide();
			$('.signin-cont').show();
		}
		if ($(this).hasClass('signup')) {
			$('.tabs .tab').removeClass('active');
			$(this).addClass('active');
			$('.cont').hide();
			$('.signup-cont').show();
		}
	});
	$('.container .bg').mousemove(
			function(e) {
				var amountMovedX = (e.pageX * -1 / 30);
				var amountMovedY = (e.pageY * -1 / 9);
				$(this).css('background-position',
						amountMovedX + 'px ' + amountMovedY + 'px');
			});
</script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=keykeykeykeykeykey&libraries=services"></script>

