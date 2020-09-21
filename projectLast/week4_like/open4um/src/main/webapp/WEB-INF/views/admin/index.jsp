<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<div id="body">
	<div class="nav-container" id="container">
		<div class="lop-ngoai">
 
			<div class="user">
				<div class="image-user">
					<img src="<c:url value="${user.avatar}" />" alt="">
				</div>
				<div class="accordion" id="accordionExample">
					  	<div class="card">
					    	<div class="card-header" id="headingOne">
							    <h2 class="mb-0">
							        <button class="btn btn-link btn-block text-left text-center" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							        	<div class="icon"><i class="fas fa-address-card"></i></div><div class="title"><p >QUẢN LÝ THÀNH VIÊN</p></div>
							        </button>
							    </h2>
					    	</div>

					    	<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
					      		<div class="card-body">
					        		<ul>
					        			<li ><a href="/open4um/admin/listuser/">DANH SÁCH THÀNH VIÊN</a></li>
					        		</ul>
					      		</div>
					    	</div>
					  	</div>
					  	<div class="card">
					    	<div class="card-header" id="headingTwo">
						      	<h2 class="mb-0">
						       		<button class="btn btn-link btn-block text-left collapsed text-center" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
						         <div class="icon"><i class="far fa-clone"></i></div><div class="title"><p >QUẢN LÝ BÀI VIẾT</p></div> 
						        	</button>
						      	</h2>
						    </div>
						    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
						      	<div class="card-body">
							        <ul>
							        	<li class="active"><a href="#">THÊM BÀI VIẾT</a></li>						        	
							        </ul>
						    	</div>
						    	<div class="card-body">
							        <ul>						      
							        	<li class="active"><a href="/open4um/admin/quanlybaiviet/list/">DANH SÁCH BÀI VIẾT</a></li>
							        </ul>
						    	</div>
						    </div>
					  	</div>
					  	<div class="card">
					    	<div class="card-header" id="headingThree">
					      		<h2 class="mb-0">
						        	<button class="btn btn-link btn-block text-left collapsed text-center" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
						         	<div class="icon"><i class="fas fa-file-word"></i></div><div class="title"><p >QUẢN LÝ CHUYÊN MỤC</p></div>
						        	</button>
					      		</h2>
					    	</div>
					    	<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
					      		<div class="card-body">
						        	<ul>
						        		
						        		<li class="active"><a href="ListChuyenMuc.html">DANH SÁCH CHUYÊN MỤC</a></li>
						        	</ul>
					      		</div>
					      		
					    	</div>
					    </div>	
					    <div class="card">
					    	<div class="card-header" id="headingFour">
					      		<h2 class="mb-0">
						        	<button class="btn btn-link btn-block text-left collapsed text-center" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
						         <div class="icon"><i class="fas fa-tag"></i></div><div class="title"><p>QUẢN LÝ THẺ</p></div>
						        	</button>
					      		</h2>
					    	</div>
					    	<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
					      		<div class="card-body">
						        	<ul>
						        		<li class="active"><a href="ListThe.html">DANH SÁCH THẺ</a></li>
						        	</ul>
					      		</div>
					    	</div>
					    </div>
					     <div class="card">
					    	<div class="card-header" id="headingFour">
					      		<h2 class="mb-0">
						        	<button class="btn btn-link btn-block text-left collapsed text-center" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
						         <div class="icon"><i class="far fa-angry"></i></div><div class="title"><p>REPORT</p></div>
						        	</button>
					      		</h2>
					    	</div>
					    	<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
					      		<div class="card-body">
						        	<ul>
						        		<li class="active"><a href="ListThe.html">DANH SÁCH THẺ</a></li>
						        	</ul>
					      		</div>
					    	</div>
					    </div>		
				</div>
			</div>
