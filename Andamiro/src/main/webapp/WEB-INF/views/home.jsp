<%@page import="com.andamiro.pos.model.MemberDTO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>업장선택페이지</title>

<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<style>
#ImageSettings {
	max-width: 300px;
	max-height: 300px;
}
</style>
<script type="text/javascript">
	function goShop() {
		var chkpw = false;

		// 여기서 모달창에 입력받은 값 아약스 처리

		if (pw == chkpassword) {
			this.chkpw = !chkpw;
			$("#shopPwOk").submit();
		} else {
			alert("비밀번호를 다시 확인해 주세요!");
		}
	}
</script>
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
						<li class="nav-item"><a class="nav-link" href="logout.do"
							id="logout">Logout</a></li>
						<li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0"><a
							class="nav-link" href="join_admin.do" target="_blank"><span
								class="pb_rounded-4 px-4">Join</span></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<section
		class="pb_cover_v3 overflow-hidden cover-bg-indigo cover-bg-opacity text-left pb_gradient_v1 pb_slant-light"
		id="section-home">

		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-md-6">
					<c:forEach items="${list}" var="shop" varStatus="i">
						<tr>
							<td>
								<form action="settings.do?index=${i.index}" method="post"
									id="shopPwOk">
									<input type="hidden" value="${shop.shop_number}"
										name="shops[${i.index}].shop_number"> <input
										type="hidden" value="${shop.shop_name}"
										name="shops[${i.index}].shop_name"> <input
										type="submit" value="${shop.shop_name}">
									<!-- onclick="goShop();"-->
								</form>
					</c:forEach>
				</div>

			</div>
		</div>
	</section>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="exampleModalLabel">Login</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<form action="shoppw.do" method="post">
					<div class="modal-body">
						<div class="form-group">
							<label for="message-text" class="control-label"></label> <input
								type="password" class="form-control" name="shop_pw"
								placeholder="비밀번호를 입력해 주세요." required autofocus>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
						<input class="btn btn-success" type="submit" value="login">
					</div>
				</form>


			</div>
		</div>
	</div>
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
	<!-- 스크립트 모음 -->
</body>
</html>