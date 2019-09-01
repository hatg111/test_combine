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
	height: 250px;
	margin-bottom: 20px;
}
</style>
<%@ include file="/WEB-INF/include/header.jspf"%>


<div id="naverMap" class="naverMap"></div>
<!-- <div id="map_canvas"
	style="margin: 0 auto; width: 1000px; max-width: 100%; height: 250px; margin-bottom: 20px; senser: true"></div> -->

<h3 class="card-body">검색 결과가 없습니다. </h3>
<c:forEach var="main" items="${main}">

<div class="left">
	<ul class="store">
		<li>
		<a href="/main/dtpage?storeid=${main.storeid}">
		<img class="card-img-top-center" style="width: 300px; height: 150px; overflow: hidden"
				src="${main.img}"  alt="">
		</a>
		</li>
		<li><div class="card-body">
				<h4 class="card-title">
					<a href="/main/dtpage?storeid=${main.storeid}">${main.storename}</a>



				</h4>
				<!-- <p class="card-text">(가게에 대한 간단한 소개)</p> -->

			</div></li>
		<li><div class="card-footer">
				<small class="text-muted"> &#9733; &#9733; &#9733; &#9733;
					&#9734; 
					${main.star}
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
</script>


<%-- 
<style>
.slideBoxWrap {
	width: 100%;
	height: 150px;
	display: block;
	overflow: hidden;
	/* margin-bottom: 20px; */
}

#carouselWrapper {
	width: 100%;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

.sliderBoxDesc {
	position: relative;
	width: 100%;
	height: 150px;
}

.scrollerBox {
	position: relative;
	top: 0;
	left: 0;
	width: 100%;
	height: 150px; /* number_of_page*page_width */
	float: left;
}

.scrollerBox ul {
	list-style: none;
	position: relative;
	display: block;
	margin: 0;
	padding: 0;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.scrollerBox li {
	display: block;
	float: left;
	padding: 0px 0px 0px 0px;
}

.scrollerBox li img {
	width: 100%;
	height: 150px;
	border: 0px;
}

.sliderNav {
	position: absolute;
	bottom: 20px;
	width: 100%;
	z-index: 100;
	text-align: center;
	font-size: 12px;
	color: #B4B4B4;
}

.sliderNav a {
	margin: 0px 5px 0px 5px;
	color: #B4B4B4;
	text-decoration: none;
}

#map_ma {
	width: 100%;
	height: 400px;
	clear: both;
	border: solid 1px red;
}
</style>

<%@ include file="../include/header.jspf"%>

<div id="firstSlide" class="slideBoxWrap">
	<div class="sliderBox" class="article">
		<div class="sliderBoxDesc">
			<div id="carouselWrapper" class="description">
				<div class="scrollerBox">
					<ul>
						<li><img
							src='/WEB-INF/dist/img/img01.jpg'
							alt='' /></li>
						<li><img
							src='/WEB-INF/dist/img/img02.jpg'
							alt='' /></li>
						<li><img
							src='/WEB-INF/dist/img/food3.jpg'
							alt='' /></li>
						<li><img
							src='/WEB-INF/dist/img/img04.jpg'
							alt='' /></li>
						<li><img
							src='/WEB-INF/dist/img/food2.jpg'
							alt='' /></li>
						<li><img
							src='/WEB-INF/dist/img/food1.jpg'
							alt='' /></li>
					</ul>
				</div>
			</div>
			<div class="sliderNav">
				<a href='#' class='scrollBtn' id='0'>●</a> <a href='#'
					class='scrollBtn' id='1'>●</a> <a href='#' class='scrollBtn' id='2'>●</a>
				<a href='#' class='scrollBtn' id='3'>●</a> <a href='#'
					class='scrollBtn' id='4'>●</a> <a href='#' class='scrollBtn' id='5'>●</a>
			</div>
		</div>
	</div>
</div> --%>


<%-- <div>
<ul class="store">
		<li><a href="#"><img class="card-img-top"
				src="/WEB-INF/dist/img/300.jpg" alt=""></a></li>
		<li><div class="card-body">
				<h4 class="card-title">
					<a href="#">(가게3) </a>
				</h4>
				<p class="card-text">(가게에 대한 간단한 소개)</p>
			</div></li>
		<li><div class="card-footer">
				<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
					&#9734;</small>
			</div></li>
	</ul>
	</div>
 --%>
<%-- <c:forEach var="main" items="${a}">

	<div class="left">
		<ul class="store">
			<li><a href="#"><img class="card-img-top"
			
					src="/WEB-INF/dist/img/300.jpg" alt=""
				src="${main.getImg()}" alt=""></a></li>
			<li><div class="card-body">
					<h4 class="card-title">
						<a href="#">${main.getStore_name()}</a>
						
					</h4>
					<!-- <p class="card-text">(가게에 대한 간단한 소개)</p> -->
					
				</div></li>
			<li><div class="card-footer">
					<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
						&#9734;</small>
				</div></li>
		</ul>
		</div>
