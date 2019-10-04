<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
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


<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.jsp"> <img
			src="./resources/image/home.png" width="50" height="50"
			class="d-inline-block align-top">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<button type="button" id="dropdownMenu1">
			<a href="settings.do"><img src="./resources/image/setting.jpeg"
				width="50" height="50"></a>
		</button>
	</nav>


	<section>
		<table class="table">
			<thead>
				<th style="width: 144px">메뉴 이름</th>
				<th style="width: 144px">단가</th>
				<th style="width: 144px">수량</th>
				<th style="width: 165px">가격</th>
			</thead>
			<tbody>
				<tr>
					<td>사과유자히비스커스</td>
					<td>4000</td>
					<td>1</td>
					<td>3200</td>
				</tr>
				<tr>
					<td>아메리카노</td>
					<td>4000</td>
					<td>2</td>
					<td>3200</td>
				</tr>
				<tr>
					<td>아메리카노</td>
					<td>4000</td>
					<td>3</td>
					<td>3200</td>
				</tr>
				<tr>
					<td>아메리카노</td>
					<td>4000</td>
					<td>4</td>
					<td>3200</td>
				</tr>
				<tr>
					<td>아메리카노</td>
					<td>4000</td>
					<td>5</td>
					<td>3200</td>
				</tr>
				<tr>
					<td>아메리카노</td>
					<td>4000</td>
					<td>6</td>
					<td>3200</td>
				</tr>
				<tr>
					<td>아메리카노</td>
					<td>4000</td>
					<td>7</td>
					<td>3200</td>
				</tr>
				<tr>
					<td>아메리카노</td>
					<td>4000</td>
					<td>8</td>
					<td>3200</td>
				</tr>
				<tr>
					<td>아메리카노</td>
					<td>4000</td>
					<td>9</td>
					<td>3200</td>
				</tr>
			</tbody>
			<tfoot>
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
			</tfoot>
		</table>
		<aside>
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td><button type="button" class="btn btn-warning"
								data-dismiss="modal">아메리카노</button></td>
						<td><button type="button" class="btn btn-warning"
								data-dismiss="modal">카페 라떼</button></td>
						<td><button type="button" class="btn btn-warning"
								data-dismiss="modal">밀크티</button></td>
					</tr>
					<tr>
						<td><button type="button" class="btn btn-warning"
								data-dismiss="modal">바닐라라떼</button></td>
						<td><button type="button" class="btn btn-warning"
								data-dismiss="modal">퐁크러쉬</button></td>
						<td><button type="button" class="btn btn-warning"
								data-dismiss="modal">딸기라떼</button></td>
					</tr>
					<tr>
						<td><button type="button" class="btn btn-warning"
								data-dismiss="modal">오곡주스</button></td>
						<td><button type="button" class="btn btn-warning"
								data-dismiss="modal">딸기요거트스무디</button></td>
						<td><button type="button" class="btn btn-warning"
								data-dismiss="modal">유니콘프라페</button></td>
					</tr>
				</tbody>
			</table>
		</aside>
	</section>
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
								<input class="form-control" type="text" id="formGroupInputSmall"
									placeholder="4000">
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label for="formGroupInputSmall">받은 금액</label>
							<div class="col-sm-10">
								<input class="form-control" type="text" id="formGroupInputSmall"
									placeholder="5000">
							</div>
						</div>
					</form>
					<table class="table">
						<tbody>
							<tr>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal">1</button></td>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal">2</button></td>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal">3</button></td>
							</tr>
							<tr>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal">4</button></td>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal">5</button></td>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal">6</button></td>
							</tr>
							<tr>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal">7</button></td>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal">8</button></td>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal">9</button></td>
							</tr>
							<tr>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal">0</button></td>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal"><-</button></td>
								<td><button type="button" class="btn btn-danger"
										data-dismiss="modal">ch</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-success" data-dismiss="modal">결제하기</button>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<button type="button" class="btn btn-success btn-lg">카드</button>
		<button type="button" class="btn btn-warning btn-lg"
			data-toggle="modal" data-target="#money" data-whatever="@mdo">현금</button>
	</div>
	
	
	<!-- Footer -->
	<footer class="bg-light py-3 fixed-bottom">
		<div class="container">
			<div class="small text-center text-muted">Copyright &copy; 2019
				- Andamiro</div>
		</div>
	</footer>

</body>
</html>