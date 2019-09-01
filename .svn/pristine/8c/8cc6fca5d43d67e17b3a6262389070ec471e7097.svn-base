<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="/resources/dist/css/findPwdForm.css">
<%@ include file="/WEB-INF/include/header.jspf"%>
<!-- 2019-08-09 추가 전용태 -->
<script>
$(document).ready(function() {
		$("#btnSignup").click(function() {
			$("bookingForm").submit();
		});

		$("#memberid").blur(function() {

		});

		$("#nickname").blur(function() {

		});
		

		$("#btnCancle").click(function() {
			$('#memberid').val('');
			$('#nickname').val('');
			$('#gender').val('');
			$('#birthdate').val('');
			$("#error3").text("");
		});
	});
</script>
<!-- 2019-08-09 추가 전용태 end -->
<form action="/user/findPwdSuccess" method="post" id="bookingForm">
	<br />
	<h2>비밀번호 찾기</h2>
	<br />
	<div class="align-center">
		<input class="hihihi" type="text" name="id" id="memberid"
			placeholder="아이디를 입력하세요." required autofocus id="picking_up"
			oninvalid="this.setCustomValidity('아이디를 입력하세요.')"
			oninput="setCustomValidity('')">
	</div>
	<br />
	<div class="align-center">
		<input class="hihihi" type="text" name="nickname" required id="nickname"
			value="${param.name}" placeholder="이름을 입력하세요."
			oninvalid="this.setCustomValidity('닉네임을 입123력하세요.')"
			oninput="setCustomValidity('')"> <br />
	</div>
	<c:if test="${errors.DuplicateUser}">일치하는 정보를 가진 회원이 없습니다.</c:if>
	<br />
	<div class="align-center">
		<b>성별</b> <br /> <label><input class="hihihi" type="radio"
			name="gender" id="gender" value="M" required
			oninvalid="this.setCustomValidity('성별을 입력하세요.')"
			oninput="setCustomValidity('')">남자</label> <label><input
			class="hihihi" type="radio" name="gender" id="gender" value="F">여자</label>
	</div>
	<br />

	<div class="align-center">
		<b>생일</b> <br /> <input class="hihihi" type="date" name="birthdate" id="birthdate"
			required oninvalid="this.setCustomValidity('생일을 입력하세요.')"
			oninput="setCustomValidity('')">
	</div>
	<br />
	<div class="align-center">
		<input class="ok" type="submit" value=" 확인  " id="btnSignup"> 
		<input class="ok" type="reset" value=" 취소  " id="btnCancle">
	</div>

</form>

<%@ include file="/WEB-INF/include/footer.jspf"%>