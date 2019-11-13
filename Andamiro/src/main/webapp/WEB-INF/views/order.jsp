<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String name;
%>
<!DOCTYPE html>
<html>
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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	<header class="site-navbar js-sticky-header site-navbar-target"
		role="banner">

		<div class="container">
			<div class="row align-items-center position-relative">
				<div class="site-logo">
					<a href="main.do" class="text-black"><span class="text-primary">Andamiro</span></a>
				</div>

				<nav class="site-navigation text-center ml-auto" role="navigation">
					<ul
						class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
						<li>${user.getName() }님안녕하세요!<a href="index.do"
							class="nav-link">my page</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<br>
	<div class="container"
		style="float: left; left; width: 50%; text-align: center;">
		<section style="float: left; width: 100%; text-align: center;">
			<div style="width: 100%">
				<table class="table table-bordered dataTable" id="dataTable"
					width="50%" cellspacing="0" role="grid"
					aria-describedby="dataTable_info;">
					<colgroup>
						<col style="width: 10%"></col>
						<col style="width: 25%"></col>
						<col style="width: 15%"></col>
						<col style="width: 10%"></col>
						<col style="width: *%"></col>
					</colgroup>
					<tr id="menu_list">
						<th>No.</th>
						<th>메뉴</th>
						<th>가격</th>
						<th>수량</th>
						<th>비고</th>
						<th><button type="button">한줄 취소</button></th>
						<th><button type="button">수량추가</button></th>
					</tr>
				</table>
			</div>

			<div
				style="overflow: auto; height: 300px; text-align: center; width: 100%">
				<table class="table table dataTable" id="dataTable" role="grid">
					<colgroup>
						<col style="width: 20%"></col>
						<col style="width: 30%"></col>
						<col style="width: 10%"></col>
						<col style="width: 20%"></col>
						<col style="width: 10%"></col>
					</colgroup>
				</table>

			</div>

			<div>
				<table class="table table-bordered dataTable" id="dataTable"
					width="100%" cellspacing="0" role="grid"
					aria-describedby="dataTable_info;">
					<colgroup>
						<col style="width: 25%"></col>
						<col style="width: 25%"></col>
						<col style="width: 25%"></col>
						<col style="width: 25%"></col>
					</colgroup>
					<tr>
						<th><input type="button" value="전체 취소"
							class="btn btn-warning" style="width: 100%; height: 100%;"></th>

						<th><input type="button" value="+" class="btn btn-warning"
							style="width: 100%; height: 100%;"></th>
						<th><input type="button" value="-" class="btn btn-warning"
							style="width: 100%; height: 100%;"></th>
					</tr>
				</table>
			</div>

			<div style="width: 100%; float: center; ">
				<article style="width: 50%; float: left;">
					<div style="width: 100%;" class="form-group">
						<table class="table table-bordered dataTable" id="dataTable"
							width="100%" cellspacing="0" style = "text-align : center;">
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
					</div>
				</article>

				<div style="width: 50%; float: right;">
					<article style="float: center;">
						<div>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">1</button>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">2</button>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">3</button>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">0</button>
						</div>
						<div>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">4</button>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">5</button>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">6</button>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">%할인</button>
						</div>
						<div>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">7</button>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">8</button>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">9</button>
							<button type="button" class="number" id="2"
								style="width: 60px; height: 60px;">원할인</button>
						</div>
					</article>
				</div>
			</div>
		</section>
	</div>
	<div class="container"
		style="float: right; width: 50%; text-align: center;">
		<section style="float: left; width: 100%; text-align: center;">
			<article style="clear: both;">
				<table class="table table-bordered dataTable" id="dataTable"
					style="width: 100%; height: 80%;" cellspacing="0" role="grid"
					aria-describedby="dataTable_info;">
					<colgroup>
						<col style="width: 20%"></col>
						<col style="width: 20%"></col>
						<col style="width: 20%"></col>
						<col style="width: 20%"></col>
						<col style="width: 20%"></col>
					</colgroup>
					<tbody>
						<tr style="border-collapse: collapse;">
							<th><button type="button" class="btn btn-default"
									id="btn_select1">아메리카노</button></th>
							<th class="sorting_1"><input type="button" value="2"
								class="btn btn-warning"></th>
							<th class="sorting_1"><input type="button" value="3"
								class="btn btn-warning"></th>

							<th class="sorting_1"><input type="button" value="4"
								class="btn btn-warning"></th>
							<th class="sorting_1"><input type="button" value="5"
								class="btn btn-warning"></th>
						</tr>
					</tbody>
				</table>
			</article>


			<script>
				var num;

				var menu_list = "<tr>"
				menu_list += "<th>num += num </th>"
			</script>
			<div style="float: left; margin-right: 10px; text-align: center;">
				<button type="button" class="btn btn-success"
					style="width: 150px; height: 210px;">주문</button>
			</div>

			<div style="float: left; margin-right: 10px; text-align: center;">
				<button type="button" class="btn btn-success"
					style="width: 100px; height: 100px; margin-bottom: 10px;">영수증
					관리</button>
				<br>

				<button type="button" class="btn btn-success"
					style="width: 100px; height: 100px;">중간 계산서</button>
			</div>

			<div style="float: left; margin-right: 10px; text-align: center;">
				<button type="button" class="btn btn-warning" data-toggle="modal"
					data-target="#card_payment" data-whatever="@mdo"
					style="width: 200px; height: 210px;">카드</button>
			</div>
			<div style="float: left; margin-right: 10px; text-align: center;">

				<button type="button" class="btn btn-warning" data-toggle="modal"
					data-target="#cash_payment" data-whatever="@mdo"
					style="width: 200px; height: 210px;">현금</button>
			</div>
		</section>
	</div>

	<div class="modal fade" id="card_payment" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="exampleModalLabel">카드 결제하기</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">IC카드를 넣어주세요</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-success">결제하기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 현금 모달창 -->
	<div class="modal fade" id="cash_payment" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true"
		style="text-align: center;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="exampleModalLabel">현금 결제하기</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group form-group-sm">
							<label for="formGroupInputSmall">결제 금액</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="priceNumber">
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label for="formGroupInputSmall">받은 금액</label>
							<div class="col-sm-10" id="pay">
								<input class="form-control" type="text" id="Input_Price">
							</div>
							<div class="col-sm-10">
								<button type="button" class="btn btn-success">개인 소득공재용</button>
								<button type="button" class="btn btn-success">사업자 소득공재용</button>

								<input type="text" class="form-control" id="phoneNumber"
									placeholder="'-'없이 입력">
							</div>
						</div>
					</form>
					<table class="table">
						<tbody>
							<tr>
								<td><button type="button" class="number" id="1">1</button></td>
								<td><button type="button" class="number" id="2">2</button></td>
								<td><button type="button" class="number" id="3">3</button></td>
								<td>
							</tr>
							<tr>
								<td><button type="button" class="number" id="4">4</button></td>
								<td><button type="button" class="number" id="5">5</button></td>
								<td><button type="button" class="number" id="6">6</button></td>
							</tr>
							<tr>
								<td><button type="button" class="number" id="7">7</button></td>
								<td><button type="button" class="number" id="8">8</button></td>
								<td><button type="button" class="number" id="9">9</button></td>
							</tr>
							<tr>
								<td><button type="button" class="btn btn-warning">CH</button></td>
								<td><button type="button" class="number" id="0">0</button></td>
								<td><button type="button" class="btn btn-warning"><-</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-success">결제하기</button>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<!-- Footer -->
		<footer class="bg- py-3 fixed-bottom">
			<div class="small text-center text-muted">Copyright &copy; 2019
				- Andamiro</div>
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