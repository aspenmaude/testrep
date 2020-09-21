<!-- @author Ha Thi Bich Chi -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//String contextPath =pageContext.getRequest().getServletContext();
String contextPath = request.getContextPath();
%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<style>
.fa.fa-star {
	color: orange;
}

.button-orange {
	background: #ff8401;
	border: 1px solid #ff8401;
	color: #fff;
	border-radius: 5px;
	text-align: center;
	text-decoration: none !important;
}

.line {
	height: 1px;
	background: url(../resources/images/line.jpg);
}

.dt-price {
	font-size: 19px;
	padding-top: 10px;
	padding-bottom: 5px;
}

.dt-pri-btn {
	padding: 15px 0px;
}

.button-small {
	padding: 8px 11px;
}

.dt-download {
	line-height: 60px;
	margin: 15px 0px;
}

.button-down {
	font-size: 16px;
	white-space: nowrap;
	padding: 15px 27px;
	background: #84c52c;
	border: 1px solid #84c52c;
	border-radius: 5px;
}

.btn2 {
	color: #fff;
	font-weight: bold;
}

.dt-des {
	margin: 15px 0px;
	line-height: 23px;
}

.aorange {
	color: #ff8401;
}

.dt-col {
	width: 95px;
	float: left;
	clear: both;
	color: #cebda2;
}

.img-border {
	max-width: 300px;
	padding: 10px;
	border: 1px solid #e2d8c7;
	border-radius: 4px;
	margin: auto;
}

.dt-box-title {
	font-size: 16px;
	border-radius: 4px 4px 0px 0px;
	padding: 10px 30px;
	display: inline-block;
	color: #fff;
	background: #ff8401;
}

.dt-box {
	border: 1px solid #ff8401;
	padding: 30px 15px;
	border-radius: 0px 4px 4px 4px;
}

.btn-txt {

    font-size: 18px;

    float: left;
}
.page-heading {
	height: 41px;
	border-bottom: 1px solid #e2d8c7;
	line-height: 40px;
	position: relative;
	font-size: 24px;
}

.page-heading span.page-heading-title {
	border-bottom: 3px solid #84c52c;
	position: absolute;
	bottom: -1px;
	padding: 5px 12px;
	font-weight: bold;
	text-transform: uppercase;
	font-size: 20px;
}

.view-product-list {
	margin-top: 20px;
	position: relative;
}

.dt-down2 {

    background-color: #f4f0e2;
    border-radius: 5px;
    overflow: hidden;
    padding: 20px 0px;
    border-left: 17px solid #8c6635;;
    border-right: 17px solid #8c6635;;
}

.dt-down {
    background-color: #8c6635;
    border-radius: 4px;
    padding: 0px 5px;
    overflow: hidden;
}
.button-down2 {
    font-size: 16px;
    white-space: nowrap;
    padding: 25px 58px 55px;
    background: #84c52c;
    border: 1px solid #84c52c;
    display: inherit;
    margin-top: 10px;
    border-radius: 5px;
}
.rating {
    float:left;
    width:300px;
}
.rating span { float:right; position:relative; }
.rating span input {
    position:absolute;
    top:0px;
    left:0px;
    opacity:0;
}
.rating span label {
    display:inline-block;
    width:30px;
    height:30px;
    text-align:center;
    color:#ddd;
    background:#fff;
    font-size:10px;
    margin-right:2px;
    line-height:30px;

}
.rating span:hover ~ span label,
.rating span:hover label,
.rating span.checked label,
.rating span.checked ~ span label {
    background:#fff;
    color:#ff8401;
}
</style>

