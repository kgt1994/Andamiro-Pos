<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Free Bootstrap 4 Template by uicookies.com">
<meta name="keywords"
	content="Free website templates, Free bootstrap themes, Free template, Free bootstrap, Free website template">

<link
	href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600|Montserrat:200,300,400"
	rel="stylesheet">

<link rel="stylesheet" href="./resources/css/bootstrap/bootstrap.css">
<link rel="stylesheet"
	href="./resources/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="./resources/fonts/law-icons/font/flaticon.css">

<link rel="stylesheet"
	href="./resources/fonts/fontawesome/css/font-awesome.min.css">


<link rel="stylesheet" href="./resources/css/slick.css">
<link rel="stylesheet" href="./resources/css/slick-theme.css">

<link rel="stylesheet" href="./resources/css/helpers.css">
<link rel="stylesheet" href="./resources/css/style.css">
<link rel="stylesheet" href="./resources/css/landing-2.css">
</head>
<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">
	<header class="site-navbar js-sticky-header site-navbar-target"
		role="banner">
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
						<li>${user.getName()}님안녕하세요!</li>
						<li><a href="index.do" class="nav-link">my page</a></li>
						<li class="nav-item"><a href="#" onclick="logout();"
							class="nav-link" id="logout">Logout</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<section
		class="pb_cover_v3 overflow-hidden cover-bg-indigo cover-bg-opacity text-left pb_gradient_v1 pb_slant-light"
		id="section-home">
		<div class="container"
			style="float: left; left; width: 100%; text-align: center;">
			<div class="row align-items-center justify-content-center">
				<article style="float: left; width: 50%; text-align: center;">
					<table class="table table-bordered dataTable" id="dataTable"
						width="100%" cellspacing="0" style="text-align: center;">
						<tbody>
							<tr role="row" class="odd">
								<td><lable>총 금액</lable></td>
								<td><input type="text" class=".col-xs-6 .col-sm-4"
									placeholder="Search"></td>
							</tr>
							<tr role="row" class="odd">
								<td><label class="col-xs-6 .col-sm-3">할인 금액 :</label></td>
								<td><input type="text" class=".col-xs-6 .col-sm-4"
									placeholder="Search"></td>
							</tr>
							<tr role="row" class="odd">
								<td><label class="col-xs-6 .col-sm-3">받을 금액 :</label></td>
								<td><input type="text" class=".col-xs-6 .col-sm-4"
									placeholder="Search"></td>
							</tr>
							<tr role="row" class="odd">
								<td><label class="col-xs-6 .col-sm-3">받은 금액 :</label></td>
								<td><input type="text" class=".col-xs-6 .col-sm-4"
									placeholder="Search"></td>
							</tr>

							<tr role="row" class="odd">
								<td><label class="col-xs-6 .col-sm-3">더치페이 인원:</label></td>
								<td><input type="text" class=".col-xs-6 .col-sm-4"
									placeholder="Search"></td>
							</tr>
						</tbody>
					</table>
				</article>
			</div>
		</div>
	</section>
	<!-- 부트스트랩 스크립트 지우면 사망 -->
	<script src="./resources/js/jquery.min.js"></script>

	<script src="./resources/js/popper.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/slick.min.js"></script>
	<script src="./resources/js/jquery.mb.YTPlayer.min.js"></script>

	<script src="./resources/js/jquery.waypoints.min.js"></script>
	<script src="./resources/js/jquery.easing.1.3.js"></script>

	<script src="./resources/js/main.js"></script>
	<!-- 스크립트 모음 -->

</body>
</html>