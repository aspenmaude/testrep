<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<header id="header">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="header_logo">
					<div class="header_logo-name">
						<a href="#">OPEN4UM</a>
					</div>
				</div>
			</div>
			<div class="col-md-6 ntt_search">
				<form action="#" method="post" class="frmSearch">
					<input type="text" placeholder="Nhập Từ Khóa" name="search_header">
					<i class="fa fa-search" aria-hidden="true"></i>
				</form>
			</div>
			<div class="col-md-3">
				<div class="shopping_cart_box">
					<div class="row">
						<div class="col-md-6 ">
							<div class="shopping_cart_box_btn-left">
								<a href="#"> <i class="fa fa-money" aria-hidden="true"></i>
									Nạp Xu
								</a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="shopping_cart_box_btn-right">
								<a href="#"><i class="fa fa-cloud-upload" aria-hidden="true"></i>Tải
									Lên</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</header>
<menu>
	<div class="container-fluid">
		<div>
			<div class="row menu">
				<div class="col-md-9">
					<ul class="menu_left">
						<li><a href="#"> <i class="fa fa-home" aria-hidden="true"></i>
								Trang chủ
						</a></li>
						<li><a href="#"> <i class="fa fa-list-ol"
								aria-hidden="true"></i>Danh mục
						</a>
							<ul class="menu_left-sub">
								<li><a href="#">C#</a></li>
								<li><a href="#">JAVA</a></li>
								<li><a href="#">PHP</a></li>
								<li><a href="#">UNITY</a></li>
								<li><a href="#">COCOS</a></li>
							</ul></li>
						<li><a href="/open4um/forum/"><i class="fa fa-th-large"
								aria-hidden="true"></i>Diễn đàn</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<div class="menu_right">
						<div class="menu_right_msg">
							<i class="fa fa-envelope" aria-hidden="true"></i>

						</div>
						<div class="menu_right_login">
							<b>ĐĂNG NHẬP</b>
						</div>
						<div class="menu_right_setting">
							<i class="fa fa-cog" aria-hidden="true"></i>
							<ul class="menu_setting">
								<li><a href="#">Trang cá nhân</a></li>
								<li><a href="#">Thông tin cá nhân</a></li>
								<li><a href="#">Mật Khẩu</a></li>
								<li><a href="#">Đăng Xuất</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</menu>
<div class="main_form">
	<div class="form_login">
		<div class="title_form">
			<h3>OPEN4UM</h3>
		</div>

		<div class="login_social-network">
			<h3>SIGN IN WITH</h3>
			<a href="#" class="fblogin"><i class="fa fa-facebook-official"
				aria-hidden="true"></i>Facebook</a> <a href="#" class="gglogin"><i
				class="fa fa-google" aria-hidden="true"></i>Google</a>
		</div>

		<form action="addUser"  method="post">
			<div class="input_form">
				<input type="text" placeholder="Enter username" id="username"
					name="username">
			</div>
			<div class="input_form">
				<input type="password" placeholder="Enter password" id="password"
					name="password"> <i class="fa fa-eye-slash hiddeneye"
					aria-hidden="true"></i> <i class="fa fa-eye showeye"
					aria-hidden="true"></i>
			</div>

			<div class="handl_pw">
				<div class="rememberPW">
					<input type="checkbox" placeholder="Enter password" id="checkbox"
						name="checkbox"> <label for="checkbox">Remember me</label>
				</div>
				<div class="forget_pw">
					<a href="#">Forgot Password?</a>
				</div>

			</div>
			<div class="newmenber signup">
				Not a member? <a href="#">Sign up now</a>
			</div>
			<div class="btn-login">
				<button type="submit">Sign in</button>
			</div>
		</form>
	</div>
</div>

<div class="main_form_register">

	<div class="form_register">
		<div class="register_brand">
			<h3>OPEN4UM</h3>
		</div>
		<form action="#" method="post">
			<div class="register">
				<h3>SIGN UP</h3>
			</div>
			<div class="input_form">
				<input type="text" placeholder="Enter username" id="username"
					name="username">
			</div>
			<div class="input_form register">
				<input type="password" placeholder="Enter password"
					id="password_register" name="password"> <i
					class="fa fa-eye-slash hiddeneye" aria-hidden="true"></i> <i
					class="fa fa-eye showeye" aria-hidden="true"></i>
			</div>
			<div class="input_form">
				<input type="text" placeholder="Enter email" id="email" name="email">
			</div>

			<div class="input_form">
				<input type="number" placeholder="Enter phone" id="phone"
					name="phone">
			</div>
			<div class="newmenber signin">
				A member? <a href="#">Sign in now</a>
			</div>
			<div class="btn-register">
				<button type="submit">Sign up</button>
			</div>
		</form>
	</div>
</div>