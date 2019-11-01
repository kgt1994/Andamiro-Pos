<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<style>
#orderSettings {
	width: 300px;
	height: 310px;
	background-color: darkorange;
}

#moneySettings {
	background-color: chocolate;
	width: 300px;
	height: 100px;
}

#endSettings {
	width: 300px;
	height: 100px;
	background-color: cornflowerblue;
}

#receiptSettings {
	width: auto;
	height: auto;
	max-width: 500px;
	max-height: 100px;
}

#menuSettings {
	background-color: darksalmon;
	width: 300px;
	height: 100px;
}

#tableSettings {
	background-color: burlywood;
	width: 300px;
	height: 100px;
}

#money {
	background-color: olivedrab;
	width: 300px;
	height: 100px;
}

#sales_account {
	background-color: royalblue;
	width: 300px;
	height: 100px;
}

#restart {
	background-color: violet;
	width: 300px;
	height: 100px;
}
</style>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
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
						<a href="main.do" class="text-black"><span
							class="text-primary">Andamiro</span></a>
					</div>

					<nav class="site-navigation text-center ml-auto" role="navigation">
						<ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
						<li>안녕하세요,twosomeplace 입니다.</li>
						<li><a href="index.do" class="nav-link">my page</a></li>
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

		<div class="container">
			<div class="row">
				<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
					<table style="margin-left: auto; margin-right: auto;">
						<tbody>
							<tr>
								<td rowspan="3"><a>
										<form action="order.do">
											<input type="submit" value="주문관리 " id="orderSettings">
										</form>
								</a></td>

								<td><a>
										<form action="#.jsp">
											<input type="submit" value="영업준비금 " id="moneySettings">
										</form>
								</a></td>
							</tr>
							<tr>
								<td><a>
										<form action="#.jsp">
											<input type="submit" value="마감관리 " id="endSettings">
										</form>
								</a></td>
							</tr>
							<td><a>
									<form action="table_settings.do">
										<input type="submit" value="테이블 관리 " id="tableSettings">
									</form>
							</a></td>
							<tr>

								<td><a>
										<form action="sales_account.do">
											<input type="submit" value="매출 확인 " id="sales_account">
										</form>
								</a></td>
								<td><a>
										<form action="#.jsp">
											<input type="submit" value="메뉴관리 " id="menuSettings">
										</form>
								</a></td>
								</td>
							</tr>
						</tbody>
					</table>
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
							Andamiro
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