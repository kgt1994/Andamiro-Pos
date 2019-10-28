<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>andamiro_POS index</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700"
	rel="stylesheet">

<link rel="stylesheet" href="./resources/fonts/icomoon/style.css">

<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/magnific-popup.css">
<link rel="stylesheet" href="./resources/css/jquery-ui.css">
<link rel="stylesheet" href="./resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="./resources/css/owl.theme.default.min.css">

<link rel="stylesheet" href="./resources/css/bootstrap-datepicker.css">

<link rel="stylesheet"
	href="./resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="./resources/css/aos.css">

<link rel="stylesheet" href="./resources/css/style.css">

</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<div class="site-wrap" id="home-section">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>


		<header class="site-navbar js-sticky-header site-navbar-target"
			role="banner">

			<div class="container">
				<div class="row align-items-center position-relative">
					<div class="site-logo">
						<a href="index.do" class="text-black"><span
							class="text-primary">Andamiro</span></a>
					</div>

					<nav class="site-navigation text-center ml-auto" role="navigation">

						<ul
							class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
							<!-- <li><a href="#investors-section" class="nav-link">여기 나중에 사장이 볼거</a></li> -->
							<li><a href="join_admin.do" class="nav-link">Join</a></li>
							<li><a href="#" class="nav-link" data-toggle="modal"
								data-target="#exampleModal" data-whatever="@mdo">Login </a></li>
						</ul>
					</nav>

					<div class="toggle-button d-inline-block d-lg-none">
						<a href="#"
							class="site-menu-toggle py-5 js-menu-toggle text-black"><span
							class="icon-menu h3"></span></a>
					</div>
				</div>
			</div>

		</header>

		<!-- 로그인 모달  -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">

						<h4 class="modal-title" id="exampleModalLabel">로그인</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
					
						<form action="login.do" method="post">
							<div class="form-group">
								<label for="recipient-name" class="control-label"></label> 
								<input type="text" class="form-control" name="id"
									placeholder="아이디를 입력해 주세요." required autofocus>
							</div>
							<div class="form-group">
								<label for="message-text" class="control-label"></label> 
								<input type="password" class="form-control" name="pw"
									placeholder="비밀번호를 입력해 주세요." required autofocus>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
								<input class="btn btn-success" type="submit" value="login">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


		<div class="owl-carousel slide-one-item">
			<div class="site-section-cover overlay img-bg-section"
				style="background-image: url('./resources/image/hero_1.jpg');">
				<div class="container">
					<div class="row align-items-center justify-content-center">
						<div class="col-md-12 col-lg-7 text-center">
							<h1>장점이 뭐가 있을까 윤수야</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Vel minima quasi quisquam, alias doloremque magni.</p>
							<p>
								<a href="#" class="btn btn-white-outline border-w-2 btn-md">Get
									in touch</a>
							</p>
						</div>
					</div>
				</div>

			</div>

			<div class="site-section-cover overlay img-bg-section"
				style="background-image: url('./resources/image/hero_2.jpg');">
				<div class="container">
					<div class="row align-items-center justify-content-center">
						<div class="col-md-12 col-lg-7 text-center">
							<h1>장점 입좀 털어바</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Vel minima quasi quisquam, alias doloremque magni.</p>
							<p>
								<a href="#" class="btn btn-white-outline border-w-2 btn-md">Get
									in touch</a>
							</p>
						</div>
					</div>
				</div>

			</div>


		</div>


		<div class="pb-5" style="position: relative; z-index: 8;">
			<div class="container">
				<div class="row" style="margin-top: -50px;">
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
						<img src="./resources/image/img_1.jpg" alt="Image"
							class="img-fluid mb-3">
						<h3 class="text-primary h4 mb-2">Business Analytics</h3>
						<p>Accusantium dignissimos voluptas rem consequatur ratione
							illo sit quasi.</p>
					</div>
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
						<img src="./resources/image/img_2.jpg" alt="Image"
							class="img-fluid mb-3">
						<h3 class="text-primary h4 mb-2">Investment Solutions</h3>
						<p>Praesentium magnam pariatur quae necessitatibus eligendi
							voluptate ducimus.</p>
					</div>
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
						<img src="./resources/image/img_3.jpg" alt="Image"
							class="img-fluid mb-3">
						<h3 class="text-primary h4 mb-2">Individual Approach</h3>
						<p>Accusantium dignissimos voluptas rem consequatur ratione
							illo sit quasi.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section bg-light" id="services-section">
			<div class="container">
				<div class="row mb-5">
					<div class="col-12">
						<div class="block-heading-1">
							<h2>Our Services</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-lg-4 mb-4">
						<span class="icon-signal d-block mb-3 display-3 text-secondary"></span>
						<h3 class="text-primary h4 mb-2">Business Analytics</h3>
						<p>Accusantium dignissimos voluptas rem consequatur ratione
							illo sit quasi.</p>
					</div>
					<div class="col-md-6 col-lg-4 mb-4">
						<span class="icon-anchor d-block mb-3 display-3 text-secondary"></span>
						<h3 class="text-primary h4 mb-2">Investment Solutions</h3>
						<p>Praesentium magnam pariatur quae necessitatibus eligendi
							voluptate ducimus.</p>
					</div>
					<div class="col-md-6 col-lg-4 mb-4">
						<span class="icon-magnet d-block mb-3 display-3 text-secondary"></span>
						<h3 class="text-primary h4 mb-2">Individual Approach</h3>
						<p>Accusantium dignissimos voluptas rem consequatur ratione
							illo sit quasi.</p>
					</div>

					<div class="col-md-6 col-lg-4 mb-4">
						<span class="icon-briefcase d-block mb-3 display-3 text-secondary"></span>
						<h3 class="text-primary h4 mb-2">Business Analytics</h3>
						<p>Accusantium dignissimos voluptas rem consequatur ratione
							illo sit quasi.</p>
					</div>
					<div class="col-md-6 col-lg-4 mb-4">
						<span class="icon-money d-block mb-3 display-3 text-secondary"></span>
						<h3 class="text-primary h4 mb-2">Investment Solutions</h3>
						<p>Praesentium magnam pariatur quae necessitatibus eligendi
							voluptate ducimus.</p>
					</div>
					<div class="col-md-6 col-lg-4 mb-4">
						<span class="icon-umbrella d-block mb-3 display-3 text-secondary"></span>
						<h3 class="text-primary h4 mb-2">Individual Approach</h3>
						<p>Accusantium dignissimos voluptas rem consequatur ratione
							illo sit quasi.</p>
					</div>

				</div>
			</div>
		</div>

		<footer class="bg- py-3 fixed-bottom">
			<div class="container">
				<div class="small text-center text-muted">
					<p>
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						Andamiro1111
					</p>
				</div>
			</div>
		</footer>
	</div>

	<script src="./resources/js/jquery-3.3.1.min.js"></script>
	<script src="./resources/js/jquery-ui.js"></script>
	<script src="./resources/js/popper.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/jquery.magnific-popup.min.js"></script>
	<script src="./resources/js/jquery.sticky.js"></script>
	<script src="./resources/js/jquery.waypoints.min.js"></script>
	<script src="./resources/js/jquery.animateNumber.min.js"></script>
	<script src="./resources/js/aos.js"></script>

	<script src="./resources/js/main.js"></script>

</body>
</html>