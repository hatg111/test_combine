  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

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

		<!-- Default box -->

		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">LIST PAGING</h3>
			</div>
			<div class="box-body">
				<table class="table table-bordered">
					<tr>
						<th style="width: 10px">BNO</th>
						<th>TITLE</th>
						<th>WRITER</th>
						<th>REGDATE</th>
						<th style="width: 40px">VIEWCNT</th>
					</tr>

					<c:forEach items="${list}" var="boardVO">

						<tr>
							<td>${boardVO.reviewid}</td>
							<td><a
								href='/review/readPage${pageMaker.makeQuery(pageMaker.cri.page) }&reviewid=${boardVO.reviewid}'>
									${boardVO.title}</a></td>
							<td>${boardVO.reportreason}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
									value="${boardVO.regdate}" /></td>
							<%-- <td><span class="badge bg-red">${boardVO.viewcnt }</span></td> --%>
						</tr>

					</c:forEach>

				</table>
			</div>
			<!-- /.box-body -->


			<div class="box-footer">
				<div class="text-center">
					<ul class="pagination">

						<c:if test="${pageMaker.prev}">
							<li><a href="${pageMaker.startPage - 1}">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }" var="idx">
							<li
								<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
								<a href="${idx}">${idx}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a href="${pageMaker.endPage +1}">&raquo;</a></li>
						</c:if>

					</ul>
				</div>
			</div>
			<!-- /.box-footer-->
		</div>

	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->


<form id="jobForm">
	<input type='hidden' name="page" value=${pageMaker.cri.perPageNum}>
	<input type='hidden' name="perPageNum" value=${pageMaker.cri.perPageNum}>
</form>


<script>
/* 
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
 */
	$(".pagination li a").on("click", function(event) {

		event.preventDefault();

		var targetPage = $(this).attr("href");

		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action", "/review/listPage").attr("method", "get");
		jobForm.submit();
	});
</script>

<%@include file="/WEB-INF/include/footer.jspf"%>