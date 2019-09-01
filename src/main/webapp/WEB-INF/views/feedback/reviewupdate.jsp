<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/include/header.jspf"%>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form role="form" method="post">
	<!-- action="/main/dtpage" -->

	<div class="box-body">
		<div class="form-group">
			<label for="exampleform:inputEmail1">제목</label> 
			<form:input type="hidden" path="reviewid" class="form-control" value="${feedbackvo.reviewid}" />
			<form:input type="text" path="title" class="form-control" placeholder="Enter Title"/>
		</div>

		<div class="form-group">
			<label for="exampleform:inputPassword1">리뷰내용</label>
			<form:textarea class="form-control" id="review" path="review" rows="3" placeholder="Enter ..."/>
		</div>
		<!-- 
		<div class="form-group">
			<form:input path="taste" type="radio" id="taste" value="05" />0.5 <form:input
				path="taste" type="radio" id="taste" value="10" />1.0 <form:input
				path="taste" type="radio" id="taste" value="15" />1.5 <form:input
				path="taste" type="radio" id="taste" value="20" />2.0 <form:input
				path="taste" type="radio" id="taste" value="25" />2.5 <form:input
				path="taste" type="radio" id="taste" value="30" />3.0 <form:input
				path="taste" type="radio" id="taste" value="35" />3.5 <form:input
				path="taste" type="radio" id="taste" value="40" />4.0 <form:input
				path="taste" type="radio" id="taste" value="45" />4.5 <form:input
				path="taste" type="radio" id="taste" value="50" />5.0

		</div>
 -->

		<div class="form-group">
			<form:input path="taste" type="radio" id="taste" value="0" />0.5 <form:input
				path="taste" type="radio" id="taste" value="1" />1.0 <form:input
				path="taste" type="radio" id="taste" value="2" />1.5 <form:input
				path="taste" type="radio" id="taste" value="3" />2.0 <form:input
				path="taste" type="radio" id="taste" value="4" />2.5 <form:input
				path="taste" type="radio" id="taste" value="5" />3.0 <form:input
				path="taste" type="radio" id="taste" value="6" />3.5 <form:input
				path="taste" type="radio" id="taste" value="7" />4.0 <form:input
				path="taste" type="radio" id="taste" value="8" />4.5 <form:input
				path="taste" type="radio" id="taste" value="9" />5.0

		</div>

		<div class="form-group">
			<form:input path="costef" type="radio" id="costef" value="0" />0.5 <form:input
				path="costef" type="radio" id="costef" value="1" />1.0 <form:input
				path="costef" type="radio" id="costef" value="2" />1.5 <form:input
				path="costef" type="radio" id="costef" value="3" />2.0 <form:input
				path="costef" type="radio" id="costef" value="4" />2.5 <form:input
				path="costef" type="radio" id="costef" value="5" />3.0 <form:input
				path="costef" type="radio" id="costef" value="6" />3.5 <form:input
				path="costef" type="radio" id="costef" value="7" />4.0 <form:input
				path="costef" type="radio" id="costef" value="8" />4.5 <form:input
				path="costef" type="radio" id="costef" value="9" />5.0

		</div>
		<!-- 
		<div class="form-group">
			<form:input path="service" type="radio" id="service" value="05" />0.5 <form:input
				path="service" type="radio" id="service" value="10" />1.0 <form:input
				path="service" type="radio" id="service" value="15" />1.5 <form:input
				path="service" type="radio" id="service" value="20" />2.0 <form:input
				path="service" type="radio" id="service" value="25" />2.5 <form:input
				path="service" type="radio" id="service" value="30" />3.0 <form:input
				path="service" type="radio" id="service" value="35" />3.5 <form:input
				path="service" type="radio" id="service" value="40" />4.0 <form:input
				path="service" type="radio" id="service" value="45" />4.5 <form:input
				path="service" type="radio" id="service" value="50" />5.0
		</div>
 -->

		<div class="form-group">
			<form:input path="service" type="radio" id="service" value="0" />0.5 <form:input
				path="service" type="radio" id="service" value="1" />1.0 <form:input
				path="service" type="radio" id="service" value="2" />1.5 <form:input
				path="service" type="radio" id="service" value="3" />2.0 <form:input
				path="service" type="radio" id="service" value="4" />2.5 <form:input
				path="service" type="radio" id="service" value="5" />3.0 <form:input
				path="service" type="radio" id="service" value="6" />3.5 <form:input
				path="service" type="radio" id="service" value="7" />4.0 <form:input
				path="service" type="radio" id="service" value="8" />4.5 <form:input
				path="service" type="radio" id="service" value="9" />5.0
		</div>

		<div class="box-footer">
			<input type="submit" id="register" name="register" value="수정하기" class="btn btn-primary">
		</div>
	</div>

</form:form>

<script>
	
</script>

<%@include file="/WEB-INF/include/footer.jspf"%>

