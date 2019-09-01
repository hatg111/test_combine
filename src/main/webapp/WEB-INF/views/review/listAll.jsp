<%@ page contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="/WEB-INF/include/header.jspf"%>




<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<!-- 
	<section class="content-header">
		<h1>
			Blank page <small>it all starts here</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Examples</a></li>
			<li class="active">Blank page</li>
		</ol>
	</section>
 -->
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
								<th>제목</th>
								<th>내용</th> 
								<th>작성일자</th>
							    <th>별점</th>
							</tr>


							<c:forEach items="${list}" var="boardVO">

								<tr>
									<td>${boardVO.reviewid}</td>
									<td><a href='/review/read?reviewid=${boardVO.reviewid}'>${boardVO.title}</a></td>
									 <td>${boardVO.reportreason}</td> 
									<%-- <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${boardVO.reportdate}" /></td> --%>
									<td>${boardVO.reportdate }</td>
									 <td>${boardVO.reviewtaste}</td>
								</tr>

							</c:forEach>

						</table>

					</div>
					<!-- /.box-body -->
					<!-- <div class="box-footer">Footer</div> -->
					<!-- /.box-footer-->
				</div>
			</div>
			<!--/.col (left) -->

		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<!-- 
<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>
 -->
<%@include file="/WEB-INF/include/footer.jspf"%>