>>>>>>> branch 'Thai_qlbv' of https://gitlab.com/theplayer/kits03/kits-03-tpjk3n1.git
			<div class="accordion" id="accordionExample">
				<div class="card">
					<div class="card-header" id="headingOne">
						<h2 class="mb-0">
							<button class="btn btn-link btn-block text-left text-center"
								type="button" data-toggle="collapse" data-target="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne">
								<div class="icon">
									<i class="fas fa-address-card"></i>
								</div>
								<div class="title">
									<p>QUẢN LÝ THÀNH VIÊN</p>
								</div>
							</button>
						</h2>
					</div>

					<div id="collapseOne" class="collapse show"
						aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body">
							<ul>
								<li><a href="/open4um/admin1/listuser/">DANH SÁCH THÀNH
										VIÊN</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingTwo">
						<h2 class="mb-0">
							<button
								class="btn btn-link btn-block text-left collapsed text-center"
								type="button" data-toggle="collapse" data-target="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo">
								<div class="icon">
									<i class="far fa-clone"></i>
								</div>
								<div class="title">
									<p>QUẢN LÝ BÀI VIẾT</p>
								</div>
							</button>
						</h2>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordionExample">
						<div class="card-body">
							<ul>
								<li class="active"><a href="#">THÊM BÀI VIẾT</a></li>
							</ul>
						</div>
						<div class="card-body">
							<ul>
								<li class="active"><a
									href="/open4um/admin/quanlybaiviet/list/">DANH SÁCH BÀI
										VIẾT</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingThree">
						<h2 class="mb-0">
							<button
								class="btn btn-link btn-block text-left collapsed text-center"
								type="button" data-toggle="collapse"
								data-target="#collapseThree" aria-expanded="false"
								aria-controls="collapseThree">
								<div class="icon">
									<i class="fas fa-file-word"></i>
								</div>
								<div class="title">
									<p>QUẢN LÝ CHUYÊN MỤC</p>
								</div>
							</button>
						</h2>
					</div>
					<div id="collapseThree" class="collapse"
						aria-labelledby="headingThree" data-parent="#accordionExample">
						<div class="card-body">
							<ul>

								<li class="active"><a href="ListChuyenMuc.html">DANH
										SÁCH CHUYÊN MỤC</a></li>
							</ul>
						</div>

					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingFour">
						<h2 class="mb-0">
							<button
								class="btn btn-link btn-block text-left collapsed text-center"
								type="button" data-toggle="collapse" data-target="#collapseFour"
								aria-expanded="false" aria-controls="collapseFour">
								<div class="icon">
									<i class="fas fa-tag"></i>
								</div>
								<div class="title">
									<p>QUẢN LÝ THẺ</p>
								</div>
							</button>
						</h2>
					</div>
					<div id="collapseFour" class="collapse"
						aria-labelledby="headingFour" data-parent="#accordionExample">
						<div class="card-body">
							<ul>
								<li class="active"><a href="ListThe.html">DANH SÁCH THẺ</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingFour">
						<h2 class="mb-0">
							<button
								class="btn btn-link btn-block text-left collapsed text-center"
								type="button" data-toggle="collapse" data-target="#collapseFour"
								aria-expanded="false" aria-controls="collapseFour">
								<div class="icon">
									<i class="far fa-angry"></i>
								</div>
								<div class="title">
									<p>REPORT</p>
								</div>
							</button>
						</h2>
					</div>
					<div id="collapseFour" class="collapse"
						aria-labelledby="headingFour" data-parent="#accordionExample">
						<div class="card-body">
							<ul>
								<li class="active"><a href="ListThe.html">DANH SÁCH THẺ</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<section>
		<!-- 	tin nhan -->

		<h1>Xin Chào Admin</h1>
		<div class="infor-row">
			<div class="infor-box user">
				<div class="icon-user">
					<i class="fas fa-users"></i>
				</div>
				<div class="infor-user">
					<h4>Số Lượng Thành Viên</h4>
					<p class="number">${name}</p>
				</div>
			</div>
			<div class="infor-box">
				<div class="icon-download">
					<i class="fas fa-cloud-download-alt"></i>
				</div>
				<div class="infor-user">
					<h4>Lượt Tải Xuống</h4>
					<p class="number">${orderhistoryname}</p>
				</div>
			</div>
			<div class="infor-box">
				<div class="icon-source">
					<i class="fas fa-laptop-code" aria-hidden="true"></i>
				</div>
				<div class="infor-user">
					<h4>Source Codes</h4>
					<p class="number">${sourcename}</p>
				</div>
			</div>
			<div class="infor-box">
				<div class="icon-message">
					<i class="fas fa-sms"></i>
				</div>
				<div class="infor-message">
					<h4>Lượng tin nhắn</h4>
					<p class="number">${messagename}</p>
				</div>
			</div>
		</div>

		<script>
			var s = $('.duyet').text();
			var a = document.querySelectorAll(".duyet");
			for (var i = 0; i < a.length; ++i) {
				if (a[i].textContent === "Đã Duyệt") {
					a[i].style.color = "green";
				} else {
					a[i].style.color = "red";
				}
			}
		</script>