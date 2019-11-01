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
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
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
</head>
<style>
.table {
	display: block;
	width: 600px;
	border-collapse: collapse;
	float: left;
	text-align: center;
}

.table th {
	background: #ffc107;
	/* width: 150px; */
	height: 50px;
	text-align: center;
}

.table td {
	background: ligthgray;
	width: 150px;
	height: 50px;
	text-align: center;
}

.table tbody {
	display: block;
	height: 300px;
	overflow: auto;
	text-align: center;
}

.table tfoot {
	width: 150px;
	height: 50px;
	text-align: center;
}
</style>


<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

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
						<ul
							class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
							<li>님 안녕하세요!<a href="index.do" class="nav-link">my page</a></li>
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

		<section>
			<table class="table">
				<thead>
					<tr>
						<th style="width: 144px">메뉴 이름</th>
						<th style="width: 144px">단가</th>
						<th style="width: 144px">수량</th>
						<th style="width: 165px">가격</th>
					<tr>
				</thead>
				<tbody>
					<tr>
						<td>사과유자히비스커스</td>
						<td>4000</td>
						<td>1</td>
						<td>3200</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th style="width: 144px">
							<button type="button" class="btn btn-warning">전체취소</button>
						</th>
						<th style="width: 144px">
							<button type="button" class="btn btn-warning">선택취소</button>
						</th>
						<th style="width: 144px">
							<button type="button" class="btn btn-warning">+</button>
						</th>
						<th style="width: 165px">
							<button type="button" class="btn btn-warning">-</button>
						</th>
					</tr>
				</tfoot>
			</table>
			<table class="table table-bordered">
				<tbody>
					<tr class="price">
						<td><button class="btn btn-warning" value="4000">아메리카노</button></td>
						<td><button class="btn btn-warning" value="4500">카페
								라떼</button></td>
						<td><button class="btn btn-warning" value="5000">밀크티</button></td>
					</tr>
				</tbody>
			</table>

			<br>
			<div class="modal fade" id="money" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
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
										<button type="button" class="btn btn-success">개인
											소득공재용</button>
										<button type="button" class="btn btn-success">사업자
											소득공재용</button>

										<input type="text" class="form-control" id="phoneNumber"
											placeholder="'-'없이 입력">
									</div>
								</div>
							</form>
							<table class="table">
								<tbody>
									<tr>
										<td><button class="number" id="1">1</button></td>
										<td><button type="button" class="number" id="2">2</button></td>
										<td><button type="button" class="number" id="3">3</button></td>
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

			<br>
			<div style="overflow-x: auto;">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td><button class="number" id="1">할인</button></td>
							<td><button type="button" class="number" id="2">2</button></td>
							<td><button type="button" class="number" id="3">3</button></td>
							<td><button type="button" class="number" id="4">4</button></td>
							<td><button type="button" class="number" id="5">5</button></td>
							<td><button type="button" class="number" id="6">6</button></td>
							<td><button type="button" class="number" id="7">7</button></td>
							<td><button type="button" class="number" id="8">8</button></td>
							<td><button type="button" class="number" id="9">9</button></td>
							<td><button type="button" class="btn btn-warning">CH</button></td>
							<td><button type="button" class="number" id="0">0</button></td>
							<td><button type="button" class="btn btn-warning"><-</button></td>
							<td><button type="button" class="btn btn-success btn-lg">카드</button></td>
							<td><button type="button" class="btn btn-warning btn-lg"
									data-toggle="modal" data-target="#money" data-whatever="@mdo">현금</button></td>

						</tr>
						<tr>

						</tr>
					</tbody>
				</table>
			</div>
		</section>
		<!-- <script>	
			//추가 버튼
			$(document)
					.on(
							"click",
							"button[name=addStaff]",
							function() {

								var addStaffText = '<tr name="trStaff">'
										+ '   <td class="active col-md-1"><strong>정산담당자</strong></td>'
										+ '   <td class="col-md-11">'
										+ '       <input type="text" class="form-control" name="staff_name" placeholder="성명">'
										+ '       <input type="text" class="form-control" name="staff_contact" placeholder="연락처1">'
										+ '       <input type="text" class="form-control" name="staff_contact2" placeholder="연락처2">'
										+ '       <input type="text" class="form-control" name="staff_email" placeholder="이메일">'
										+ '       <select class="form-control statusYn" name="staff_use_yn">'
										+ '           <option value="Y">사용</option>'
										+ '           <option value="N">미사용</option>'
										+ '       </select>'
										+ '       <button class="btn btn-default" name="delStaff">삭제</button>'
										+ '   </td>' + '</tr>';

								var trHtml = $("tr[name=trStaff]:last"); //last를 사용하여 trStaff라는 명을 가진 마지막 태그 호출

								trHtml.after(addStaffText); //마지막 trStaff명 뒤에 붙인다.

							});

			//삭제 버튼
			$(document).on("click", "button[name=delStaff]", function() {

				var trHtml = $(this).parent().parent();

				trHtml.remove(); //tr 테그 삭제

			});
		</script> -->

		<!-- Footer -->
		<footer class="bg-light py-3 fixed-bottom">
			<div class="container">
				<div class="small text-center text-muted">Copyright &copy;
					2019 - Andamiro</div>
			</div>
		</footer>
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
	</div>
</body>
</html>