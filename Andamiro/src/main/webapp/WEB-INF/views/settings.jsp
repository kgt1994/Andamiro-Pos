<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<script type="text/javascript">
function logout(){
	if(confirm("로그아웃 하시겠습니까?")){
		location.href="logout.do";
	}else{
		return;
	}
}
</script>
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
						<li>안녕하세요,${shop.shop_name} 입니다.</li>
						<li><a href="index.do" class="nav-link">my page</a></li>
						<li><a href="#" onclick="logout();" class="nav-link" id="logout">Logout</a></li>
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