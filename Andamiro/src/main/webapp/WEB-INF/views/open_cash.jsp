<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Andamiro</title>
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
									<legend>영업준비금</legend>
									<table style="border: 1px solid darkgray; float: left;">
										<tbody>
											<tr>
												<td>50000&nbsp;&nbsp;&nbsp;</td>
												<td><input type="text" name="id" class="form-control"
													style="width: 25%;"></td>

											</tr>
											<tr>
												<td>10000</td>
												<td><input type="text" name="id" class="form-control"
													style="width: 25%;"></td>
											</tr>
											<tr>
												<td>5000</td>
												<td><input type="text" name="id" class="form-control"
													style="width: 25%;"></td>
											</tr>
											<tr>
												<td>1000</td>
												<td><input type="text" name="id" class="form-control"
													style="width: 25%;"></td>
											</tr>
											<tr>
												<td>500</td>
												<td><input type="text" name="id" class="form-control"
													style="width: 25%;"></td>
											</tr>
											<tr>
												<td>100</td>
												<td><input type="text" name="id" class="form-control"
													style="width: 25%;"></td>
											</tr>
											<tr>
												<td>50</td>
												<td><input type="text" name="id" class="form-control"
													style="width: 25%;"></td>
											</tr>
											<tr>
												<td>10</td>
												<td><input type="text" name="id" class="form-control"
													style="width: 20%;"></td>
											</tr>
										</tbody>
									</table>

									<div>
										<table style="border: 1px solid darkgray; float: left;">
											<tbody>
												<tr>
													<td><input type="text" name="id" class="form-control"
														style="width: 70%;" required autofocus></td>
												</tr>
												<tr>
													<td><input type="text" name="id" class="form-control"
														style="width: 70%;" required autofocus></td>
												</tr>
												<tr>
													<td><input type="text" name="id" class="form-control"
														style="width: 70%;" required autofocus></td>
												</tr>
												<tr>
													<td><input type="text" name="id" class="form-control"
														style="width: 70%;" required autofocus></td>
												</tr>
												<tr>
													<td><input type="text" name="id" class="form-control"
														style="width: 70%;" required autofocus></td>
												</tr>
												<td><input type="text" name="id" class="form-control"
													style="width: 70%;" required autofocus></td>
												<tr>
													<td><input type="text" name="id" class="form-control"
														style="width: 70%;" required autofocus></td>
												</tr>
												<tr>
													<td><input type="text" name="id" class="form-control"
														style="width: 70%;" required autofocus></td>
												</tr>
											</tbody>
										</table>
									</div>
									<form name="calform">
										<table border="1" text-align="center" cellspacing="0"
											style="border: 1px solid darkgray; background-color: gray;">
											<tr>
												<td colspan="5"><input type="text" name="disp"
													id="disp" value="0"></td>
											</tr>
											<tr>
												<td><input type="button" value="7" class="btn"
													onclick="but(7)"></td>
												<td><input type="button" value="8" class="btn"
													onclick="but(8)"></td>
												<td><input type="button" value="9" class="btn"
													onclick="but(9)"></td>
												<td colspan="2"><input type="button" value="C"
													class="clr" onclick="c()"></td>
											</tr>
											<tr>
												<td><input type="button" value="4" class="btn"
													onclick="but(4)"></td>
												<td><input type="button" value="5" class="btn"
													onclick="but(5)"></td>
												<td><input type="button" value="6" class="btn"
													onclick="but(6)"></td>
												<td><input type="button" value="/" class="btn"
													onclick="but('/')"></td>
												<td><input type="button" value="%" class="btn"
													onclick="but('%')"></td>
											</tr>
											<tr>
												<td><input type="button" value="1" class="btn"
													onclick="but(1)"></td>
												<td><input type="button" value="2" class="btn"
													onclick="but(2)"></td>
												<td><input type="button" value="3" class="btn"
													onclick="but(3)"></td>
												<td><input type="button" value="*" class="btn"
													onclick="but('*')"></td>
												<td><input type="button" value="+" class="btn"
													onclick="but('+')"></td>
											</tr>
											<tr>
												<td><input type="button" value="0" class="btn"
													onclick="but(0)"></td>
												<td><input type="button" value="." class="btn"
													onclick="but('.')"></td>
												<td colspan="2"><input type="button" value="="
													class="equal" onclick="total()"></td>
												<td><input type="button" value="-" class="btn"
													onclick="but('-')"></td>
											</tr>
										</table>
									</form>
									<a class="btn btn-success btn-lg pb_btn-pill smoothscroll"
										id="home"><span
										class="pb_font-14 text-uppercase pb_letter-spacing-1">완료</span></a>
								</fieldset>
							</div>
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