<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>


<script>
	$(function() {
		var responseMessage = "<c:out value="${msg}" />";
		if (responseMessage != "") {
			alert(responseMessage)
		}
	})

	$(function() {
		var session = "<c:out value="${user.getName}" />";
		if (session != "") {
			$("#join").remove();
			$("#login").remove();
		} else {
			$("#home").remove();
			$("#logout").remove();
		}
	});

	function logout() {
		if (confirm("로그아웃 하시겠습니까?")) {
			location.href = "logout.do";
		} else {
			return;
		}
	}
</script>
</head>

<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">

	<nav
		class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light"
		id="pb-navbar">
		<div class="container">
			<a href="main.do" class="navbar-brand">Andamiro</a>
			<button class="navbar-toggler ml-auto" type="button"
				data-toggle="collapse" data-target="#probootstrap-navbar"
				aria-controls="probootstrap-navbar" aria-expanded="false"
				aria-label="Toggle navigation">
				<span><i class="ion-navicon"></i></span>
			</button>
			<div class="collapse navbar-collapse" id="probootstrap-navbar">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link active"
						href="#section-home">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="#section-features">Features</a></li>
					<li class="nav-item"><a href="#" onclick="logout();"
						class="nav-link" id="logout">Logout</a></li>
					<li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0"><a
						class="nav-link" href="join_admin.do" target="_blank"><span
							class="pb_rounded-4 px-4">Join</span></a></li>
				</ul>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>
	</nav>
	<!-- END nav -->

	<section
		class="pb_cover_v3 overflow-hidden cover-bg-indigo cover-bg-opacity text-left pb_gradient_v1 pb_slant-light"
		id="section-home">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-md-6">
					<h2 class="heading mb-3">Andamiro_POS</h2>
					<div class="sub-heading">
						<a class="btn btn-success btn-lg pb_btn-pill smoothscroll"
							href="#section-pricing"><span
							class="pb_font-14 text-uppercase pb_letter-spacing-1">See
								Pricing</span></a>
					</div>
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-5 relative align-self-center">

					<form action="login.do" method="post"
						class="bg-white rounded pb_form_v1">
						<h2 class="mb-4 mt-0 text-center">admin_Login</h2>
						<div class="form-group">
							<input type="text" class="form-control pb_height-50 reverse"
								name="id" placeholder="아이디를 입력해 주세요." required autofocus>
						</div>
						<div class="form-group">
							<input type="password" class="form-control pb_height-50 reverse"
								name="pw" placeholder="비밀번호를 입력해 주세요." required autofocus>
						</div>

						<div class="form-group">
							<input type="submit"
								class="btn btn-primary btn-lg btn-block pb_btn-pill  btn-shadow-blue"
								value="Login">
						</div>
					</form>

				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer class="bg- py-3 fixed-bottom">
		<div class="small text-center text-muted">Copyright &copy; 2019
			- Andamiro</div>
	</footer>
	<!-- END Footer -->


	<!-- 부트스트랩 스크립트 지우면 사망 -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/jquery.mb.YTPlayer.min.js"></script>
	<script src="assets/js/jquery.waypoints.min.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/main.js"></script>

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- 스크립트 모음 -->
</body>
</html>