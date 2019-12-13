<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>영업준비금 페이지</title>
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
<script type="text/javascript">
	function logout() {
		if (confirm("로그아웃 하시겠습니까?")) {
			location.href = "logout.do";
		} else {
			return;
		}
	}
</script>

<style>
ul.mylist li, ol.mylist li {
	padding: 5px 0px 5px 5px;
	margin-bottom: 10px;
	border-bottom: 1px solid #efefef;
}

input.btn {
	background-color: lighgray;
	width: 50px;
	height: 40px;
	margin: 5px;
	font-size: 15pt;
	width: 50px;
}

.clr, .equal {
	width: 112px;
	height: 40px;
	margin: 5px;
	font-size: 15pt;
}

#disp {
	width: 295px;
	height: 40px;
	margin: 5px;
	font-size: 22pt;
	text-align: right;
}
</style>
<script>
	var flag = true;
	var totalFlag = true;
	var flag2 = 0;
	var flag3 = 0;

	function err() {
		var f = document.calform;
		f.disp.value = "수식오류";
		flag = true;
	}

	function but(su) {

		if (totalFlag == false && isNaN(su) == false) {
			c();
		} else {
			totalFlag = true;
		}

		var f = document.calform;

		if (flag) {
			if (su == 0) {
				return;
			}
			f.disp.value = "";
			flag = false;
		}

		if (isNaN(su)) {
			flag2++;
		} else {
			flag2 = 0;
		}

		if (flag2 > 1) {
			return;
		}
		f.disp.value += su;
	}

	function c() {
		var f = document.calform;
		flag = true;
		totalFlag = true;
		f.disp.value = "";
	}

	function total() {

		var f = document.calform;

		try {
			var a = eval(f.disp.value);
			if (isNaN(a)) {
				throw err();
				return;
			}
		} catch (e) {
			err();
			return;
		}
		totalFlag = false;
		var b = (parseInt(a * 1000000000000) / 1000000000000)
		f.disp.value = b;

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
					<li><div class="nav-link active" style="color: white;">${user.getName()}님
							안녕하세요!</div></li>
					<li class="nav-item"><a class="nav-link active" href="home.do">Home</a></li>
					<li><a href="#" class="nav-link">my page</a></li>
					<li class="nav-item"><a href="#" onclick="logout();"
						class="nav-link" id="logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div
		class="pb_cover_v3 overflow-hidden cover-bg-indigo cover-bg-opacity text-left pb_gradient_v1">
		<br>
		<hr>
		<div class="container">
			<div style="float: center;">
				<div>
					<div class="relative align-self-center" id="login">
						<div class="bg-white rounded pb_form_v1">
							<fieldset>
								<legend>메뉴 관리</legend>
								<div>
									<table class="table table-bordered dataTable">
										<thead>
											<tr>
												<th>메뉴</th>
												<th>가격</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><input type="text" class="form-control"></td>
												<td><input type="text" class="form-control"></td>
											</tr>
										</tbody>
									</table>
									<button type="button" class="btn btn-primary"
										name="addbtn">추가</button>
								</div>
							</fieldset>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
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
