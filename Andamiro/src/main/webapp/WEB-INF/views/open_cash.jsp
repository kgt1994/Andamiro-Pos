<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
</style>
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
								<form style="float: left; width: 50%;">
									<fieldset>
										<legend>영업준비금</legend>
										<table>
											<tbody>
												<tr>
													<td>50000</td>
													<td><input type="text" name="id" class="form-control"
														style="width: 20%;"></td>
												</tr>
												<tr>
													<td>10000</td>
													<td><input type="text" name="id" class="form-control"
														style="width: 20%;"></td>
												</tr>
												<tr>
													<td>5000</td>
													<td><input type="text" name="id" class="form-control"
														style="width: 20%;"></td>
												</tr>
												<tr>
													<td>1000</td>
													<td><input type="text" name="id" class="form-control"
														style="width: 20%;"></td>
												</tr>
												<tr>
													<td>500</td>
													<td><input type="text" name="id" class="form-control"
														style="width: 20%;"></td>
												</tr>
												<tr>
													<td>100</td>
													<td><input type="text" name="id" class="form-control"
														style="width: 20%;"></td>
												</tr>
												<tr>
													<td>50</td>
													<td><input type="text" name="id" class="form-control"
														style="width: 20%;"></td>
												</tr>
												<tr>
													<td>10</td>
													<td><input type="text" name="id" class="form-control"
														style="width: 20%;"></td>
												</tr>
											</tbody>
										</table>
									</fieldset>
								</form>
								<br> <br>
								<form style="float: right;">
									<fieldset>
										<div style="float: right; text-align: center;">
											<input type="text" name="id" class="form-control"
												style="padding: 5px 0px 5px 5px; margin-bottom: 10px;"
												required autofocus> <input type="text" name="id"
												class="form-control"
												style="padding: 5px 0px 5px 5px; margin-bottom: 10px;"
												required autofocus> <input type="text" name="id"
												class="form-control"
												style="padding: 5px 0px 5px 5px; margin-bottom: 10px;"
												required autofocus> <input type="text" name="id"
												class="form-control"
												style="padding: 5px 0px 5px 5px; margin-bottom: 10px;"
												required autofocus> <input type="text" name="id"
												class="form-control"
												style="padding: 5px 0px 5px 5px; margin-bottom: 10px;"
												required autofocus> <input type="text" name="id"
												class="form-control"
												style="padding: 5px 0px 5px 5px; margin-bottom: 10px;"
												required autofocus> <input type="text" name="id"
												class="form-control"
												style="padding: 5px 0px 5px 5px; margin-bottom: 10px;"
												required autofocus> <input type="text" name="id"
												class="form-control"
												style="padding: 5px 0px 5px 5px; margin-bottom: 10px;"
												required autofocus>
										</div>
									</fieldset>
								</form>
								<div class="form-group">
									<input type="submit"
										class="btn btn-primary btn-lg btn-block pb_btn-pill  btn-shadow-blue"
										value="Login">
								</div>
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