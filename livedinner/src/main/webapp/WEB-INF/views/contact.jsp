<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<!-- Basic -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>Live Dinner Restaurant</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="resources/images/apple-touch-icon.png">

<!-- Site CSS -->
<link rel="stylesheet" href="resources/css/style.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="resources/css/custom.css">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body style="margin: 15px;">
	<!-- Start header -->
	<header>
		<nav>
			<div>
				<a href="/livedinner/"> <img src="resources/images/logo.png"
					alt="" />
				</a>
				<button type="button" data-toggle="collapse"
					data-target="#navbars-rs-food" aria-controls="navbars-rs-food"
					aria-expanded="false" aria-label="Toggle navigation">
					<span></span>
				</button>
				<div id="navbars-rs-food">
					<ul>
						<li><a href="/livedinner/">Home</a></li>
						<li><a href="/livedinner/menu">Menu</a></li>
						<li><a href="/livedinner/about">About</a></li>
						<li>
							<!-- main menu--> <a href="#" id="dropdown-a"
							data-toggle="dropdown" onclick="view('page')">Pages</a><br />
							<div class="submenu" id="page" aria-labelledby="dropdown-a">
								<a href="/livedinner/reservation">Reservation</a><br /> <a
									href="/livedinner/stuff">Stuff</a><br /> <a
									href="/livedinner/gallery">Gallery</a>
							</div>
						</li>
						<li>
							<!-- main menu--> <a href="#" id="dropdown-a"
							data-toggle="dropdown" onclick="view('blog')">Blog</a><br />
							<div class="submenu" id="blog" aria-labelledby="dropdown-a">
								<a href="/livedinner/blog">blog</a><br /> <a
									href="/livedinner/blogdetails">blogSingle</a>
							</div>
						</li>
						<li><a href="/livedinner/contact">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->


	<!-- Start All Pages -->
	<div>
		<div>
			<div>
				<div>
					<h1>Contact</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->

	<div>
		<p>Insert Contact Table</p>
		<form action="insert" method="get">
			<input type="text" name="coname" placeholder="Please input coname"></br>
			<input type="text" name="priphone" placeholder="Please input priphone"> </br>
				<input type="email" name="email" placeholder="Please input email"> </br>
				<input type="text" name="address" placeholder="Please input address"></br>
				<input type="number" name="unused" placeholder="Please input unused (0 or 1)"> </br>
				<input type="number" name="latitude" placeholder="Please input latitude"></br>

			<button type="submit">SUBSCRIBE</button>
		</form>
	</div>
	<!-- Start Contact -->
	<div></div>
	<div>
		<div>
			<div>
				<div>
					<div>
						<h2>Contact</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting</p>
					</div>
				</div>
			</div>
			<div>
				<div>
<%
/*					
<form id="contactForm">
<div>
<div>
	<div>
		<input type="text" id="name" name="name"
			placeholder="Your Name" required
			data-error="Please enter your name">
		<div></div>
	</div>
</div>
<div>
	<div>
		<input type="text" placeholder="Your Email" id="email"
			name="name" required data-error="Please enter your email">
		<div></div>
	</div>
</div>
<div>
	<div>
		<select id="guest" required data-error="Please Select Person">
			<option disabled selected>Please Select Person*</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<div></div>
	</div>
</div>
<div>
	<div>
		<textarea id="message" placeholder="Your Message" rows="4"
			data-error="Write your message" required></textarea>
		<div></div>
	</div>
	<div>
		<button id="submit" type="submit">Send Message</button>
		<div id="msgSubmit"></div>
		<div></div>
	</div>
</div>
</div>
</form>*/
%>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact -->

	<!-- Start Contact info -->
	<div>
		<div>
			<div>
				<div>
					<i></i>
					<div>
						<h4>Phone</h4>
						<p>+01 123-456-4590</p>
					</div>
				</div>
				<div>
					<i></i>
					<div>
						<h4>Email</h4>
						<p>yourmail@gmail.com</p>
					</div>
				</div>
				<div>
					<i></i>
					<div>
						<h4>Location</h4>
						<p>800, Lorem Street, US</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->

	<!-- Start Footer -->
	<footer>
		<div>
			<div>
				<div>
					<h3>About Us</h3>
					<p>Integer cursus scelerisque ipsum id efficitur. Donec a dui
						fringilla, gravida lorem ac, semper magna. Aenean rhoncus ac
						lectus a interdum. Vivamus semper posuere dui.</p>
				</div>
				<div>
					<h3>Subscribe</h3>
					<div>
						<form>
							<input name="EMAIL" id="subs-email"
								placeholder="Email Address..." type="email">
							<button type="submit">SUBSCRIBE</button>
							<div></div>
						</form>
					</div>
					<ul>
						<li><a href="#"><i aria-hidden="true"></i></a></li>
						<li><a href="#"><i aria-hidden="true"></i></a></li>
						<li><a href="#"><i aria-hidden="true"></i></a></li>
						<li><a href="#"><i aria-hidden="true"></i></a></li>
						<li><a href="#"><i aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div>
					<h3>Contact information</h3>
					<p>Ipsum Street, Lorem Tower, MO, Columbia, 508000</p>
					<p>
						<a href="#">+01 2000 800 9999</a>
					</p>
					<p>
						<a href="#"> info@admin.com</a>
					</p>
				</div>
				<div>
					<h3>Opening hours</h3>
					<p>
						<span>Monday: </span>Closed
					</p>
					<p>
						<span>Tue-Wed :</span> 9:Am - 10PM
					</p>
					<p>
						<span>Thu-Fri :</span> 9:Am - 10PM
					</p>
					<p>
						<span>Sat-Sun :</span> 5:PM - 10PM
					</p>
				</div>
			</div>
		</div>

		<div>
			<div>
				<div>
					<div>
						<p>
							All Rights Reserved. &copy; 2018 <a href="#">Live Dinner
								Restaurant</a> Design By : <a href="#">html design</a>
						</p>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->

	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i
		aria-hidden="true"></i></a>

	<!-- ALL JS FILES -->
	<!-- ALL PLUGINS -->
	<script src="resources/js/custom.js"></script>
</body>
</html>