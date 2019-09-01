<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/dist/css/userlist.css">

<%@ include file="/WEB-INF/include/header.jspf"%>

<div class="container">
	<div>
		<h1 class="pagetitle">유저 랭킹</h1>
	</div>

	<div class="userlist">
		<div class="row">
			<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
				<ul class="event-list">

					<c:forEach var="userranking" items="${userrankinglist}"
						varStatus="status">
						<li><span class="userrank"> <%-- <c:forEach var="testResult" items="${testResultList}" varStatus="status"> --%>
								${status.count}위
						</span> 
						<!-- <img alt="User_img"
							src="https://www.musiciansdfw.org/wp-content/uploads/2018/11/default-profile.jpg" /> -->
							
							<div class="info">
								<p class="desc">
									<c:out value="${userranking.memberlv}" />
								</p>
								<h2 class="title">
									<c:out value="${userranking.nickname}" />
								</h2>
								<ul>
									<li style="width: 50%;"><span class="star_temp"></span>
									<c:out value="${userranking.memberscore}" /></li>
								</ul>
							</div></li>
					</c:forEach>

					<!-- 				<li><span class="userrank">2위</span> <img alt="User_img"
					src="https://www.musiciansdfw.org/wp-content/uploads/2018/11/default-profile.jpg" />
					<div class="info">
						<p class="desc">등급</p>
						<h3 class="title">유저명</h3>
						<ul>
							<li style="width: 50%;"><span class="star_temp"></span> 점수</li>
						</ul>
					</div></li>

				<li><span class="userrank">3위</span> <img alt="User_img"
					src="https://www.musiciansdfw.org/wp-content/uploads/2018/11/default-profile.jpg" />
					<div class="info">
						<p class="desc">등급</p>
						<h3 class="title">유저명</h3>
						<ul>
							<li style="width: 50%;"><span class="star_temp"></span> 점수</li>
						</ul>
					</div></li>

				<li><span class="userrank">4위</span> <img alt="User_img"
					src="https://www.musiciansdfw.org/wp-content/uploads/2018/11/default-profile.jpg" />
					<div class="info">
						<p class="desc">등급</p>
						<h3 class="title">유저명</h3>
						<ul>
							<li style="width: 50%;"><span class="star_temp"></span> 점수</li>
						</ul>
					</div></li> -->
				</ul>
			</div>
		</div>
	</div>
</div>




<%@ include file="/WEB-INF/include/footer.jspf"%>