<div class="container">
	<div class="row info-home">
		<div class="col-xl-3 text-center">
			<img
				src="<c:url value="/resources/images/tu-vi-12-con-giap-thu-bay-27-10-2018-1-640x471-1.jpg" />"
				class="avatar-home" />
		</div>
		<div class="col-xl-3">
			<div>
				<div class="item-info-home">
					<i class="fas fa-wallet"></i> 150.000
				</div>
				<div>VNĐ</div>
			</div>
		</div>
		<div class="col-xl-3">
			<div class="item-info-home">
				<i class="far fa-clipboard"></i> 165
			</div>
			<div>Bài viết</div>
		</div>
		<div class="col-xl-3">
			<div class="item-info-home">
				<i class="far fa-thumbs-up"></i> 89
			</div>
			<div>Thích</div>
		</div>
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
					<a href="<%=contextPath%>/sourceweb"><img
						src="<c:url value="/resources/images/source-game.png"/>"
						alt="Upload source" class="img-upload-source" /><br /> SOURCE WEB</a>
				</div>
			</div>
		</div>
		<div class="col-xl-5 text-center">
			<div class="item-panel-source">
				<div>
					<a href="<%=contextPath%>/sourcegame"><img
						src="<c:url value="/resources/images/source-web.png"/>"
						alt="Upload source" class="img-upload-source" /><br /> SOURCE
						GAME</a>
				</div>
			</div>
		</div>
	</div>

	<!-- TOP SOURCE -->

	<div class="row">
		<div class="col-xl-8">
			<div class="row">
				<div class="col-sm-4">
					<div class="img-border">
						<img alt=""
							src="<c:url value="/resources/images/${listSourceOne.avatar}"/>">
					</div>
				</div>
				<div class="col-sm-8">
					<h1>${listSourceOne.sourcename}</h1>
					<span style="color: #84c52c">[Mã code <span id="code">${listSourceOne.sourceid}</span>]
					</span>
					<div class="row title5">
						<div class="col-md-8">
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span> <span class="text-nowrap">1
								Đánh giá</span> <a href=""><i class="fa fa-pencil"></i>Viết đánh
								giá</a>
						</div>
						<div class="col-md-4">
							<i class="fa fa-download"></i><b
								id="mainbody_contentbody_DownloadCount">3</b> <span><b
								id="">949</b></span> <span class="text-nowrap"><i
								class="fa fa-heart" aria-hidden="true"></i><b>1</b></span>
						</div>
					</div>
					<div class="line"></div>
					<div class="row">
						<div class="col-sm-9 dt-price">
							<span class="bold">Phí tải: <span>${listSourceOne.price}</span></span>
							<em id="" class="txt-em">(1Xu = 1.000đ)</em>
						</div>
						<div class="col-sm-3 dt-pri-btn">
							<a class="button-orange button-small" href=""><i
								class="fa fa-heart line-h20" aria-hidden="true"></i><span
								class="hidden-sm"> YÊU THÍCH</span></a>
						</div>
					</div>
					<div class="line"></div>
					<div class="row">
						<div class="col-md-7 dt-des">
							<div class="dt-col">Danh mục</div>
							<div itemprop="material">
								<a href="" class="aorange">${listSourceOne.ctgid}</a>
							</div>
							<div class="dt-col">Ngày đăng</div>
							<div id="mainbody_contentbody_Date2">${listSourceOne.date}</div>
							<div class="dt-col">Loại file</div>
							<div id="mainbody_contentbody_Type2">Full code</div>
							<div class="dt-col">Dung lượng</div>
							<div id="">39 MB</div>
						</div>
						<div class="col-md-5 dt-download">
							<a href="" class="btn2 button-down bold">DOWNLOAD</a>

						</div>


					</div>
					<div class="line"></div>

				</div>
			</div>
			<div>
				<span class="dt-box-title bold">MÔ TẢ CHI TIẾT</span>
				<div class="dt-box entry-detail">
					<p>${listSourceOne.contentdetails}</p>
				</div>
			</div>
			<div class="clear" style="height: 40px;">&nbsp;</div>
			<div class="col-md-12 dt-down">
				<div class="row dt-down2">
					<div class="col-md-8">
						<div class="bold title3">LINK DOWNLOAD</div>
						<h2 class="dt-file">
							<span>[81 MB]</span>
						</h2>
						<div class="dt-true-ic bold">File đã kiểm duyệt</div>
						<a id="code-giong" class="aorange  text-nowrap dt-action"
							role="button" data-toggle="collapse" href="#collError"
							aria-expanded="false" aria-controls="collError"><i
							class="fa fa-paper-plane" aria-hidden="true"></i>&nbsp;Báo lỗi
							(or) Gửi hỗ trợ</a> &nbsp;&nbsp;&nbsp; <a data-toggle="modal"
							data-target="#LoginForm" onclick="createCaptcha();" role="button"
							class="aorange text-nowrap dt-action" href="#"><i
							class="fa fa-exclamation-triangle" aria-hidden="true"></i>&nbsp;Báo
							vi phạm bản quyền</a>

					</div>
					<div class="col-md-4">

						<span class="green">sharecode.vn</span> <a class="btn2 button-down2"
							 href=""><div class="btn-box">
								<div class="btn-ic"></div>
								<div class="btn-txt bold">
									DOWNLOAD<br><span>${listSourceOne.price}</span>
								</div>
							</div></a>

					</div>
		
				</div>
			</div>

			<div id="view-product-list" class="view-product-list">
				<h2 class="page-heading">
					<span class="page-heading-title">CODE NỔI BẬT</span>
				</h2>
				<ul class="row product-list style2 grid">

					<li class="col-sx-12 col-sm-3">
						<div class="product-container">
							<div class="left-block">
								<a href="">
									<div class="img-box">
										<img class="img-responsive">
									</div>
								</a>
								<div class="quick-view">
									<a class="search" href=""></a> <a id=""
										class="heart LikeSuccess" href=""></a> <a
										onclick="createCaptcha();" class="compare" data-toggle="modal"
										data-target="#LoginForm" role="button"
										href=""></a>

								</div>
								<div class="downview">
									<span class="view-count2">${listSourceOne.views}</span> <span
										class="down-count2">${listSourceOne.dowloads}</span>
								</div>
								<a class="cate" href="">${listSourceOne.ctgid}</a>
							</div>
							<div class="right-block">
								<a itemprop="url" href="">
									<h2 itemprop="name" class="product-name bold"">${listSourceOne.sourcename}</h2>
								</a>
							</div>
						</div> </span>
					</li>
			</ul>
			</div>
		</div>
		<div class="col-xl-4">
			<!-- CATEGORY -->
			<div class="title-menu-home">
				<h3>
					<i class="fas fa-list-ul"></i> CHUYÊN MỤC
				</h3>
			</div>
			<div class="row">
				<div class="col-xl-12 home-cate">
					<div class="home-cate-title">
						<a href="#"><i class="fas fa-ellipsis-v"></i> Thông báo
							&nbsp;&nbsp; <span>[30]</span></a>
					</div>
				</div>
				<div class="col-xl-12 home-cate">
					<div class="home-cate-title">
						<a href="#"><i class="fas fa-ellipsis-v"></i> Thảo luận chung
							&nbsp;&nbsp;<span>[30]</span></a>
					</div>
				</div>
				<div class="col-xl-12 home-cate">
					<div class="home-cate-title">
						<a href="#"><i class="fas fa-ellipsis-v"></i> Kiến thức cần
							biết &nbsp;&nbsp;<span>[30]</span></a>
					</div>
				</div>
				<div class="col-xl-12 home-cate">
					<div class="home-cate-title">
						<a href="#"><i class="fas fa-ellipsis-v"></i> Học tập
							&nbsp;&nbsp;<span>[30]</span></a>
					</div>

				</div>
			</div>
			<!-- END NEW SOURCE -->


			<!-- END CATEGORY -->

			<!-- TOP POST -->
			<div class="title-menu-home">
				<h3>
					<i class="far fa-clipboard"></i> TOP BÀI VIẾT
				</h3>
			</div>
			<div class="row">
				<div class="col-xl-12 home-post">
					<div class="home-post-title">
						<a href="#"><i class="far fa-file"></i> Note 20 Ultra không
							được hỗ trợ sạc...</a>
					</div>
					<div class="home-post-author">
						<a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ
						trước
					</div>
					<div class="home-post-info">
						<div>
							<i class="far fa-thumbs-up"></i> 8
						</div>
						<div>
							<i class="far fa-comments"></i> 32
						</div>
						<div>
							<i class="far fa-eye"></i> 1325
						</div>
					</div>
				</div>

				<div class="col-xl-12 home-post">
					<div class="home-post-title">
						<a href="#"><i class="far fa-file"></i> Note 20 Ultra không
							được hỗ trợ sạc...</a>
					</div>
					<div class="home-post-author">
						<a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ
						trước
					</div>
					<div class="home-post-info">
						<div>
							<i class="far fa-thumbs-up"></i> 8
						</div>
						<div>
							<i class="far fa-comments"></i> 32
						</div>
						<div>
							<i class="far fa-eye"></i> 1325
						</div>
					</div>
				</div>

				<div class="col-xl-12 home-post">
					<div class="home-post-title">
						<a href="#"><i class="far fa-file"></i> Note 20 Ultra không
							được hỗ trợ sạc...</a>
					</div>
					<div class="home-post-author">
						<a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ
						trước
					</div>
					<div class="home-post-info">
						<div>
							<i class="far fa-thumbs-up"></i> 8
						</div>
						<div>
							<i class="far fa-comments"></i> 32
						</div>
						<div>
							<i class="far fa-eye"></i> 1325
						</div>
					</div>
				</div>
				<div class="col-xl-12 home-post">
					<div class="home-post-title">
						<a href="#"><i class="far fa-file"></i> Note 20 Ultra không
							được hỗ trợ sạc...</a>
					</div>
					<div class="home-post-author">
						<a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ
						trước
					</div>
					<div class="home-post-info">
						<div>
							<i class="far fa-thumbs-up"></i> 8
						</div>
						<div>
							<i class="far fa-comments"></i> 32
						</div>
						<div>
							<i class="far fa-eye"></i> 1325
						</div>
					</div>
				</div>
				<div class="col-xl-12 home-post">
					<div class="home-post-title">
						<a href="#"><i class="far fa-file"></i> Note 20 Ultra không
							được hỗ trợ sạc...</a>
					</div>
					<div class="home-post-author">
						<a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ
						trước
					</div>
					<div class="home-post-info">
						<div>
							<i class="far fa-thumbs-up"></i> 8
						</div>
						<div>
							<i class="far fa-comments"></i> 32
						</div>
						<div>
							<i class="far fa-eye"></i> 1325
						</div>
					</div>
				</div>

			</div>
			<!-- END TOP POST -->

			<!-- NEW POST -->
			<div class="title-menu-home">
				<h3>
					<i class="far fa-clipboard"></i> BÀI VIẾT MỚI
				</h3>
			</div>
			<div class="row">
				<div class="col-xl-12 home-post">
					<div class="home-post-title">
						<a href="#"><i class="far fa-file"></i> Note 20 Ultra không
							được hỗ trợ sạc...</a>
					</div>
					<div class="home-post-author">
						<a href="#"><i class="fas fa-user"></i> Duy Luân</a> - 11 giờ
						trước
					</div>
					<div class="home-post-info">
						<div>
							<i class="far fa-thumbs-up"></i> 8
						</div>
						<div>
							<i class="far fa-comments"></i> 32
						</div>
						<div>
							<i class="far fa-eye"></i> 1325
						</div>
					</div>
				</div>
			</div>
			<!-- END NEW POST -->
		</div>

	</div>
</div>
</div>
<script>



$(document).ready(function(){
    // Check Radio-box
    $(".rating input:radio").attr("checked", false);

    $('.rating input').click(function () {
        $(".rating span").removeClass('checked');
        $(this).parent().addClass('checked');
    });

    $('input:radio').change(
      function(){
        var userRating = this.value;
        alert(userRating);
    }); 
});
</script>
