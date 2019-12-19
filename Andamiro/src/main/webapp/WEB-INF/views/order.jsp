<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	href="./resources/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="./resources/css/slick.css">
<link rel="stylesheet" href="./resources/css/slick-theme.css">
<link rel="stylesheet" href="./resources/css/helpers.css">
<link rel="stylesheet" href="./resources/css/style.css">
<link rel="stylesheet" href="./resources/css/landing-2.css">
<link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<link href="https://cdn.datatables.net/select/1.2.1/css/select.dataTables.min.css">

<style>
.menu_service {
	width: 80px;
	height: 60px;
	margin-right: 10px;
	font-size: 16px;
	border: 2px solid rgb(137, 201, 244);
	background-color: rgb(137, 201, 244);
	color: white;
}
</style>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>


<script type="text/javascript">
	var flag = true;
	var totalFlag = true;
	var flag2 = 0;
	var flag3 = 0;
	
	var col_kor = [
        { title: "No." },
        { title: "메뉴" },
        { title: "가격" },
        { title: "수량" },
        { title: "비고" }
    ];
	
	var lang_kor = {
	        "emptyTable" : "주문한 메뉴가 없습니다.",
	        "loadingRecords" : "로딩중...",
	        "processing" : "처리중...",
	        "aria" : {
	            "sortAscending" : " :  오름차순 정렬",
	            "sortDescending" : " :  내림차순 정렬"
	        }
	    };
	
	$(function() {
		table = $('#orderList').DataTable({
            columns: col_kor,
            language : lang_kor,
            paging: false,
            searching: false,
            select: {
                style: 'single'
            },
            info: false,
            infoEmpty: false,
            scrollY: 250
		});
		
		$('#orderList tbody').on( 'click', 'tr', function () {
		  var rowData = table.row( this ).data();
		  //alert(rowData);
		  //$(this).css('background', 'white');
		});
	});

	function rowAdd(item, price) {
		var menu = $('#menu_show td').text();
		var cash = parseInt($('#total').val());
		
		if(table.rows().count() !== 0){
			for(var i=0; i < table.rows().count(); i++){
				if(table.cell( i, 1 ).data() == item){
					var amont = parseInt(table.cell( i, 3 ).data()) + 1;
					
					table.cell( i, 3 ).data(amont).draw();
					
					$('#total').val(cash + parseInt(price));
					break;
				}else if (i == table.rows().count() - 1){
					table.row.add( [
						table.rows().count() + 1,
					    item,
					    price,
					    "1",
					    ""
					] ).draw();
					$('#total').val(cash + parseInt(price));
					break;
				}
			}
		}else{
			table.row.add( [
				table.rows().count() + 1,
			    item,
			    price,
			    "1",
			    ""
			] ).draw();
			$('#total').val(price);
		}
		
		$('#pay').val(parseInt($('#total').val()) - parseInt($('#discount').val()) - parseInt($('#paid').val()));
	}

	function logout() {
		if (confirm("로그아웃 하시겠습니까?")) {
			location.href = "logout.do";
		} else {
			return;
		}
	}

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
					<li><a href="mypage.do" class="nav-link">my page</a></li>
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

				<!-- table -->
				<div style="width: 100%">
					<table class="table table-bordered dataTable" id="orderList"
						width="50%" cellspacing="0" role="grid"
						aria-describedby="dataTable_info;">
						<colgroup>
							<col style="width: *%"></col>
							<col style="width: *%"></col>
							<col style="width: *%"></col>
							<col style="width: *%"></col>
							<col style="width: *%"></col>
						</colgroup>
						<thead>

						</thead>

						<tbody id="menu_show">

						</tbody>
					</table>
				</div>


				<div style="width: 100%;">
					<table>
						<colgroup>
							<col style="width: *%"></col>
							<col style="width: *%"></col>
							<col style="width: *%"></col>
							<col style="width: *%"></col>
							<col style="width: *%"></col>
							<col style="width: *%"></col>
							<col style="width: *%"></col>
							<col style="width: *%"></col>
						</colgroup>
						<tbody>
							<tr>
								<td>
									<button type="button" class="menu_service">전체취소</button>
								</td>
								<td>
									<button type="button" class="menu_service">한줄취소</button>
								</td>
								<td>
									<button type="button" class="menu_service">서비스</button>
								</td>
								<td>
									<button type="button" class="menu_service">포장</button>
								</td>
								<td>
									<button type="button" class="menu_service">-</button>
								</td>
								<td>
									<button type="button" class="menu_service">+</button>
								</td>
								<td>
									<button type="button" class="menu_service">▽</button>
								</td>
								<td>
									<button type="button" class="menu_service">△</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<br>
				<!-- section 하단 -->
				<div style="float: left; width: 50%; align: center;">
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
						<input type="text" id="total" name="total" class="form-control" required autofocus readonly value=0> <br> 
						<input type="text" id="discount" name="discount" class="form-control" required autofocus readonly value=0> <br> 
						<input type="text" id="pay" name="pay" class="form-control" required autofocus readonly value=0> <br> 
						<input type="text" id="paid" name="paid" class="form-control" required autofocus readonly value=0> <br>
					</div>
				</div>

				<div style="float: right; width: 50%;">
					<table class="table table-bordered" text-align="center"
						style="border: 1px solid darkgray; background-color: gray;">

						<thead>
							<tr>
								<td class="pl-4" colspan="2"><input type="text"
									class="form-control text-right font-weight-bold num_only num_comma num_sum"
									id="fn_total" name="fn_total" value="" placeholder=""
									readonly="readonly"></td>
							</tr>
						</thead>
						<tr>
							<td colspan="5"><input type="text" name="disp" id="disp"
								value="0"></td>
						</tr>
						<tr>
							<td><input type="button" value="7" class="btn"
								onclick="but(7)"></td>
							<td><input type="button" value="8" class="btn"
								onclick="but(8)"></td>
							<td><input type="button" value="9" class="btn"
								onclick="but(9)"></td>
							<td colspan="2"><input type="button" value="C" class="clr"
								onclick="c()"></td>
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
							<td colspan="2"><input type="button" value="=" class="equal"
								onclick="total()"></td>
							<td><input type="button" value="-" class="btn"
								onclick="but('-')"></td>
						</tr>
					</table>
				</div>
			</section>
		</div>

		<div class="container"
			style="float: right; width: 50%; text-align: center;">
			<section style="float: left; width: 100%; text-align: center;">
				<article style="clear: both;">
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#qwe">Coffee</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#asd">NonCoffee</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#zxc">Tea</a></li>
					</ul>

					<!-- 탭 누르면 바뀜 -->
					<div class="tab-content">

						<!-- Tab1 -->
						<div class="tab-pane fade show active" id="qwe">
							<table class="table table-bordered dataTable" id="menubtn"
								style="width: 100%; height: 80%;" cellspacing="0" role="grid">
								<colgroup>
									<col style="width: 20%"></col>
									<col style="width: 20%"></col>
									<col style="width: 20%"></col>
									<col style="width: 20%"></col>
									<col style="width: 20%"></col>
								</colgroup>
								<thead>
									<tr style="border-collapse: collapse;">
										<c:forEach items="${menu}" var="menu" varStatus="i">
											<c:choose>
												<c:when test="${i.index % 5 == 0}">
													<tr>
												</c:when>
											</c:choose>
											<th><button type="button" class="btn btn-default"
													id="addbtn" name="addbtn"
													onclick="rowAdd('${menu.item}', '${menu.price}');">${menu.item}</button></th>
										</c:forEach>
								</thead>
							</table>
						</div>
					</div>
				</article>

				<div style="width: 100%;">
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
							style="width: 150px; height: 100px; margin-bottom: 10px;">중간
							계산서</button>
					</div>

					<div style="float: left; margin-right: 10px; text-align: center;">
						<button type="button" class="btn btn-warning" data-toggle="modal"
							data-target="#card_payment" data-whatever="@mdo"
							style="width: 150px; height: 210px;">카드</button>
					</div>
					<div style="float: left; margin-right: 10px; text-align: center;">

						<button type="button" class="btn btn-warning" data-toggle="modal"
							data-target="#cash_payment" data-whatever="@mdo"
							style="width: 150px; height: 210px;">현금</button>
					</div>
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


	<!-- 탭 스크립트 -->

	<script>
		$('#myTab a').click(function(e) {
			e.preventDefault()
			$(this).tab('show')
		});
	</script>
	<!-- 부트스트랩 스크립트 지우면 사망 -->
	<script src="./resources/js/jquery.min.js"></script>

	<script src="./resources/js/popper.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/slick.min.js"></script>
	<script src="./resources/js/jquery.mb.YTPlayer.min.js"></script>

	<script src="./resources/js/jquery.waypoints.min.js"></script>
	<script src="./resources/js/jquery.easing.1.3.js"></script>

	<script src="./resources/js/main.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
	<script src="https://cdn.datatables.net/select/1.3.1/js/dataTables.select.min.js"></script>
	<!-- 스크립트 모음 -->
</body>
</html>