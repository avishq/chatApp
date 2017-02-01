<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.avish.facebook.FBConnection"%>
<%
	FBConnection fbConnection = new FBConnection();
%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<title>Avish</title>
<!--  Bootstrap Style -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!--  Font-Awesome Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
<!--  Font-Awesome Animation Style -->
<link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
<!--  Pretty Photo Style -->
<link href="assets/css/prettyPhoto.css" rel="stylesheet" />
<!--  Google Font Style -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!--  Custom Style -->
<link href="assets/css/style.css" rel="stylesheet" />
<link rel="shortcut icon" type='image/x-icon' href="images/favicon.ico"/>
<script src="js/angular.min.js"></script>
<script src="js/myScript.js"></script>
</head>

<body data-ng-app="myApp" data-ng-controller="myCtrl">
	<div class="navbar navbar-default navbar-fixed-top menu-back">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="#"> <img src="assets/img/logo.png"
					class="navbar-brand-logo " alt="" />
				</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">

					<li class="dropdown"><a href="index1.html">HOME PAGE<i
							class="fa fa-folder-open-o"></i> <span>replace this text</span>

					</a>
						<ul class="dropdown-menu dropdown-menu-left">
							<li><a href="index1.html"> <i class="fa fa-paperclip"></i>Home
									Page One <span>replace this text</span>
							</a></li>
							<li><a href="index2.html"> <i class="fa fa-comments-o"></i>Home
									Page Two <span>replace this text</span>
							</a></li>


						</ul></li>
					<li class="dropdown"><a href="our-services.html">ABOUT US<i
							class="fa fa-folder-open-o"></i> <span>replace this text</span>

					</a>
						<ul class="dropdown-menu dropdown-menu-left">
							<li><a href="our-services.html"> <i class="fa fa-edit"></i>Our
									Services <span>replace this text</span>
							</a></li>
							<li><a href="team-members.html"> <i
									class="fa fa-bullhorn"></i>Team Members <span>replace
										this text</span>
							</a></li>


						</ul></li>

					<li class="dropdown"><a href="#">PORTFOLIO<i
							class="fa fa-image"></i> <span>replace this text</span>
					</a>
						<ul class="dropdown-menu dropdown-menu-left">

							<li><a href="4column-portfolio.html"> <i
									class="fa fa-paper-plane-o"></i>Four Column <span>replace
										this text</span>
							</a></li>
							<li><a href="3column-portfolio.html"> <i
									class="fa fa-folder-open-o"></i>Three Column <span>replace
										this text</span>
							</a></li>
							<li><a href="2column-portfolio.html"> <i
									class="fa fa-bullhorn"></i>Two Column <span>replace this
										text</span>
							</a></li>
						</ul></li>


					<li class="dropdown"><a href="#">EXTRAS <i
							class="fa fa-bars"></i> <span>replace this text</span>
					</a>
						<ul class="dropdown-menu dropdown-menu-left">

							<li><a href="error.html"> <i class="fa fa-power-off"></i>404
									Error <span>replace this text</span>
							</a></li>
							<li><a href="pricing.html"> <i class="fa fa-tag"></i>Pricing
									Options <span>replace this text</span>
							</a></li>
							<li><a href="blog-home.html"> <i
									class="fa fa-map-marker"></i>Blog Home <span>replace
										this text</span>
							</a></li>
							<li><a href="blog-single.html"> <i class="fa fa-flask"></i>Blog
									Single <span>replace this text</span>
							</a></li>



						</ul></li>
					<li class="dropdown"><a href="contact.html">CONTACT <i
							class="fa fa-globe"></i> <span>replace this text</span>
					</a></li>
					<li class="dropdown"><a href="<%=fbConnection.getFBAuthUrl()%>">FaceBook
					</a></li>
				</ul>
			</div>

		</div>
	</div>
	<!--./ Top Menu End -->
	<div class="div-social-top">

		<i class="fa fa-globe "></i>E-mail: avish92@gmail.com | <i
			class="fa fa-mobile "></i>Call: : +000 - 123 -45678 | <i
			class="fa fa-map-marker "></i>Country : INDIA &nbsp; <a href="#">
			<i class="fa fa-facebook-square "></i>
		</a> <a href="#"> <i class="fa fa-linkedin-square "></i>
		</a> <a href="#"> <i class="fa fa-pinterest-square "></i>
		</a>


	</div>
	<!--./ Social Div End -->
	<div id="main-slider">

		<div id="carousel-example" class="carousel slide" data-ride="carousel">

			<div class="carousel-inner">
				<div class="item active">

					<img src="assets/img/1.jpg" alt="" />
					<div class="carousel-caption ">
						<h4 class="back-light">Aenean faucibus luctus enim. Duis quis
							sem risu suspend lacinia elementum nunc.</h4>
					</div>
				</div>
				<div class="item">
					<img src="assets/img/2.jpg" alt="" />
					<div class="carousel-caption ">
						<h4 class="back-light">Faucibus luctus enim. Duis quis sem
							risu suspend lacinia elementum nunc.</h4>
					</div>
				</div>
				<div class="item">
					<img src="assets/img/3.jpg" alt="" />
					<div class="carousel-caption ">
						<h4 class="back-light">Cenean faucibus luctus enim. Duis quis
							sem risu suspend lacinia elementum nunc.</h4>
					</div>
				</div>
			</div>
			<!--INDICATORS-->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example" data-slide-to="1"></li>
				<li data-target="#carousel-example" data-slide-to="2"></li>
			</ol>
			<!--PREVIUS-NEXT BUTTONS-->
			<a class="left carousel-control" href="#carousel-example"
				data-slide="prev"> <i
				class="fa fa-angle-left fa-3x control-icon clr-main"></i>
			</a> <a class="right carousel-control" href="#carousel-example"
				data-slide="next"> <i
				class="fa fa-angle-right fa-3x control-icon clr-main"></i>
			</a>
		</div>

	</div>
	<!--./ Main Slider End -->
	<div id="welocme-note">

		<div class="welcome-div">
			<i class="fa fa-paper-plane-o fa-2x"></i><span>WELCOME GUEST,
				HOW YOU FEELING ? </span>
		</div>

	</div>
	<!--./ Welcome Section End -->
	
	<section id="home-service" style="margin-top: 20px;">
		<div class="container">
			<div class="row ">
				<div class="col-lg-4 col-md-4  col-sm-4 ">
					<i class="fa fa-desktop fa-5x  icon-round  faa-ring animated"></i>
					<h4>
						<strong>Responsive Design</strong>
					</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Curabitur nec nisl odio. Mauris vehicula at nunc id posuere. Lorem
						ipsum dolor sit amet, consectetur adipiscing elit.</p>
				</div>
				<div class="col-lg-4 col-md-4  col-sm-4">
					<i
						class="fa fa-paper-plane-o  fa-5x icon-round  faa-pulse animated"></i>
					<h4>
						<strong>Easy To Customize</strong>
					</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Curabitur nec nisl odio. Mauris vehicula at nunc id posuere. Lorem
						ipsum dolor sit amet, consectetur adipiscing elit.</p>
				</div>
				<div class="col-lg-4 col-md-4  col-sm-4">
					<i class="fa fa-bullhorn  fa-5x icon-round faa-horizontal animated"></i>
					<h4>
						<strong>Clean Coding Used </strong>
					</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Curabitur nec nisl odio. Mauris vehicula at nunc id posuere. Lorem
						ipsum dolor sit amet, consectetur adipiscing elit.</p>
				</div>

			</div>

		</div>
	</section>
	<!--./ Home Service End -->
	<section id="vedio-sec">
		<div class="container">
			<div class="row pad-top-botm">
				<div class="col-lg-6 col-md-6">
					<h2>What Is Special About Us ?</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Curabitur nec nisl odio. Mauris vehicula at nunc id posuere. Lorem
						ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum
						dolor sit amet, consectetur adipiscing elit. Curabitur nec nisl
						odio. Mauris vehicula at nunc id posuere.</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Curabitur nec nisl odio. Mauris vehicula at nunc id posuere. Lorem
						ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum
						dolor sit amet, consectetur adipiscing elit.</p>
					<button class="btn btn-primary" type="button">
						Read Full Details <span class="badge">+</span>
					</button>
					<br /> <br />
				</div>

				<div class="col-lg-6 col-md-6">
					<!-- <iframe class="vedio-style" src="http://www.youtube.com/embed/VpZmIiIXuZ0" ></iframe> -->
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/I04eyDzeh4g" frameborder="0"
						allowfullscreen></iframe>
				</div>
			</div>
		</div>
	</section>
	<!--./ vedio-sec End -->
	<div class="middle-section">
		<div class="container">
			<div class="row ">
				<div class="col-lg-12 col-md-12 ">
					<h1>Clients Testimonials</h1>
					<div id="testimonials" class="carousel slide" data-ride="carousel">

						<ol class="carousel-indicators">
							<li data-target="#testimonials" data-slide-to="0" class=""></li>
							<li data-target="#testimonials" data-slide-to="1" class=""></li>
							<li data-target="#testimonials" data-slide-to="2" class="active"></li>
						</ol>

						<div class="carousel-inner">
							<div class="item">
								<div class="container center">
									<div
										class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 slide-custom">

										<h4>
											<i class="fa fa-quote-left"></i>Lorem ipsum dolor sit amet,
											consectetur adipiscing elit onec molestie non sem vel
											condimentum. <i class="fa fa-quote-right"></i>
										</h4>
										<div class="user-img pull-right">
											<img src="assets/img/user.jpg" alt=""
												class="img-u image-responsive" />
										</div>
										<h5 class="pull-right">
											<strong class="c-black">Ashwani Mishra</strong>
										</h5>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="container center">
									<div
										class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 slide-custom">
										<h4>
											<i class="fa fa-quote-left"></i>Aenean faucibus luctus enim.
											Duis quis sem risu suspend lacinia elementum nunc. <i
												class="fa fa-quote-right"></i>
										</h4>
										<div class="user-img pull-right">
											<img src="assets/img/user2.jpg" alt=""
												class="img-u image-responsive" />
										</div>
										<h5 class="pull-right">
											<strong class="c-black">Mohit Kumar</strong>
										</h5>
									</div>
								</div>
							</div>
							<div class="item active">
								<div class="container center">
									<div
										class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 slide-custom">
										<h4>
											<i class="fa fa-quote-left"></i>Sed ultricies, libero ut
											adipiscing fringilla, ante elit luctus lorem, a egestas dui
											metus a arcu condimentum. <i class="fa fa-quote-right"></i>
										</h4>
										<div class="user-img pull-right">
											<img src="assets/img/user.jpg" alt=""
												class="img-u image-responsive" />
										</div>
										<h5 class="pull-right">
											<strong class="c-black">Sed ultricies</strong>
										</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--./ Testimonials End -->

	<section id="service-info">
		<div class="container">
			<div class="row text-center">
				<div class="col-lg-12 col-md-12">
					<h3 class="clr-main">
						<strong>OUR SERVICE LIST </strong>
					</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit onec
						molestie non sem vel condimentum.</p>
					<br /> <br />
				</div>
			</div>
			<div class="row pad-top-botm">
				<div class="col-lg-4 col-md-4">
					<div class="media">
						<div class="pull-left">
							<i class=" fa fa-folder-open-o fa-4x rotate-icon "></i>

						</div>
						<div class="media-body">
							<h3 class="media-heading">Easy To code</h3>
							<p>Aenean faucibus luctus enim. Duis quis sem risu suspend
								lacinia elementum nunc. Aenean faucibus luctus enim. Duis quis
								sem risu suspend lacinia elementum nunc.</p>

						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="media">
						<div class="pull-left">
							<i class="fa fa-power-off fa-4x rotate-icon "></i>
						</div>
						<div class="media-body">
							<h3 class="media-heading">Best To Use</h3>
							<p>Aenean faucibus luctus enim. Duis quis sem risu suspend
								lacinia elementum nunc. Aenean faucibus luctus enim. Duis quis
								sem risu suspend lacinia elementum nunc.</p>

						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="media">
						<div class="pull-left">
							<i class="fa fa-paper-plane-o fa-4x rotate-icon "></i>
						</div>
						<div class="media-body">
							<h3 class="media-heading">Customize Friendly</h3>
							<p>Aenean faucibus luctus enim. Duis quis sem risu suspend
								lacinia elementum nunc. Aenean faucibus luctus enim. Duis quis
								sem risu suspend lacinia elementum nunc.</p>

						</div>
					</div>
				</div>
			</div>

			<div class="row pad-top-botm ">
				<div class="col-lg-6 col-md-6">
					<div class="alert alert-info transparent-bk upfront-trans">
						<i class="fa fa-edit fa-2x "></i>Lorem ipsum dolor sit amet,
						consectetur adipiscing elit.

					</div>

					<hr />
					<iframe src="http://player.vimeo.com/video/18312392"
						class="vedio-style"></iframe>
				</div>

				<div class="col-lg-6 col-md-6">
					<div class="col-lg-6 col-md-6">

						<div class="alert alert-success transparent-bk upfront-trans">
							<i class="fa fa-folder-open-o fa-2x"></i>Lorem ipsum dolor sit
							amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem
							ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum
							dolor sit amet, consectetur adipiscing elit.
						</div>


					</div>
					<div class="col-lg-6 col-md-6">

						<iframe
							src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fenvato&amp;width=235&amp;height=258&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false&amp;appId=438889712801266"
							style="border: none; overflow: hidden; width: 235px; height: 258px;"></iframe>

					</div>
					<div class="col-lg-12 col-md-12">
						<div class="alert alert-info transparent-bk upfront-trans">
							<i class="fa fa-info fa-2x "></i><b>JUST A SMALL INFORMATION
								: </b>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.

								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem
								ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum
								dolor sit amet, consectetur adipiscing elit.</p>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!--./ Service info Section End -->
	<div class="just-stats">
		<div class="container">
			<div class="row ">
				<div class="col-lg-3 col-md-3 ">
					<div class="stats-div">
						<i class="fa fa-rocket fa-5x"></i>
						<h3>3000+</h3>
						<h4>Projects</h4>
					</div>
				</div>


				<div class="col-lg-3 col-md-3 ">
					<div class="stats-div">
						<i class="fa fa-globe fa-5x"></i>
						<h3>149+</h3>
						<h4>Countries</h4>
					</div>

				</div>
				<div class="col-lg-3 col-md-3 ">

					<div class="stats-div">
						<i class="fa fa-building fa-5x"></i>
						<h3>250 +</h3>
						<h4>Offices</h4>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 ">
					<div class="stats-div">
						<i class="fa fa-comments-o fa-5x"></i>
						<h3>1305+</h3>
						<h4>Clients</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--./ stats div end -->
	<div id="media-sec">
		<div class="container">

			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="text-center">
						<h3>WHAT MEDIA SAY'S ABOUT US</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
							onec molestie non sem vel condimentum.</p>
						<br /> <br />
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<blockquote>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
							onec molestie non sem vel condimentum.</p>
						<small>Consectetur adipiscing elit</small>
					</blockquote>

				</div>
				<div class="col-lg-6 col-md-6">
					<blockquote>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
							onec molestie non sem vel condimentum.</p>
						<small>Consectetur adipiscing elit</small>
					</blockquote>

				</div>
			</div>

		</div>

	</div>
	<!--./ Media Section End -->
	<div id="footer-sec">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4" id="about-ftr">
					<i class="fa fa-building fa-2x"></i> <span>A Small
						Introduction</span> <small>replace this dummy text with your text</small>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Praesent suscipit sem vel ipsum elementum venenatis. Lorem ipsum
						dolor sit amet, consectetur adipiscing elit. Praesent suscipit sem
						vel ipsum elementum venenatis. Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Praesent suscipit sem vel ipsum
						elementum venenatis.</p>
				</div>
				<div class="col-lg-4 col-md-4">
					<i class="fa fa-paper-plane-o fa-2x"></i> <span>From the
						blog</span> <small>replace this dummy text with your text</small>
					<div id="blog-footer-div">
						<div class="media">
							<div class="pull-left">
								<img src="assets/img/user2.jpg" class="img-circle" alt="" />
							</div>
							<div class="media-body">
								<span class="media-heading"><a href="blog-home.html">Pellentesque
										habitant morbi tristique</a></span> <small class="muted">Posted
									17 June 2014</small>
							</div>
						</div>
						<div class="media">
							<div class="pull-left">
								<img src="assets/img/user.jpg" class="img-circle" alt="" />
							</div>
							<div class="media-body">
								<span class="media-heading"><a href="blog-home.html">Pellentesque
										habitant morbi tristique</a></span> <small class="muted">Posted
									27 June 2014</small>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-4">
					<i class="fa fa-sliders fa-2x"></i> <span>Our location</span> <small>replace
						this dummy text with your text</small> 234/90, Newyork Street , USA <br />
					Call: 456-0980-0000 <br /> mail: info@domain.com <br /> <br />
					<form role="form">
						<div class="input-group">
							<input type="text" class="form-control" autocomplete="off"
								placeholder="Enter your email" ng-model="emailValue" required />
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button"
									ng-click="submitEmail()">Subscribe!</button>
							</span>
						</div>
						<div class="alert" style="display:none;" id="emailSubmitResponse">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--./ footer-sec  End -->
	<div id="footser-end">
		<div class="container">

			<div class="row">
				<div class="col-lg-12 col-md-12">
					2017 All Rights Reserved @Avish
				</div>
			</div>

		</div>
	</div>
	<!--./ footer-end End -->
	<!--  Jquery Core Script -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!--  Core Bootstrap Script -->
	<script src="assets/js/bootstrap.js"></script>
	<!--  Custom Scripts -->
	<script src="assets/js/custom.js"></script>

</body>
</html>
