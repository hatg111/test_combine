<%-- <%@page import="auth.service.User"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="/resources/dist/css/userInfoForm.css">

<%@ include file="/WEB-INF/include/header.jspf"%>
<%-- <c:set var="userVO" value="${userVO}" /> --%>
<div class="scroll" method="POST">
	<form id='form1' action="uploadForm" method="post"
		enctype="multipart/form-data" target="zeroFrame">
		<br />
		<div class="align-center">
			<h4>안녕하세요. ${userVo.nickname}님 반갑습니다.</h4>
		</div>
		<div class="mymy">
			<button type="button" id="profileImg">
				<img src="/displayFile?fileName=" alt="이미지 등록">
			</button>
			<input type="file" name="file" id="input_img" style="display: none">
		</div>

		<div class="mymy">
			<table class="table">
				<tr>
					<td class="td">아이디</td>
					<td>${userVo.memberid}</td>
				</tr>
				<tr>
					<td class="td">닉네임</td>
					<td>${userVo.nickname}</td>
				</tr>
				<tr>
					<td class="td">회원 레벨</td>
					<td>${userVo.memberlv}</td>
				</tr>
				<tr>
					<td class="td">회원 점수</td>
					<td>${userVo.memberscore}</td>
				</tr>
				<tr>
					<td class="td">성별</td>
					<td>${userVo.gender}</td>
				</tr>
				<tr>
					<td class="td">생일</td>
					<%-- <td><fmt:formatDate pattern="yyyy-MM-dd"
							value="${userVo.birthdate}" /></td> --%>
					<td>${userVo.birthdate}</td>
				</tr>
				<tr>
					<td class="td">가입 날짜</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd"
							value="${userVo.joindate}" /></td>
				</tr>
				<tr>
					<td><a href="/user/changePwdForm">[암호변경]</a></td>
					<td class="please"><a href="/user/logout">[로그아웃]</a></td>
				</tr>
			</table>
			<br />
		</div>

	</form>
</div>

<%@ include file="/WEB-INF/include/footer.jspf"%>
