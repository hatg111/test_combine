<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" href="/resources/dist/css/mukkitlist.css">
<style>
@font-face {
   src: url("/resources/dist/font/SDSWAGGERTTF.TTF");
   font-family:"Sdswaggerttf";
}
body{
	font-family: Sdswaggerttf !important;
}
h2{
	font-family: Sdswaggerttf !important;
}


#mukkitstoreid{
display: none;
}
#mukkitvisitcheck{
display: none;
}
.storeimg {
	width: 50px;
	height: 50px;
	display: inline;
}
h2 {
	display: inline;
	padding: 10px;
}
</style>
<%@ include file="/WEB-INF/include/header.jspf"%>

<!------ Include the above in your HEAD tag ---------->

<div class="container">

	<div class="subject">
		<h1>먹킷리스트</h1>
		<h5>가고싶은 맛집을 추가하고 체크해보세요!</h5>
	</div>

	<div class="row">

		<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 row]">
			<ul class="list" id="mukkitlist">
			
				<%-- <c:forEach var="mukkit" items="${mukkitlist}">
					<li>
						<table>
							<tr>
								<td>
									<h2>${mukkit.storename}</h2> ${mukkit.visitcheck}
								</td>
								<td class="td_form">
									<form
										action="${pageContext.request.contextPath}/mukkitList/modifyPage"
										method="post">
										<input type="image"
											src="${pageContext.request.contextPath}/resources/dist/img/mukkitlist/check.png">
										<input type="hidden" name="storeid" value="${mukkit.storeid}">
										<input type="hidden" name="memberid"
											value="${mukkit.memberid}"> <input type="hidden"
											name="visitcheck" value="${mukkit.visitcheck}">
									</form>

								</td>
								<td class="td_form"><form
										action="${pageContext.request.contextPath}/mukkitList/delete"
										method="post">
										<input type="image"
											src="${pageContext.request.contextPath}/resources/dist/img/mukkitlist/x.png"
											value="삭제"> <input type="hidden" name="storeid"
											value="${mukkit.storeid}"> <input type="hidden"
											name="memberid" value="${mukkit.memberid}"> <input
											type="hidden" name="visitcheck" value="${mukkit.visitcheck}">
									</form></td>
							</tr>
						</table>
					</li>
				</c:forEach> --%>


			</ul>
		</div>
	</div>
</div>



<%@ include file="/WEB-INF/include/footer.jspf"%>



<script type="text/javascript">
$(document).ready(function(){
	
	var memberid = "${userVo.memberid}";
	console.log(memberid);

	getPageList(); //먹킷리스트 불러오기
	
	
	
	//Delete
	$(document).on("click","#DelBtn",function() {
		var IsConfirm = confirm('정말 삭제하시겠습니까?');
		
	if (IsConfirm){
		var storeid = $(this).next().attr("data-storeid");
		console.log("mukkitstoreid =" + storeid);
		
		$.ajax({
			type : 'delete',
			url : "/mukkitList/delete/"+memberid+"/"+storeid,
			dataType : 'text',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "DELETE"
			},
			success : function(result) {
				console.log("result: " + result);
				if (result == 'SUCCESS') {
					alert("삭제 되었습니다.");
					getPageList();
				}
			}
		}); //ajax
		}//if문
	}); //Delete end
	
	

	//Modify
	$(document).on("click","#ModBtn",function() {
		//alert('Mod 버튼 클릭했음');
		
		
		var storeid = $(this).next().attr("data-storeid");
		var visitcheck = $(this).next().next().attr("data-visitcheck");
		console.log("mukkitstoreid =" + storeid);
		console.log("mukkitvisitcheck =" + visitcheck);
		
		
		$.ajax({
			type:'put',
			url : "/mukkitList/check/"+memberid+"/"+storeid+"/"+visitcheck,
			dataType : 'text',
			headers: { 
			      "Content-Type": "application/json",
			      "X-HTTP-Method-Override": "PUT" },
			success : function(result) {
				console.log("result: " + result);
				if (result == 'SUCCESS') {
					alert("체크 되었습니다.");
					getPageList();
				}
			}
		}); 
	}); //Modify end
	
 	
 	//list create
	 function getPageList() {
		$.ajax({
				url : "/mukkitList/" + memberid,
				dataType : "json",
				success : function(data) {

					var str = "";

					$(data).each(function() {
						str += "<li class='"
							+this.visitcheck
							+"'>"
							+"<table><tr><td><img class='storeimg' src='"
							+this.img
							+"'><h2><a href='/main/dtpage?storeid="
							+this.storeid
							+"'>"
						+ this.storename
						+ "</a></h2>"
						//+ this.visitcheck
						+"</td><td class='td_form'><img id='ModBtn' src='${pageContext.request.contextPath}/resources/dist/img/mukkitlist/check.svg'>"
						+"<div id='mukkitstoreid' data-storeid='"
						+this.storeid
						+"'>"
						+this.storeid
						+"</div>"
						+"<div id='mukkitvisitcheck' data-visitcheck='"
						+this.visitcheck
						+"'>"
						+this.visitcheck
						+"</div>"
						+"</td><td class='td_form'>"
						+"<img id='DelBtn' class='DelBtn' src='${pageContext.request.contextPath}/resources/dist/img/mukkitlist/x.svg'>"
						+"<div id='mukkitstoreid' data-storeid='"
						+this.storeid
						+"'>"
						+this.storeid
						+"</div>"
						+"</td></tr></table>"
						+"</li>" ;
						});
					$("#mukkitlist").html(str);
					$('ul').children('.Y').css( 'background-color', 'orange' );
					//$('ul').children('.N').css( 'background-color', '#F0F0F0' );
					}
				});
		
	} //list create end
 	

id="rid this.rid"
}); //document load
</script>


