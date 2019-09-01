<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/include/header.jspf"%>

<form action="/feedback/Success" id="frm" role="form" name="frm" method="post"  enctype="multipart/form-data">
	<!-- action="/main/dtpage" -->

	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">제목</label> <input type="text"
				id="title" name="title" class="form-control"
				placeholder="Enter Title">
		</div>

		<div class="form-group">
			<label for="exampleInputPassword1">리뷰내용</label>
			<textarea class="form-control" id="review" name="review" rows="3"
				placeholder="Enter ..."></textarea>
		</div>
		<!-- 
		<div class="form-group">
			<input name="taste" type="radio" id="taste" value="05" />0.5 <input
				name="taste" type="radio" id="taste" value="10" />1.0 <input
				name="taste" type="radio" id="taste" value="15" />1.5 <input
				name="taste" type="radio" id="taste" value="20" />2.0 <input
				name="taste" type="radio" id="taste" value="25" />2.5 <input
				name="taste" type="radio" id="taste" value="30" />3.0 <input
				name="taste" type="radio" id="taste" value="35" />3.5 <input
				name="taste" type="radio" id="taste" value="40" />4.0 <input
				name="taste" type="radio" id="taste" value="45" />4.5 <input
				name="taste" type="radio" id="taste" value="50" />5.0

		</div>
 -->

		<div class="form-group">
			<input name="taste" type="radio" id="taste" value="0" />0.5 <input
				name="taste" type="radio" id="taste" value="1" />1.0 <input
				name="taste" type="radio" id="taste" value="2" />1.5 <input
				name="taste" type="radio" id="taste" value="3" />2.0 <input
				name="taste" type="radio" id="taste" value="4" />2.5 <input
				name="taste" type="radio" id="taste" value="5" />3.0 <input
				name="taste" type="radio" id="taste" value="6" />3.5 <input
				name="taste" type="radio" id="taste" value="7" />4.0 <input
				name="taste" type="radio" id="taste" value="8" />4.5 <input
				name="taste" type="radio" id="taste" value="9" />5.0

		</div>

		<div class="form-group">
			<input name="costef" type="radio" id="costef" value="0" />0.5 <input
				name="costef" type="radio" id="costef" value="1" />1.0 <input
				name="costef" type="radio" id="costef" value="2" />1.5 <input
				name="costef" type="radio" id="costef" value="3" />2.0 <input
				name="costef" type="radio" id="costef" value="4" />2.5 <input
				name="costef" type="radio" id="costef" value="5" />3.0 <input
				name="costef" type="radio" id="costef" value="6" />3.5 <input
				name="costef" type="radio" id="costef" value="7" />4.0 <input
				name="costef" type="radio" id="costef" value="8" />4.5 <input
				name="costef" type="radio" id="costef" value="9" />5.0

		</div>
		<!-- 
		<div class="form-group">
			<input name="service" type="radio" id="service" value="05" />0.5 <input
				name="service" type="radio" id="service" value="10" />1.0 <input
				name="service" type="radio" id="service" value="15" />1.5 <input
				name="service" type="radio" id="service" value="20" />2.0 <input
				name="service" type="radio" id="service" value="25" />2.5 <input
				name="service" type="radio" id="service" value="30" />3.0 <input
				name="service" type="radio" id="service" value="35" />3.5 <input
				name="service" type="radio" id="service" value="40" />4.0 <input
				name="service" type="radio" id="service" value="45" />4.5 <input
				name="service" type="radio" id="service" value="50" />5.0
		</div>
 -->

		<div class="form-group">
			<input name="service" type="radio" id="service" value="0" />0.5 <input
				name="service" type="radio" id="service" value="1" />1.0 <input
				name="service" type="radio" id="service" value="2" />1.5 <input
				name="service" type="radio" id="service" value="3" />2.0 <input
				name="service" type="radio" id="service" value="4" />2.5 <input
				name="service" type="radio" id="service" value="5" />3.0 <input
				name="service" type="radio" id="service" value="6" />3.5 <input
				name="service" type="radio" id="service" value="7" />4.0 <input
				name="service" type="radio" id="service" value="8" />4.5 <input
				name="service" type="radio" id="service" value="9" />5.0
		</div>

		<div class="form-group">
			

			<input type="hidden" name="memberid" class="form-control" placeholder="Enter Writer" value="${uservo.memberid}" readonly> 
			<input type="hidden" name="storeid" class="form-control" placeholder="Enter Writer" value="${storevo.storeid}" readonly>
			 
			<input type='file' id="gdsImg" name='uploadfile'>
			<div class="select_img"><img src="" /></div>
			<script>
				$("#gdsImg").change(function(){
					if(this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$(".select_img img").attr("src", data.target.result).width(300);
						}	
						reader.readAsDataURL(this.files[0]);
					}
				});
			</script>
		</div>

		<div class="box-footer">

			<input type="submit" value="작성완료" class="btn btn-primary">
		</div>
	</div>
</form>

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
>
<!-- <form method="get" action="/main/dtpage"></form> -->
<%@include file="/WEB-INF/include/footer.jspf"%>

