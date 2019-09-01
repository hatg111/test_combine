<%@ page contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="/WEB-INF/include/header.jspf"%>




<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->

				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">LIST ALL PAGE</h3>
					</div>
					<div class="box-body">

						<table class="table table-bordered">
							<tr>
								<th style="width: 10px">BNO</th>
								<th>내용</th>
								<th>제목</th>
								<th>작성 날짜</th>
								<th>맛 평점</th> 
								<th>가성비 평점</th>
							    <th>서비스 평점</th>
							</tr>


							<c:forEach items="${list}" var="boardVO">

								<tr>
									<td>${boardVO.reviewid}</td>
									<td><a href='/review/read?reviewid=${boardVO.reviewid}'>${boardVO.review}</a></td>
									<td>${boardVO.title}</td> 
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${boardVO.reportdate}" /></td> 
									<td>${boardVO.taste}</td>
									<td>${boardVO.costef}</td>
									<td>${boardVO.service}</td>
								</tr>

							</c:forEach>

						</table>

					</div>
				
				</div>
			</div>
			<!--/.col (left) -->

		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>


<%@include file="/WEB-INF/include/footer.jspf"%>
