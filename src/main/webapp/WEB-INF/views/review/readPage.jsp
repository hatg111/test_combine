<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/include/header.jspf"%>



<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
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

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">READ BOARD</h3>
					</div>
					<!-- /.box-header -->

					<form role="form" action="modifyPage" method="post">

						<input type='hidden' name='reviewid' value="${boardVO.reviewid}">
						<input type='hidden' name='page' value="${cri.page}"> <input
							type='hidden' name='perPageNum' value="${cri.perPageNum}">

					</form>

					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">Title</label> <input type="text"
								name='title' class="form-control" value="${boardVO.title}"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Content</label>
							<textarea class="form-control" name="reportreason" rows="3"
								readonly="readonly">${boardVO.reportreason}</textarea>
						</div>
						<%-- <div class="form-group">
							<label for="exampleInputEmail1">Writer</label> <input
								type="text" name="writer" class="form-control"
								value="${boardVO.writer}" readonly="readonly">
						</div> --%>
					</div>
					<!-- /.box-body -->

					<div class="box-footer">
						<div>
							<hr>
						</div>
						<ul class="mailbox-attachments clearfix uploadedList">
						</ul>
						<c:if test="${loginForm.memberid}">
							<button type="submit" class="btn btn-warning">Modify</button>
							<button type="submit" class="btn btn-danger">REMOVE</button>
						</c:if>
						<button type="submit" class="btn btn-primary">GO LIST</button>

					</div>


					<script>
						$(document).ready(function() {

							var formObj = $("form[role='form']");

							console.log(formObj);

							$(".btn-warning").on("click", function() {
								formObj.attr("action", "/review/modifyPage");
								formObj.attr("method", "get");
								formObj.submit();
							});

							$(".btn-danger").on("click", function() {
								formObj.attr("action", "/review/removePage");
								formObj.submit();
							});

							$(".btn-primary").on("click", function() {
								formObj.attr("method", "get");
								formObj.attr("action", "/review/listPage");
								formObj.submit();
							});

						});
					</script>




				</div>
				<!-- /.box -->
			</div>
			<!--/.col (left) -->

		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@include file="/WEB-INF/include/footer.jspf"%>
