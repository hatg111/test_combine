<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>MUKKIT</title>
</head>
<body>
	<u:isLogin>
	CT: ${authUser.name}님, 안녕하세요.
	<a href="logout.do">[로그아웃]</a>
		<a href="changePwd.do">[암호변경]</a>
		<a href="userInfo.do">[회원정보]</a>
	</u:isLogin>
	<u:notLogin>
	CT: <a href="join.do">[회원가입]</a>
		<a href="login.do">[로그인!!]</a>
		<a href="userInfo.do">[회원정보]</a>
	</u:notLogin>
	<br />
</body>
</html>