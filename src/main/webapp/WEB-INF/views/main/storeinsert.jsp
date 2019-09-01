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
#admindiv {
	margin-left: 10px;
}
#admindiv>form>span {
	display: inline-block;
	width: 70px;
	margin: 5px 0px;
}
#admindiv>form>button{
	width: 100px;
	margin: 5px 0px;
}
#admindiv>form>input{
	width: 80%;
}
#admindiv>form>small{
	margin-left: 70px;
	font-weight: lighter;
}
#admindiv>form>small>b{
	color: red;
}
.radioinput {
	width: 80%;
	display: inline-block;
}
.radioinput>input {
	width: 100%;
}

	
</style>
<%@ include file="/WEB-INF/include/header.jspf"%>

<div id="admindiv">
<h3>맛집 정보 추가 페이지</h3>
<p>관리자만 입력이 가능합니다.</p>
<form method="post">
<span>이미지</span><input type="text" name="img"><br>
<span>가게이름</span><input type="text" name="storename"> <br>
<span>위치정보</span><input type="text" name="location"> <br>
<span>주소</span><input type="text" name="address"> <br>
<span>교통정보</span><input type="text" name="trans"> <br>
<span>별점</span><input type="text" name="star" value="0"> <br>
<small>별점: <b>1,2,3,4,5</b> 중에 하나 입력가능 <b>(기본값: 0)</b></small><br>
<span>음식종류</span><input type="text" name="foodtype"> <br>
<small>음식종류: <b>한식,양식,중식,일식,분식</b> 중에 하나 입력가능</small><br>
<span>가격대</span><input type="text" name="price"> <br>
<small><b>대표메뉴 2인 기준으로 입력</b> ex: 1만원대, 2만원대...</small><br>
<span>영업시간</span><input type="text" name="openhours"> <br>
<small>ex: 오전 11:00~오후 7:00</small><br>
<span>휴무일</span><input type="text" name="holiday"> <br>
<span>연락처</span><input type="text" name="contact"> <br>
<span>배달여부</span><div class="radioinput">
<label><input type="radio" name="delivery" value="배달가능">배달가능</label>
<label><input type="radio" name="delivery" value="배달불가">배달불가 </label></div><br>
<span>맛점수</span><input type="text" name="tastestar" value="0"> <br>
<span>가성비점수</span><input type="text" name="costefstar" value="0"> <br>
<span>서비스점수</span><input type="text" name="servicestar" value="0"> <br>
<button type="submit">맛집 추가</button>
</form>

</div>
<%@ include file="/WEB-INF/include/footer.jspf"%>
