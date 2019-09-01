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
						<h3 class="box-title">REGISTER BOARD</h3>
					</div>
					<!-- /.box-header -->

					<form role="form" method="post">
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">제목</label> <input type="text"
									name='title' class="form-control" placeholder="Enter Title">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">신고내용</label>
								<textarea class="form-control" name="reportreason" rows="3"
									placeholder="Enter ..."></textarea>
							</div>
							 
							<div class="form-group">
							<!-- 
								<input name="reviewtaste" type="radio" id="reviewtaste" value="0.5" />0.5
								<input name="reviewtaste" type="radio" id="reviewtaste" value="1.0" />1.0
								<input name="reviewtaste" type="radio" id="reviewtaste" value="1.5" />1.5
								<input name="reviewtaste" type="radio" id="reviewtaste" value="2.0" />2.0
								<input name="reviewtaste" type="radio" id="reviewtaste" value="2.5" />2.5
								<input name="reviewtaste" type="radio" id="reviewtaste" value="3.0" />3.0
								<input name="reviewtaste" type="radio" id="reviewtaste" value="3.5" />3.5
								<input name="reviewtaste" type="radio" id="reviewtaste" value="4.0" />4.0
								<input name="reviewtaste" type="radio" id="reviewtaste" value="4.5" >4.5
								<input name="reviewtaste" type="radio" id="reviewtaste" value="5.0" />5.0
 							
 								<input name="reviewtaste" type="radio" id="reviewtaste" value="1"/>1
 								<input name="reviewtaste" type="radio" id="reviewtaste" value="2"/>2
 								<input name="reviewtaste" type="radio" id="reviewtaste" value="3"/>3
 								<input name="reviewtaste" type="radio" id="reviewtaste" value="4"/>4
 								<input name="reviewtaste" type="radio" id="reviewtaste" value="5"/>5
 							-->
							</div>
							
							<%-- 
							 <div class="form-group">
								<label for="exampleInputEmail1">Writer</label> 
								<input
									type="text" name="memberid" class="form-control"
									placeholder="Enter Writer" value = '${loginForm.memberid}' readonly>
							</div> 
							 --%>
						</div>
						<!-- /.box-body -->

						<div class="box-footer">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>


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