</c:forEach>
<br><br><br> --%>

<%-- <div class="left">
	<ul class="store">
		<li><a href="#"><img class="card-img-top"
				src="/WEB-INF/dist/img/300.jpg" alt=""></a></li>
		<li><div class="card-body">
				<h4 class="card-title">
					<a href="#">(가게1) </a>
				</h4>
				<p class="card-text">(가게에 대한 간단한 소개)</p>
			</div></li>
		<li><div class="card-footer">
				<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
					&#9734;</small>
			</div></li>
	</ul> --%>

<%-- 
	<ul class="store">
		<li><a href="#"><img class="card-img-top"
				src="/WEB-INF/dist/img/300.jpg" alt=""></a></li>
		<li><div class="card-body">
				<h4 class="card-title">
					<a href="#">(가게2) </a>
				</h4>
				<p class="card-text">(가게에 대한 간단한 소개)</p>
			</div></li>
		<li><div class="card-footer">
				<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
					&#9734;</small>
			</div></li>
	</ul>


	<ul class="store">
		<li><a href="#"><img class="card-img-top"
				src="/WEB-INF/dist/img/300.jpg" alt=""></a></li>
		<li><div class="card-body">
				<h4 class="card-title">
					<a href="#">(가게3) </a>
				</h4>
				<p class="card-text">(가게에 대한 간단한 소개)</p>
			</div></li>
		<li><div class="card-footer">
				<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
					&#9734;</small>
			</div></li>
	</ul>
</div>

<!-- ------------------------------------------------------------ -->

<div class="right">
	<ul class="store">
		<li><a href="#"><img class="card-img-top"
				src="/WEB-INF/dist/img/300.jpg" alt=""></a></li>
		<li><div class="card-body">
				<h4 class="card-title">
					<a href="#">(가게4) </a>
				</h4>
				<p class="card-text">(가게에 대한 간단한 소개)</p>
			</div></li>
		<li><div class="card-footer">
				<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
					&#9734;</small>
			</div></li>
	</ul>

	<ul class="store">
		<li><a href="#"><img class="card-img-top"
				src="/WEB-INF/dist/img/300.jpg" alt=""></a></li>
		<li><div class="card-body">
				<h4 class="card-title">
					<a href="#">(가게5) </a>
				</h4>
				<p class="card-text">(가게에 대한 간단한 소개)</p>
			</div></li>
		<li><div class="card-footer">
				<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
					&#9734;</small>
			</div></li>
	</ul>

	<ul class="store">
		<li><a href="#"><img class="card-img-top"
				src="/WEB-INF/dist/img/300.jpg" alt=""></a></li>
		<li><div class="card-body">
				<h4 class="card-title">
					<a href="#">(가게6) </a>
				</h4>
				<p class="card-text">(가게에 대한 간단한 소개)</p>
			</div></li>
		<li><div class="card-footer">
				<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
					&#9734;</small>
			</div></li>
	</ul>
</div> --%>


<!-- <script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCgUIxJvP4TJ0AS_BBHhvAGEXEICN9yUmg&callback=initMap"
	type="text/javascript"></script>
	<script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=AIzaSyCgUIxJvP4TJ0AS_BBHhvAGEXEICN9yUmg"></script>
<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCgUIxJvP4TJ0AS_BBHhvAGEXEICN9yUmg & sensor=true">
	
</script> -->
<%-- <script
	src="/WEB-INF/resources/js/index/jquery-1.11.1.js"></script>
