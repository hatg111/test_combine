<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="/resources/dist/css/loginForm.css">

<%@ include file="/WEB-INF/include/header.jspf"%>

<div class="container justify-content-center">
	<div class="d-flex justify-content-center" style="height : 100%;">
		<div class="user_card justify-content-center">
			<div class="d-flex justify-content-center form_container">
				
				<form class="justify-content-center" action="/user/loginPost" method="post">
					<c:if test="${errors.idOrPwNotMatch}">아이디와 암호가 일치하지 않습니다.</c:if>
					<div class="input-group mb-3">
						<div class="input-group-append">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" name="uid" class="form-control input_user"
							value="${param.id}" placeholder="아이디를 입력하세요." autofocus required
							oninvalid="this.setCustomValidity('아이디를 입력하세요.')"
							oninput="setCustomValidity('')">
						<%-- <c:if test="${errors.id}">ID를 입력하세요.</c:if> --%>
					</div>
					<div class="input-group mb-2">
						<div class="input-group-append">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="upw"
							class="form-control input_pass" value="${param.password}"
							placeholder="비밀번호를 입력하세요." required
							oninvalid="this.setCustomValidity('비밀번호를 입력하세요.')"
							oninput="setCustomValidity('')">
						<%-- <c:if test="${errors.password}">암호를 입력하세요.</c:if> --%>
					</div>
					<br/>
					<div class="form-group">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" name="useCookie" class="custom-control-input"
								id="customControlInline"> <label
								class="custom-control-label" for="customControlInline">Remember
								me</label>
						</div>
					</div>
					<div class="d-flex justify-content-center mt-3 login_container">
						<button type="submit" name="button" class="btn login_btn">Login</button>
					</div>
					<div class="mt-4">
						<div class="d-flex justify-content-center links">
							어서! 먹킷을 사용해! <a href="${pageContext.request.contextPath}/user/joinForm" class="ml-2">회원가입</a>
						</div>
						<div class="d-flex justify-content-center links">
							<a href="/user/findPwdForm">비밀번호를 잊어버리셨나요?</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script>
alert("로그인이 필요한 메뉴입니다. 로그인 후 이용해주세요");
</script>
<%@ include file="/WEB-INF/include/footer.jspf"%>
