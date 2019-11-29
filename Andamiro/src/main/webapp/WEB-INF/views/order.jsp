<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String name;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
.cash {
	width: 300px;
	height: 300px;
	border: 2px solid slategray;
	border-radius: 20px;
	background-color: rgb(115, 99, 71);
}

.cash>form>div.btn {
	border-radius: 20px;
	margin: 1px 1px 10px 1px;;
	float: left;
	border: 2px solid slategray;
	width: 75px;
	height: 40px;
}

div.btn>input {
	font-size: 1.5em;
	border-radius: 20px;
	width: 75px;
	height: 40px;
	background-color: LightGray;
}

div.print>input.print_result {
	border-radius: 20px;
	margin-bottom: 20px;
	border: 4px solid slategray;
	width: 200px;
	height: 50px;
	background-color: LightGray;
	text-align: center;
	font-size: 10px;
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

	<!-- 이거 안에 무적권  -->
	<div
		class="pb_cover_v3 overflow-hidden cover-bg-indigo cover-bg-opacity text-left pb_gradient_v1">

		<br>
		<hr>

		<!-- 전체 컨테이너 -->
		<div class="container"
			style="float: left; width: 50%; text-align: center;">

			<!-- 비율 1:1 왼쪽 -->
			<section style="text-align: center;">

				<!-- table header부분 -->
				<div style="width: 100%">
					<table class="table table-bordered dataTable" id="dataTable"
						width="50%" cellspacing="0" role="grid"
						aria-describedby="dataTable_info;">
						<colgroup>
							<col style="width: 10%"></col>
							<col style="width: *%"></col>
							<col style="width: 15%"></col>
							<col style="width: 10%"></col>
							<col style="width: 20%"></col>
						</colgroup>
						<tr id="menu_list">
							<th>No.</th>
							<th>메뉴</th>
							<th>가격</th>
							<th>수량</th>
							<th>비고</th>
						</tr>
					</table>
				</div>
				<!-- 	header END -->

				<!-- table body부분  스크롤바 생김-->
				<div
					style="overflow: auto; height: 250px; text-align: center; width: 100%">
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
				<!-- 	body END -->

<br>
				<div>
					<input type="button" value="전체취소"
						class="btn btn-primary btn-block pb_btn-pill  btn-shadow-blue"
						style="width: 25%; float: left;"> <input type="button"
						value="+"
						class="btn btn-primary btn-block pb_btn-pill  btn-shadow-blue"
						style="width: 25%; float: left;"> <input type="button"
						value="-"
						class="btn btn-primary btn-block pb_btn-pill  btn-shadow-blue"
						style="width: 25%; float: left;"> <input type="button"
						value="한줄취소"
						class="btn btn-primary btn-block pb_btn-pill  btn-shadow-blue"
						style="width: 25%; float: left;">
				</div>
				<br>

				<!-- section 하단 -->
				<div style="float: left; width: 50%; align: center;">
					<br>
					<div style="float: left; text-align: center;">
						<div class="nav-link" style="color: white;">총금액</div>
						<br>
						<div class="nav-link" style="color: white;">할인 금액</div>
						<br>
						<div class="nav-link" style="color: white;">받을 금액</div>
						<br>
						<div class="nav-link" style="color: white;">받은 금액</div>
						<br>	
					</div>

					<div style="float: right; width: 50%; text-align: center;">
						<input type="text" name="id" class="form-control" required
							autofocus> <br> <input type="text" name="id"
							class="form-control" required autofocus> <br> <input
							type="text" name="id" class="form-control" required autofocus>
						<br> <input type="text" name="id" class="form-control"
							required autofocus><br>
					</div>
				</div>

				<div style="float: right; width: 50%; aline-item: center;">
					<div id="cash">
						<form name="calculator">
							<table border="1">
								<thead>
									<div class="print">
										<input class="print_result" type="textfield" name="ans"
											value="">

										<div class="c btn">
											<input type="button" value="C">
										</div>
									</div>

									<!-- 								<div class="division btn">
									<input type="button" value="/"
										onClick="document.calculator.ans.value+='/'">

								</div> -->

									<div class="seven btn">
										<input type="button" value="7"
											onClick="document.calculator.ans.value+='7'">
									</div>
									<div class="eight btn">
										<input type="button" value="8"
											onClick="document.calculator.ans.value+='8'">
									</div>
									<div class="nine btn">
										<input type="button" value="9"
											onClick="document.calculator.ans.value+='9'">
									</div>

									<div class="four btn">
										<input type="button" value="4"
											onClick="document.calculator.ans.value+='4'">
									</div>
									<div class="five btn">
										<input type="button" value="5"
											onClick="document.calculator.ans.value+='5'">
									</div>
									<div class="six btn">
										<input type="button" value="6"
											onClick="document.calculator.ans.value+='6'">
									</div>

									<div class="one btn">
										<input type="button" value="1"
											onClick="document.calculator.ans.value+='1'">
									</div>
									<div class="two btn">
										<input type="button" value="2"
											onClick="document.calculator.ans.value+='2'">
									</div>
									<div class="three btn">
										<input type="button" value="3"
											onClick="document.calculator.ans.value+='3'">
									</div>

									<div class="zero btn">
										<input type="button" value="0"
											onClick="document.calculator.ans.value+='0'">
									</div>
									<div class="ce btn">
										<input type="button" value="CE">
									</div>
									<!-- <div class="result btn">
											<input type="button" value="="
												onClick="document.calculator.ans.value=eval(document.calculator.ans.value)">
										</div> -->
								</thead>
							</table>
						</form>
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

				<div style="float: left; margin-right: 10px; text-align: center;">
					<button type="button" class="btn btn-success"
						style="width: 150px; height: 210px;">주문</button>
				</div>

				<div style="float: left; margin-right: 10px; text-align: center;">
					<button type="button" class="btn btn-success"
						style="width: 150px; height: 100px; margin-bottom: 10px;">영수증
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

	</div>




	<!-- 모달창 -->
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
							<label>결제 금액</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="priceNumber">
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label>받은 금액</label>
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
								<td><button type="button" class="number">1</button></td>
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
	<!-- Footer -->
	<footer>
		<div class="small text-center text-muted">Copyright &copy; 2019
			- Andamiro</div>
	</footer>
	<!-- END Footer -->

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