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

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script type="text/javascript" src="/resources/dist/js/iscroll.js"></script>
<link type="text/css" href="/resources/css/index.css" rel="stylesheet" />

<style>
.naverMap {
	margin: 0 auto;
	width: 1000px;
	max-width: 100%;
	height: 150px;
	margin-bottom: 20px;
}
</style>
<%@ include file="/WEB-INF/include/header.jspf"%>


<div id="naverMap" class="naverMap"></div>
<!-- <form action="/main/storeinsert">
	<input type="submit" value="가게정보추가">
</form> -->


<!-- <div id="map_canvas"
	style="margin: 0 auto; width: 1000px; max-width: 100%; height: 250px; margin-bottom: 20px; senser: true"></div> -->
<c:forEach var="main" items="${main}">

<div class="left">
	<ul class="store">
		<li>
		<a href="/main/dtpage?storeid=${main.storeid}">
		<img class="card-img-top-center" style="width: 300px; height: 150px; overflow: hidden"
				src="${main.img}"  alt="맛집이미지">
		</a>
		</li>
		<li><div class="card-body">
				<h4 class="card-title">
					<a href="/main/dtpage?storeid=${main.storeid}">${main.storename}</a>



				</h4>
				<!-- <p class="card-text">(가게에 대한 간단한 소개)</p> -->

			</div></li>
		<li><div class="card-footer">
				<small class="text-muted ${main.star}">
					</small>
			</div></li>
	</ul>
</div>
</c:forEach>
<br>
<br>
<br>

<%@ include file="/WEB-INF/include/footer.jspf"%>


<script
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=mn7cwsrvym"></script>
<script>
	var map = new naver.maps.Map('naverMap', {
		center : new naver.maps.LatLng(37.5666805, 126.9784147),
		zoom : 11,
		mapTypeId : naver.maps.MapTypeId.NORMAL
	});

	var infowindow = new naver.maps.InfoWindow();

	function onSuccessGeolocation(position) {
		var location = new naver.maps.LatLng(position.coords.latitude,
				position.coords.longitude);

		map.setCenter(location); // 얻은 좌표를 지도의 중심으로 설정합니다.
		map.setZoom(11); // 지도의 줌 레벨을 변경합니다.

		infowindow
				.setContent('<div style="padding:20px;">' + '내 위치' + '</div>');

		infowindow.open(map, location);
		console.log('Coordinates: ' + location.toString());
	}

	function onErrorGeolocation() {
		var center = map.getCenter();

		infowindow.setContent('<div style="padding:20px;">'
				+ '<h5 style="margin-bottom:5px;color:#f00;">위치 받기 실패</h5>'
				+ "위도: " + center.lat() + "<br />경도: " + center.lng()
				+ '</div>');

		infowindow.open(map, center);
	}

	$(window)
			.on(
					"load",
					function() {
						if (navigator.geolocation) {
							navigator.geolocation.getCurrentPosition(
									onSuccessGeolocation, onErrorGeolocation);
						} else {
							var center = map.getCenter();
							infowindow
									.setContent('<div style="padding:20px;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5></div>');
							infowindow.open(map, center);
						}
					});
	//naverMap 값은 div 의 id
	/* new naver.maps.Map('naverMap', {

	// 지도 중앙 위치 : 위도, 경도 설정
	center : new naver.maps.LatLng( 37.5782709, 126.9770043 ),

	// 줌 설정 : 1~14, 수치가 클수록 지도 확대(줌인), 이 옵션 생략시 기본값 9
	zoom : 11,

	});  */
		$(".0").html("&#9734; &#9734; &#9734; &#9734; &#9734;");
		$(".1").html("&#9733; &#9734; &#9734; &#9734; &#9734;");
		$(".2").html("&#9733; &#9733; &#9734; &#9734; &#9734;");
		$(".3").html("&#9733; &#9733; &#9733; &#9734; &#9734;");
		$(".4").html("&#9733; &#9733; &#9733; &#9733; &#9734;");
		$(".5").html("&#9733; &#9733; &#9733; &#9733; &#9733;"); 
	
</script>



