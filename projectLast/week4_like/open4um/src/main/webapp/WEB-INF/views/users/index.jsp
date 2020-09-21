<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<input type="hidden" value="${user.userid}" id="userid" />
<div class="container">
	<div class="row info-home">

		<c:choose>
			<c:when test="${user.status == 'active'}">
				<div class="col-xl-3 text-center">
					<img
						src="<c:url value="/resources/images/tu-vi-12-con-giap-thu-bay-27-10-2018-1-640x471-1.jpg" />"
						class="avatar-home" />
				</div>
				<div class="col-xl-3">
					<div>
						<div class="item-info-home" id="id_user_money"></div> <div>VNĐ</div>
					</div>
				</div>
				<div class="col-xl-3">
					<div class="item-info-home" id="id_user_post"></div> <div>Bài viết</div>
				</div>
				<div class="col-xl-3">
					<div class="item-info-home" id="id_user_like"></div> <div>Thích</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="text-center" style="width: 100%; color: var(- -mau4);">
					<h1>OPEN4UM</h1>
				</div>
			</c:otherwise>
		</c:choose>



	</div>

	<div class="row wrap-panel-source">
		<div class="col-xl-2 text-center">
			<div class="item-panel-source">
				<div>
					<img src="<c:url value="/resources/images/upload-source.png"/>"
						alt="Upload source" class="img-upload-source" /><br /> UPLOAD
					SOURCE
				</div>
			</div>
		</div>
		<div class="col-xl-5 text-center">
			<div class="item-panel-source">
				<div>
					<img src="<c:url value="/resources/images/source-game.png"/>"
						alt="Upload source" class="img-upload-source" /><br /> SOURCE
					GAME
				</div>
			</div>
		</div>
		<div class="col-xl-5 text-center">
			<div class="item-panel-source">
				<div>
					<img src="<c:url value="/resources/images/source-web.png"/>"
						alt="Upload source" class="img-upload-source" /><br /> SOURCE
					WEB
				</div>
			</div>
		</div>
	</div>

	<!-- TOP SOURCE -->
	<div class="row">
		<div class="col-xl-8 allSources">
			<div class="nttSource-container">
					<div class="title-menu-home-center">
						<h3>
							<i class="fas fa-laptop-code"></i> TOP SOURCE
						</h3>
					</div>
					<div class="row">
						<c:forEach var="item" items="${listSource}">
	
							<div class="col-md-4 post-source-item">
								<div class="img-post-source">
									<img src="<c:url value="/resources/images/${item.avatar }"/>" />
									<!-- <div class="cate-post-source">
									<i class="far fa-file-archive"></i> Game
								</div> -->
								</div>
								<div class="content-post-source">
									<a href="/open4um/source/${item.sourceid }"> <c:out
											value="${item.sourcename }" />
									</a>
								</div>
								<div class="info-post-source">
									<div class="info-post-source-left">
										<i class="fas fa-eye"></i>
										<c:out value="${item.views }" />
									</div>
									<div class="info-post-source-right">
										<i class="fas fa-cloud-download-alt"></i>
										<c:out value="${item.dowloads }" />
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				<!-- END TOP SOURCE -->

				<!-- NEW SOURCE -->
				<div class="title-menu-home-center">
					<h3>
						<i class="fas fa-laptop-code"></i> SOURCE MỚI NHẤT
					</h3>
				</div>
				<div class="row SourceNew">
					<c:forEach var="item" items="${listSourceNew}">
						<div class="col-xl-4 col-md-6 post-source-item">
							<div class="img-post-source">
								<img src="<c:url value="/resources/images/${item.avatar }"/>" />
								<!-- <div class="cate-post-source">
								<i class="far fa-file-archive"></i> Game
							</div> -->
							</div>
							<div class="content-post-source">
								<a href="/open4um/source/${item.sourceid }"><c:out
										value="${item.sourcename }" /> </a>
							</div>
							<div class="info-post-source">
								<div class="info-post-source-left">
									<i class="fas fa-eye"></i>
									<c:out value="${item.views }" />
								</div>
								<div class="info-post-source-right">
									<i class="fas fa-cloud-download-alt"></i>
									<c:out value="${item.dowloads }" />
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="row">
					<div class="col-12">
						<!-- <nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav> -->
						<h3 id="readMore"
							style="background: var(--mau1); border-radius: 5px; font-size: var(--font16px); text-transform: uppercase; text-align: center; padding: 10px 0; cursor: pointer; font-weight: 600;"
							onclick="loadSourceWeb()">Xem Thêm...</h3>
					</div>
				</div>
			</div>
		</div>

		<!-- END NEW SOURCE -->

		<div class="col-xl-4">
			<!-- CATEGORY -->
			<div class="title-menu-home">
				<h3>
					<i class="fas fa-list-ul"></i> CHUYÊN MỤC
				</h3>
			</div>
			<div class="row">

				<c:forEach var="item" items="${lCategory }">
					<div class="col-xl-12 home-cate">
						<div class="home-cate-title">
							<a href="#"><i class="fas fa-ellipsis-v"></i> <c:out
									value="${item.ctgname }"></c:out> &nbsp;&nbsp; <span>[&nbsp;<c:out
										value="${item.sumproduct }"></c:out> &nbsp;]
							</span></a>
						</div>
					</div>
				</c:forEach>


			</div>
			<!-- END CATEGORY -->

			<!-- TOP POST -->
			<div class="title-menu-home">
				<h3>
					<i class="far fa-clipboard"></i> TOP BÀI VIẾT
				</h3>
			</div>
			<div class="row">
				<c:forEach var="item" items="${lPostUser }">
					<div class="col-xl-12 home-post">
						<div class="home-post-title">
							<a href="/open4um/post/${item.proid }"><i class="far fa-file"></i>
								<c:out value="${item.title }"></c:out> </a>
						</div>
						<div class="home-post-author">
							<a href="#"><i class="fas fa-user"></i> <c:out
									value="${item.username }" /></a> -
							<c:out value="${item.time }"></c:out>
							trước
						</div>
						<div class="home-post-info">
							<div>
								<i class="far fa-thumbs-up"></i>
								<c:out value="${item.like }" />
							</div>

							<div>
								<i class="far fa-eye"></i>
								<c:out value="${item.views }" />
							</div>
						</div>
					</div>

				</c:forEach>
			</div>
			<!-- END TOP POST -->

			<!-- NEW POST -->
			<div class="title-menu-home">
				<h3>
					<i class="far fa-clipboard"></i> BÀI VIẾT MỚI
				</h3>
			</div>
			<div class="row">
				<c:forEach var="item" items="${lNewPostUser }">
					<div class="col-xl-12 home-post">
						<div class="home-post-title">
							<a href="/open4um/post/${item.proid }"><i class="far fa-file"></i>
								<c:out value="${item.title }"></c:out> </a>
						</div>
						<div class="home-post-author">
							<a href="#"><i class="fas fa-user"></i> <c:out
									value="${item.username }" /></a> -
							<c:out value="${item.time }"></c:out>
							trước
						</div>
						<div class="home-post-info">
							<div>
								<i class="far fa-thumbs-up"></i>
								<c:out value="${item.like }" />
							</div>

							<div>
								<i class="far fa-eye"></i>
								<c:out value="${item.views }" />
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- END NEW POST -->
		</div>
	</div>
</div>
<script src="<c:url value="/resources/js/home.js" />"></script>