<script type="text/javascript">
	var nav = null;
	var map;
	var marker;
	/* 현재 위치(위도/경도)를 받아오기 위한 부분 */
	$(function() {
		if (nav == null) {
			nav = window.navigator;
		}
		if (nav != null) {
			var geoloc = nav.geolocation;
			if (geoloc != null) {
				/* Callback 성공 시, successCallback() 호출 */
				geoloc.getCurrentPosition(successCallback);
			} else {
				alert("geolocation not supported");
			}
		} else {
			alert("Navigator not found");
		}
	});

	function successCallback(position) {
		/* 위도 */var latitude = position.coords.latitude;
		/* 경도 */var longitude = position.coords.longitude;

		/* Google Map으로 위도와 경도 초기화 */
		initialize(latitude, longitude);
	}

	function initialize(latitude, longitude) {
		/* 현재 위치의 위도와 경도 정보를 currentLocatioon 에 초기화 */
		var currentLocation = new google.maps.LatLng(latitude, longitude);
		var mapOptions = {
			center : currentLocation, /* 지도에 보여질 위치 */
			zoom : 16, /* 지도 줌 (0축소 ~ 18확대),  */
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		/* DIV에 지도 달아주기 */
		map = new google.maps.Map(document.getElementById("map_canvas"),
				mapOptions);
		/* 지도 위에 마커 달아주기 */
		marker = new google.maps.Marker({
			position : currentLocation,
			map : map
		});
		google.maps.event.addListener(marker, 'click', toggleBounce(marker));

		// This event listener will call addMarker() when the map is clicked.
		/* 지도에서 마우스 클릭시 마커 생성 */
		google.maps.event.addListener(map, 'click', function(event) {
			addMarker(event.latLng);
		});
	}

	// Add a marker to the map and push to the array.
	/*
	 * 이 소스는 마커를 하나만 추가할 수 있도록 구현해놓습니다.
	 * 개발자분들 재량에 따라 코드를 응용하도록 하세요.  
	 */
	function addMarker(location) {
		/* 기존에 있던 마커 삭제 후 */
		/*새 마커 추가하기. */
		marker.setMap(null);
		marker = new google.maps.Marker({
			position : location,
			map : map
		});
		/* 마커 토글바운스 이벤트 걸어주기(마커가 통통 튀도록 애니메이션을 걸어줌) */
		google.maps.event.addListener(marker, 'click', toggleBounce(marker));
	}

	function toggleBounce(marker) {
		if (marker.getAnimation() != null) {
			marker.setAnimation(null);
		} else {
			marker.setAnimation(google.maps.Animation.BOUNCE);
		}
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>   --%>



<!-- 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyCgUIxJvP4TJ0AS_BBHhvAGEXEICN9yUmg" ></script>

<script type="text/javascript">
		$(document).ready(function() {
			var myLatlng = new google.maps.LatLng(35.837143,128.558612); // 위치값 위도 경도
	var Y_point			= 35.837143;		// Y 좌표
	var X_point			= 128.558612;		// X 좌표
	var zoomLevel		= 18;				// 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
	var markerTitle		= "대구광역시";		// 현재 위치 마커에 마우스를 오버을때 나타나는 정보
	var markerMaxWidth	= 300;				// 마커를 클릭했을때 나타나는 말풍선의 최대 크기

// 말풍선 내용
	var contentString	= '<div>' +
	'<h2>대구남구</h2>'+
	'<p>안녕하세요. 구글지도입니다.</p>' +
	
	'</div>';
	var myLatlng = new google.maps.LatLng(Y_point, X_point);
	var mapOptions = {
						zoom: zoomLevel,
						center: myLatlng,
						mapTypeId: google.maps.MapTypeId.ROADMAP
					}
	var map = new google.maps.Map(document.getElementById('map_ma'), mapOptions);
	var marker = new google.maps.Marker({
											position: myLatlng,
											map: map,
											title: markerTitle
	});
	var infowindow = new google.maps.InfoWindow(
												{
													content: contentString,
													maxWizzzdth: markerMaxWidth
												}
			);
	google.maps.event.addListener(marker, 'click', function() {
		infowindow.open(map, marker);
	});
});
		</script>
		 -->

<!-- 
<script type="text/javascript"
	src=" http://maps.google.com/maps/api/js?v=3.3&sensor=true"></script>
<script type="text/javascript">
	var eventLinkArray = new Array();
	eventLinkArray[0] = "";
	eventLinkArray[1] = "";
	eventLinkArray[2] = "";
	eventLinkArray[3] = "";
	eventLinkArray[4] = "";
	eventLinkArray[5] = "";
	$(document)
			.ready(
					function() {
						jQuery.easing.def = "easeOutExpo";
						var eventCount = $(".scrollerBox li").length;
						var eventOpenFlag = true;
						var autoScrollInterval = 4000;

						// initalize event carousel (no support IE)
						var totalCarousel = $(".scrollerBox li").length;
						var currentEvent = 0;
						var TimeMilliseconds = new Date();
						var clickHandler = false;
						/*
						$("#eventTitle").click(function() {
							if (eventOpenFlag) {
								$(".slideBoxWrap").animate( { height:"52px" }, 500);
								$(".sliderBoxDesc").css("display", "none");
							} else {
								$(".slideBoxWrap").animate( { height:"365px" }, 500);
								$(".sliderBoxDesc").css("display", "inline");
							}
							eventOpenFlag = !eventOpenFlag;
						});
						 */
						$(".scrollerBox").css(
								"width",
								($(".slideBoxWrap").width() * totalCarousel)
										+ "px");
						$(".scrollerBox li").css("width",
								$(".slideBoxWrap").width() + "px");

						if ((navigator.appName).indexOf("Microsoft") != -1) {
							$(".scrollBtn").click(function() {
								selectNumber(this.id, true);
							});
							$("#0").css("color", "#000000");
						} else {
							var iscroll = new iScroll(
									"carouselWrapper",
									{
										snap : true,
										momentum : false,
										hScrollbar : false,
										vScrollbar : false,
										lockDirection : false,
										onScrollEnd : function() {
											$("#indicator li")
													.each(
															function(i, node) {
																if (i === iscroll.currPageX) {
																	$(node)
																			.addClass(
																					"active");
																} else {
																	$(node)
																			.removeClass(
																					"active");
																}
															});

											selectNumber(iscroll.currPageX,
													false);
											clickHandler = true;
										},
										onScrollMove : function(e) {
											clickHandler = false;
										},
										onTouchStart : function(e) {
											clickHandler = true;
											$("#carouselWrapper").mousemove(
													function() {
														clickHandler = false;
													});
										},
										onTouchEnd : function(e) {
											if (clickHandler == true
													&& (e.type == "mouseup" || e.type == "touchend")) {
												linkToEvent();
											}
											$("#carouselWrapper").mousemove(
													null);
										}
									});

							function linkToEvent() {
								var TimeMillisecondsClick = new Date();
								if (TimeMillisecondsClick.getTime() > TimeMilliseconds
										.getTime() + 500) {
									TimeMilliseconds = new Date();

									if (eventLinkArray[currentEvent] != "") {
										location.href = eventLinkArray[currentEvent];
									}
								}
							}

							$(".scrollBtn").click(function() {
								iscroll.scrollToPage(this.id);
							});

							iscroll.scrollToPage(0);
						}

						$(".scrollerBox, .scrollBtn").mouseover(function() {
							clearInterval(autoScrollIntervalId);
							autoScrollIntervalId = null;
						});

						$(".scrollerBox, .scrollBtn")
								.mouseout(
										function() {
											if (autoScrollIntervalId == null) {
												autoScrollIntervalId = setInterval(
														autoScroll,
														autoScrollInterval);
											}
										});

						function autoScroll() {
							if (currentEvent == totalCarousel - 1) {
								if ((navigator.appName).indexOf("Microsoft") != -1) {
									selectNumber(0, true);
								} else {
									iscroll.scrollToPage(0);
								}
							} else {
								if ((navigator.appName).indexOf("Microsoft") != -1) {
									selectNumber(currentEvent + 1, true);
								} else {
									iscroll.scrollToPage(currentEvent + 1);
								}
							}
						}

						function selectNumber(newValue, motionFlag) {
							if (currentEvent != newValue) {
								currentEvent = Number(newValue);
								var targetPosition = (currentEvent * -768);

								$(".sliderNav a").each(function(i, node) {
									if (i == newValue) {
										$("#" + i).css("color", "#ffffff");
									} else {
										$("#" + i).css("color", "#B4B4B4");
									}
								});

								if (motionFlag == true) {
									$(".scrollerBox").animate({
										left : targetPosition + "px"
									}, 500);
								}
							}
						}

						selectNumber(0, true);
						var autoScrollIntervalId = setInterval(autoScroll,
								autoScrollInterval);

						// SECTION LINK
						/*
						 $(".sectionLink").click(linkToMenuHandler);
						 $(".overlay").click(linkToMenuHandler);

						 function linkToMenuHandler() {
						 switch(this.id) {
						 case "vocalCoachTitle":
						 case "vocalCoachOverlay":
						 location.href="/Coach-IntroduceCoach";
						 break;
						 case "vocalCheckupTitle":
						 case "vocalCheckupOverlay":
						 location.href="/Vocalcheckup-Apply";
						 break;
						 case "starsTitle": 
						 case "starsOverlay":
						 location.href="/Stars-VocalCoachingPhoto";
						 break;
						 case "powerVocalTechniqueTitle":  
						 case "powerVocalTechniqueOverlay":
						 location.href="/PowerVocalTechnique-Introduce";
						 break;
						 case "concertTitle":
						 case "concertOverlay":
						 location.href="/Concert-OpenmicMovie";
						 break;
						 case "qnaTitle":
						 location.href="/QnA-HeadCoach";
						 break;
						 }
						 }

						 if (eventCount == 0) {
						 $(".sliderBoxDesc").css("display", "none");
						 $(".slideBoxWrap").css("display", "none");
						 $(".slideBoxWrap").css("height", "0px");
						 }

						 $("#moreMenuOpen").click(function() {
						 if ($("#moreMenu").height() != 142) {
						 $("#moreMenuButtons").css("display", "block");
						 $("#moreMenu").animate( { height:"142px" }, 500);
						 } else {
						 $("#moreMenuButtons").css("display", "none");
						 $("#moreMenu").animate( { height:"42px" }, 500);
						 }
						 });
						 */

					});
</script>
 -->
