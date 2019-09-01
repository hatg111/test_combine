<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/dist/css/storelist.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/dist/css/temp.css">

<%@ include file="/WEB-INF/include/header.jspf"%>





<div class="container">
	<div>
		<h1 class="pagetitle">맛집 리스트</h1>
	</div>


	
	<div class="tabs">
		<ul>
			<li class="tab"><a href="/storeranking">전체</a></li>
			<li class="tab active"><a href="/storelistA">한식</a></li>
			<li class="tab"><a href="/storelistB">양식</a></li>
			<li class="tab"><a href="/storelistC">일식</a></li>
			<li class="tab"><a href="/storelistD">분식</a></li>
			<li class="tab"><a href="/storelistE">중식</a></li>
		</ul>
	</div>


	<br> 
	<form class="rangebystar" method="POST">
		<select name="sorted" id="sorted" onchange="this.form.submit()">
			<option value="STAR">종합순</option>
			<option value="tastestar" select="selected">맛순</option>
			<option value="costefstar">가성비순</option>
			<option value="servicestar">서비스순</option>
		</select>
	<!-- <input type='submit'> selected="selected"  -->
	</form>
	
	

	<br> 



	<div class="restlist">
		<!-- <div class="row">
			<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]"> -->
				<ul class="event-list">

					<c:forEach var="storelist" items="${storelist}">
						<li class="rankinglist" storeid="${storelist.storeid}"><img class="storeimg" src="${storelist.img}" />
							<div class="info">
								<div id="floatul"><ul>
									<li id="jhap">종합<span class= "${storelist.star} starrate">
									<c:out value="${storelist.star}" /></span></li>
									<li>맛<span class= "starrate">
									<c:out value="${storelist.tastestar}" /></span>
									가성비<span class= "starrate">
									<c:out value="${storelist.costefstar}" /></span>
									서비스<span class= "starrate">
									<c:out value="${storelist.servicestar}" /></span></li>
								</ul></div>
								
								<h2 class="title">
									<c:out value="${storelist.storename}" />
									<span id="foodtype"><c:out value="${storelist.foodtype}" /></span>
								</h2>
								
								
								<p class="desc">
									<c:out value="${storelist.location}" />
								</p>
								
							</div></li>
					</c:forEach>
					

				</ul>
			</div>
		<!-- </div>
	</div> -->
</div>

<script type="text/javascript">
$('.rankinglist').click(function() {
	var storeid = $(this).attr('storeid');
	console.log(storeid);
	self.location = "/main/dtpage?storeid="+storeid;
});

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


<%@ include file="/WEB-INF/include/footer.jspf"%>