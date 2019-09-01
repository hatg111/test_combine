<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/resources/dist/css/ChangeUserInfo.css">
<%@ include file="/WEB-INF/include/header.jspf"%>
<!-- 2019-08-09 추가 전용태 -->
<script>
	$(document).ready(function() {
		var nickname;
		var password;
		var newpassword;
		var unickname = "${userVO.nickname}";
		var uPwd = "<c:out value='${userVO.password}'/>";
		$("#profileImg").click(function() {
			$("#input_img").click();
		});
		$("#btnSignup").click(function() {
			nickname = $("#nickname").val();
			password = $("#password").val();
			newpassword = $("#newpassword").val();	
		
			if ((unickname != nickname) || (uPwd != password)) {
				$("#error1").text("회원정보 불일치");
			} else {
				$("#form").submit();
			}
		});

		$("#nickname").blur(function() {
			nickname = $("#nickname").val();
			if (nickname == "") {
				$("#error2").text("닉네임을 입력하세요.");
			} else {
				$("#error2").text("");
			}
		});

		$("#password, #newpassword").blur(function() {
			password = $("#password").val();
			newpassword = $("#newpassword").val();
			if (newpassword == password) {
				$("#error1").text("동일 비번");
			} else if (password == "") {
				$("#error1").text("비밀번호를 입력하세요.");
			} else if(newpassword == ""){
				$("#error1").text("새 비밀번호를 입력하세요.");
			}
			else {
				$("#error1").text("");
			}
		});

		$("#btnCancle").click(function() {
			$('#password').val('');
			$('#newpassword').val('');
			$('#nickname').val('');
			$('#newnickname').val('');
			$("#error1").text("");
			$("#error2").text("");
		});
	});
</script>
<script>
	var sel_file;

	$(document).ready(function() {
		$("#input_img").on("change", fileChange);
	});

	function fileChange(e) {
		e.preventDefault();

		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}

			sel_file = f;

			var reader = new FileReader();
			reader.onload = function(e) {
				$("#profileImg").attr("src", e.target.result);
				$("#profileImg").css("height", "100px")
			}
			reader.readAsDataURL(f);
		});

		var file = files[0]
		console.log(file)
		var formData = new FormData();

		formData.append("file", file);

		$.ajax({
			url : '/user/uploadAjax',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data) {
				var str = "";

				if (checkImageType(data)) {
					str = "<a href=displayFile?fileName=" + getImageLink(data)
							+ ">" + "<img src='displayFile?fileName=" + data
							+ "'/>" + "</a><small data-src="+data+">X</small>";
				} else {
					str = "<a href='displayFile?fileName=" + data + "'>"
							+ getOriginalName(data) + "</a>"
							+ "<small data-src="+data+">X</small>";
				}
				$("#Img").append(str);

				alert("프로필 이미지가 변경 되었습니다.")

			}
		});

		function checkImageType(fileName) {
			var pattern = /jpg$|gif$|png$|jpeg$/i;
			return fileName.match(pattern);
		}

		function getOriginalName(fileName) {
			if (checkImageType(fileName)) {
				return;
			}

			var idx = fileName.indexOf("_") + 1;
			return fileName.substr(idx);

		}

		function getImageLink(fileName) {

			if (!checkImageType(fileName)) {
				return;
			}
			var front = fileName.substr(0, 12);
			var end = fileName.substr(14);

			return front + end;

		}

	}
</script>
<!-- 2019-08-09 추가 전용태 end -->
<h2>회원정보 수정</h2>
<br />
<div class="align-center" id="Img"></div>
<div class="align-center">
	<button type="button" id="profileImg">등록</button>
	<input type="file" name="file" id="input_img" style="display: none">
</div>
<form class=".form" action="/user/changePwdSuccess" method="post"
	id="form">
	<br />
	<div class="align-center">
		<input class="hihihi" type="password" name="password" id="password"
			placeholder="현재 비밀번호를 입력하세요." required autofocus
			oninvalid="this.setCustomValidity('현재 암호를 입력하세요.')"
			oninput="setCustomValidity('')">
		<%-- <c:if test="${errors.curPwd}">현재 암호를 입력하세요.</c:if>
		<c:if test="${errors.badCurPwd}">현재 암호가 일치하지 않습니다.</c:if> --%>
	</div>
	<br />
	<div class="align-center">
		<input class="hihihi" type="password" name="newpassword"
			id="newpassword" placeholder="새 비밀번호를 입력하세요." required
			oninvalid="this.setCustomValidity('새로운 암호를 입력하세요.')"
			oninput="setCustomValidity('')"
			onKeyPress="return checkCapsLock(event)">
			<div id="error1"></div>
		<%-- <c:if test="${errors.newPwd}">새 암호를 입력하세요.</c:if> --%>
	</div>
	<br />
	<div class="align-center">
		<input class="hihihi" type="text" name="nickname" id="nickname"
			placeholder="닉네임을 입력하세요." required
			oninvalid="this.setCustomValidity('닉네임을 입력하세요.')"
			oninput="setCustomValidity('')">
		<%-- <c:if test="${errors.name}">닉네임을 입력하세요.</c:if> --%>
	</div>
	<br />
	<div class="align-center">
		<input class="hihihi" type="text" name="newnickname" id="newnickname"
			placeholder="새 닉네임을 입력하세요." required
			oninvalid="this.setCustomValidity('닉네임을 입력하세요.')"
			oninput="setCustomValidity('')">
		<div id="error2"></div>
		<%-- <c:if test="${errors.name}">닉네임을 입력하세요.</c:if> --%>
	</div>
	<br />
	<div class="align-center">
		<button type="button" id="btnSignup">수정완료</button>
		<button type="button" id="btnCancle">취소</button>
	</div>
</form>
<%@ include file="/WEB-INF/include/footer.jspf"%>

<SCRIPT LANGUAGE=JavaScript>
	function checkCapsLock(e) {

		var myKeyCode = 0;
		var myShiftKey = false;
		var myMsg = 'Caps Lock is On.\n\nTo prevent entering your password incorrectly,\nyou should press Caps Lock to turn it off.';

		// Internet Explorer 4+

		if (document.all) {
			myKeyCode = e.keyCode;
			myShiftKey = e.shiftKey;

			// Netscape 4
		} else if (document.layers) {
			myKeyCode = e.which;
			myShiftKey = (myKeyCode == 16) ? true : false;

			// Netscape 6
		} else if (document.getElementById) {
			myKeyCode = e.which;
			myShiftKey = (myKeyCode == 16) ? true : false;

		}

		if ((myKeyCode >= 65 && myKeyCode <= 90) && !myShiftKey) {
			alert(myMsg);
			return false;

		} else if ((myKeyCode >= 97 && myKeyCode <= 122) && myShiftKey) {
			alert(myMsg);
			return false;
		}

	}
</SCRIPT>

