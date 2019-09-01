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


<%@ include file="/WEB-INF/include/header.jspf"%>

<section class="container">

	<div id="christmas_promotion_boxes" style="text-align: center;">
		<c:forEach var="main" items="${main}">
			<ul class="imgliststyle">
				<li><a href='/main/dtpage?storeid=${main.storeid}'> <img
						src="${main.img}"
						style="width: auto; height: 250px; overflow: hidden;"></li>
			</ul>
	</div>
	<div class="storename">
		<h4 class="card-title" style="font-size: 45px;">
			<b>${main.storename}</b>
		</h4>
	</div>

	<form method="get" action="/feedback/register">
		<input type="hidden" name="storeid" value="${main.storeid}"> 
		<input type="submit" value="리뷰 작성하기">
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
										<ul>
											<a href="/mukkitList/insert?storeid=${main.storeid}"> <img
												id="InsertBtn"
												src="${pageContext.request.contextPath}/resources/dist/img/mukkitlist/plus.svg">
											</a>
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
														width="100%" height="auto" alt="지도 크게 보기" title="지도 크게 보기"
														border="0" style="vertical-align: top;" /></a></td>
											</tr>

										</table>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</form>

		</div>

	</div>

	<div class="signup-cont cont">

		<form method="post" id="viewForm" name="viewForm">
			<table class="reviewstartable">
				<tr>
					<td class="starlist">
						<ul>
							<li>총점</li>
						</ul>
						<ul>
							<li class="${main.star}"></li>
						</ul>
					</td>
					<td>
						<ul>
							<li>맛 : ${main.tastestar}</li>
						</ul> <br>
						<ul>
							<li>가성비 : ${main.costefstar}</li>
						</ul> <br>
						<ul>
							<li>서비스 : ${main.servicestar}</li>
						</ul>
					</td>
				</tr>
			</table>
			<c:forEach items="${list}" var="boardVO">
				<ul class="rwlist">
					<li><input type="hidden" value="${boardVO.reviewid}" /></li>
					<li><img src="${boardVO.imgname}" /></li>
					<%-- <c:forEach items="${main}" var="main"> --%>
					<li><img src="${main.img}" class="proimg"> <%-- </c:forEach> --%>
						<span style="margin-left: 20px;"></span>${boardVO.memberid}<br>
						<ul class="reviewstar">
							<li>맛 ${boardVO.taste}</li>
							<li>서비스 ${boardVO.service}</li>
							<li>가성비 ${boardVO.costef}</li>
						</ul></li>

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
	</div>
	<!-- signup-cont cont end-->
	<%-- <div class="box-footer">
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
	</div> --%>
	<div class="half bg"></div>
	</c:forEach>
</section>



<%@ include file="/WEB-INF/include/footer.jspf"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>



<script type="text/javascript">

$(".0").html("&#9734; &#9734; &#9734; &#9734; &#9734;");
$(".1").html("&#9733; &#9734; &#9734; &#9734; &#9734;");
$(".2").html("&#9733; &#9733; &#9734; &#9734; &#9734;");
$(".3").html("&#9733; &#9733; &#9733; &#9734; &#9734;");
$(".4").html("&#9733; &#9733; &#9733; &#9733; &#9734;");
$(".5").html("&#9733; &#9733; &#9733; &#9733; &#9733;"); 



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
	$(this).addClass('active');
	$('.cont').hide();
	$('.signin-cont').show();
	
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
