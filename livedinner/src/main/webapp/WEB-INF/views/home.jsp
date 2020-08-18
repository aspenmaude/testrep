<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!DOCTYPE html>
<html lang="en"><!-- Basic -->
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
    <!-- <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png"> -->

	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">    
    <!-- Custom CSS for each page -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<!-- Start header -->
	<header>
		<nav>
			<div class="container">
				<a href="index.html">
					<img src="images/logo.png" alt="" />
				</a>
				<button type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span></span>
				</button>
				<div id="navbars-rs-food">
					<ul>
						<li><a href="/workShop/home">Home</a></li>
						<li><a href="/workShop/Menu/list">Menu</a></li>
						<li><a href="/workShop/about">About</a></li>
						<li> <!-- main menu-->
							<a href="#" id="dropdown-a" data-toggle="dropdown" onclick="view('page')">Pages</a><br/>
							<div class="submenu" id="page" aria-labelledby="dropdown-a">
								<a href="/workShop/page/reservation">Reservation</a><br/>
								<a href="/workShop/page/stuff">Stuff</a><br/>
								<a href="/workShop/page/gallery">Gallery</a>
							</div>
						</li>
						<li>	<!-- main menu-->
							<a href="#" id="dropdown-a" data-toggle="dropdown" onclick="view('blog')">Blog</a><br/>
							<div class="submenu" id="blog" aria-labelledby="dropdown-a">
								<a href="/workShop/blog">blog</a><br/>
								<a href="/workShop/blogdetails">blogSingle</a>
							</div>
						</li>
						<li><a href="/workShop/Contact/list">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	
	<!-- Start slides -->

	<div id="slides">
		<ul class="slideshow-container" >
			<li class="mySlides fade">
				<img src="images/slider-01.jpg" alt="">
				<div class="container">
					<div class="content">
						<div >
							<h1 ><strong>Welcome To <br> Live Dinner Restaurant</strong></h1>
							<p >See how your users experience your website in realtime or view  <br> 
							trends to see any changes in performance over time.</p>
							<p><a href="#">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="mySlides fade">
				<img src="images/slider-02.jpg" alt="">
				<div class="container">
					<div class="content">
						<div>
							<h1 ><strong>Welcome To <br> Live Dinner Restaurant</strong></h1>
							<p >See how your users experience your website in realtime or view  <br> 
							trends to see any changes in performance over time.</p>
							<p><a href="#">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="mySlides fade">
				<img src="images/slider-03.jpg" alt="">
				<div class="container">
					<div class="content" >
						<div >
							<h1 ><strong>Welcome To <br> Yamifood Restaurant</strong></h1>
							<p >See how your users experience your website in realtime or view  <br> 
							trends to see any changes in performance over time.</p>
							<p><a href="#">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>  <!-- &#10094; Characters of HTML-->
		<a class="next" onclick="plusSlides(1)">&#10095;</a>
		<div>
			<!-- <a href="#"><i aria-hidden="true"></i></a>
			<a href="#"><i aria-hidden="true"></i></a> -->
			<span class="dot" onclick="currentSlide(1)"></span> 
			<span class="dot" onclick="currentSlide(2)"></span> 
			<span class="dot" onclick="currentSlide(3)"></span> 
		</div>
	</div>
	<!-- End slides -->
	
	<!-- Start About -->
	<div class="about-box">
		<div class="container" >
			<div class="about-content">
				<div class="about-content-left">
					<div>
						<h1>Welcome To <span>Live Dinner Restaurant</span></h1>
						<h4>Little Story</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque auctor suscipit feugiat. Ut at pellentesque ante, sed convallis arcu. Nullam facilisis, eros in eleifend luctus, odio ante sodales augue, eget lacinia lectus erat et sem. </p>
						<p>Sed semper orci sit amet porta placerat. Etiam quis finibus eros. Sed aliquam metus lorem, a pellentesque tellus pretium a. Nulla placerat elit in justo vestibulum, et maximus sem pulvinar.</p>
						<a href="#">Reservation</a>
					</div>
				</div>
				<div class="about-content-right">
					<img src="images/about-img.jpg" alt="" >
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->
	
	<!-- Start QT -->
	<div class="QT-box">
		<div class="container" >
			<div class="QT-content">
				<p>
					" If you're not the one cooking, stay out of the way and compliment the chef. "
				</p>
				<span>Michael Strahan</span>
			</div>
		</div>
	</div>
	<!-- End QT -->
	
	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container" >
			<div class="menu-box-title">
					<div >
						<h2>Special Menu</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
			</div>
			
			<div class="menu-box-image">
				<div class="menu-box-image-left" >
					<div id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="pill" id="v-pills-home" data-toggle="pill"  role="tab" aria-controls="v-pills-home" aria-selected="true" onclick="showMenuBox('v-pills-home')">All</a><br/>
						<a class="pill" id="v-pills-profile" data-toggle="pill"  role="tab" aria-controls="v-pills-profile" aria-selected="false" onclick="showMenuBox('v-pills-profile')">Drinks</a><br/>
						<a class="pill" id="v-pills-messages" data-toggle="pill"  role="tab" aria-controls="v-pills-messages" aria-selected="false" onclick="showMenuBox('v-pills-messages')">Lunch</a><br/>
						<a class="pill" id="v-pills-settings" data-toggle="pill"  role="tab" aria-controls="v-pills-settings" aria-selected="false" onclick="showMenuBox('v-pills-settings')">Dinner</a>
					</div>
				</div>
				
				<div class="menu-box-image-right">
					<div id="v-pills-tabContent">
						<div  class="menubox" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
							<div class="image123">
								<div class="image image1">
									<img src="images/img-01.jpg" alt="Image">
									<div class="menu-box-content" id="ct1">
										<h4>Special Drinks 1</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $7.79</h5>
									</div>
								</div>
								
								<div class="image image2">
									<img src="images/img-02.jpg" alt="Image">
									<div class="menu-box-content" id="ct2">
										<h4>Special Drinks 2</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $9.79</h5>
									</div>
								</div>
								
								<div class="image image3" >
									<img src="images/img-03.jpg" alt="Image">
									<div class="menu-box-content" id="ct3">
										<h4>Special Drinks 3</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $10.79</h5>
									</div>
								</div>
							</div>

							<div class="image456" >
								<div class="image image4">
									<img src="images/img-04.jpg" alt="Image">
									<div class="menu-box-content" id="ct4">
										<h4>Special Lunch 1</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $15.79</h5>
									</div>
								</div>
	
								<div class="image image5">
									<img src="images/img-05.jpg" alt="Image">
									<div class="menu-box-content" id="ct5">
										<h4>Special Lunch 2</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $18.79</h5>
									</div>
								</div>
								
								<div class="image image6">
									<img src="images/img-06.jpg" alt="Image">
									<div class="menu-box-content" id="ct6">
										<h4>Special Lunch 3</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $20.79</h5>
									</div>
								</div>
							</div>

							<div class="image789" >
								<div class="image image7">
									<img src="images/img-07.jpg" alt="Image">
									<div class="menu-box-content" id="ct7">
										<h4>Special Dinner 1</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $25.79</h5>
									</div>
								</div>
								
								<div class="image image8">
									<img src="images/img-08.jpg" alt="Image">
									<div class="menu-box-content" id="ct8">
										<h4>Special Dinner 2</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $22.79</h5>
									</div>
								</div>
								
								<div class="image image9">
									<img src="images/img-09.jpg" alt="Image">
									<div class="menu-box-content" id="ct9">
										<h4>Special Dinner 3</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $24.79</h5>
									</div>
								</div>
							</div>
							
						</div>

						<div class="menubox" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab" style="display: none;">
							<div class="image123">
								<div class="image image1">
									<img src="images/img-01.jpg" alt="Image">
									<div class="menu-box-content" >
										<h4>Special Drinks 1</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $7.79</h5>
									</div>
								</div>
								
								<div class="image image2">
									<img src="images/img-02.jpg" alt="Image">
									<div class="menu-box-content">
										<h4>Special Drinks 2</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $9.79</h5>
									</div>
								</div>
								
								<div class="image image3" >
									<img src="images/img-03.jpg" alt="Image">
									<div class="menu-box-content">
										<h4>Special Drinks 3</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $10.79</h5>
									</div>
								</div>
							</div>
							
						</div>

						<div class="menubox" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab" style="display: none;">
							<div class="image456" >
								<div class="image image4">
									<img src="images/img-04.jpg" alt="Image">
									<div class="menu-box-content">
										<h4>Special Lunch 1</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										-----------------------------------------------------
										<h5> $15.79</h5>
									</div>
								</div>
	
								<div class="image image5">
									<img src="images/img-05.jpg" alt="Image">
									<div class="menu-box-content">
										<h4>Special Lunch 2</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $18.79</h5>
									</div>
								</div>
								
								<div class="image image6">
									<img src="images/img-06.jpg" alt="Image">
									<div class="menu-box-content">
										<h4>Special Lunch 3</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $20.79</h5>
									</div>
								</div>
							</div>
						</div>

						<div class="menubox" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab" style="display: none;">
							<div class="image789" >
								<div class="image image7">
									<img src="images/img-07.jpg" alt="Image">
									<div class="menu-box-content">
										<h4>Special Dinner 1</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $25.79</h5>
									</div>
								</div>
								
								<div class="image image8">
									<img src="images/img-08.jpg" alt="Image">
									<div class="menu-box-content">
										<h4>Special Dinner 2</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $22.79</h5>
									</div>
								</div>
								
								<div class="image image9">
									<img src="images/img-09.jpg" alt="Image">
									<div class="menu-box-content">
										<h4>Special Dinner 3</h4>
										<p>Sed id magna vitae eros sagittis euismod.</p>
										----------------------------------------------------
										<h5> $24.79</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<!-- End Menu -->
	
	<!-- Start Gallery -->
	<div class="gallery" >
		<div class="container">
			<div class="gallery-title">
				<div >
					<h2>Gallery</h2>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
				</div>
			</div>

			<div class="gallary-box">
				<div>
					<div >
						<a href="images/gallery-img-01.jpg">
							<img src="images/gallery-img-01.jpg" alt="Gallery Images">
						</a>
					</div>
					<div >
						<a href="images/gallery-img-02.jpg">
							<img src="images/gallery-img-02.jpg" alt="Gallery Images">
						</a>
					</div>
					<div >
						<a href="images/gallery-img-03.jpg">
							<img src="images/gallery-img-03.jpg" alt="Gallery Images">
						</a>
					</div>

					<div >
						<a href="images/gallery-img-04.jpg">
							<img src="images/gallery-img-04.jpg" alt="Gallery Images">
						</a>
					</div>
					<div >
						<a href="images/gallery-img-05.jpg">
							<img src="images/gallery-img-05.jpg" alt="Gallery Images">
						</a>
					</div> 
					<div >
						<a href="images/gallery-img-06.jpg">
							<img src="images/gallery-img-06.jpg" alt="Gallery Images">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Gallery -->
	
	<!-- Start Customer Reviews -->
	<div class="Customer-Reviews">
		<div class="container" >
			<div class="Customer-Reviews-Title">
				<div >
					<div>
						<h2>Customer Reviews</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
				</div>
			</div>
			<div class="Customer-Reviews-slides" >
				<div>
					<div id="reviews" data-ride="carousel">
						<div>
							<div>
								<div>
									<img src="images/quotations-button.png" alt="">
								</div>
								<h5><strong >Paul Mitchel</strong></h5>
								<h6>Web Developer</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
							</div>
							<div >
								<div>
									<img src="images/quotations-button.png" alt="">
								</div>
								<h5><strong>Steve Fonsi</strong></h5>
								<h6>Web Designer</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
							</div>
							<div >
								<div>
									<img src="images/quotations-button.png" alt="">
								</div>
								<h5><strong >Daniel vebar</strong></h5>
								<h6>Seo Analyst</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
							</div>
						</div>
						<a href="#reviews" role="button" data-slide="prev">
							<i aria-hidden="true"></i>
							<span >Previous</span>
						</a>
						<a href="#reviews" role="button" data-slide="next">
							<i aria-hidden="true"></i>
							<span>Next</span>
						</a>
                    </div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Customer Reviews -->

	
	<!-- Start Contact info -->
	<div>
		<div >
			<div >
				<div>
					<i></i>
					<div>
						<h4>Phone</h4>
						<p>
							+01 123-456-4590
						</p>
					</div>
				</div>
				<div>
					<i></i>
					<div>
						<h4>Email</h4>
						<p>
							yourmail@gmail.com
						</p>
					</div>
				</div>
				<div>
					<i></i>
					<div>
						<h4>Location</h4>
						<p>
							800, Lorem Street, US
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->
	
	<!-- Start Footer -->
	<footer>
		<div >
			<div >
				<div>
					<h3>About Us</h3>
					<p>Integer cursus scelerisque ipsum id efficitur. Donec a dui fringilla, gravida lorem ac, semper magna. Aenean rhoncus ac lectus a interdum. Vivamus semper posuere dui.</p>
				</div>
				<div>
					<h3>Subscribe</h3>
					<div>
						<form>
							<input name="EMAIL" id="subs-email" placeholder="Email Address..." type="email">
							<button type="submit" >SUBSCRIBE</button>
							<div ></div>
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
					<p><a href="#">+01 2000 800 9999</a></p>
					<p><a href="#"> info@admin.com</a></p>
				</div>
				<div>
					<h3>Opening hours</h3>
					<p><span>Monday: </span>Closed</p>
					<p><span>Tue-Wed :</span> 9:Am - 10PM</p>
					<p><span>Thu-Fri :</span> 9:Am - 10PM</p>
					<p><span>Sat-Sun :</span> 5:PM - 10PM</p>
				</div>
			</div>
		</div>
		
		<div>
			<div >
				<div >
					<div>
						<p>All Rights Reserved. &copy; 2018 <a href="#">Live Dinner Restaurant</a> Design By : 
					<a href="#">html design</a></p>
					</div>
				</div>
			</div>
		</div>
		
	</footer>
	<!-- End Footer -->
	
	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i aria-hidden="true"></i></a>

	<!-- ALL JS FILES -->
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
</body>
</html>