<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
</head>
<body>

	<div class="container">
		<br> <br> <br>
		<div class="card-title text-center">
			<h1>
				<span class="text-primary">Andamiro�� ���Ű��� ȯ���մϴ�!</span>
			</h1>
		</div>
		<div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
				<div class="card card-signin my-5">
					<div class="card-body">
						<h5 class="card-title text-center">ȸ������</h5>
						<form>
							<!-- form class="form-label-group"-->
							<div class="form-group">
								<span class="glyphicon glyphicon-user" aria-hidden="true">
									<input type="text" class="form-control" id="recipient-name"
									placeholder="�̸��� �Է��� �ּ���." required autofocus>
								</span>
							</div>
							<div class="form-group">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								<input type="text" class="form-control" id="recipient-name"
									placeholder="���̵� �Է��� �ּ���." required autofocus>
							</div>
							<div class="form-group">
								<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
								<input type="text" class="form-control" id="recipient-name"
									placeholder="��й�ȣ�� �Է��� �ּ���." required autofocus>
							</div>
							<div class="form-group">
								<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
								<input type="text" class="form-control" id="recipient-name"
									placeholder="��й�ȣ�� ���Է� ���ּ���." required autofocus>
							</div>
							<div class="form-group">
								<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
								<input type="text" class="form-control" id="recipient-name"
									placeholder="host123@example.com" required autofocus>
							</div>
							<div class="form-group">
								<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
								<input type="text" class="form-control" id="recipient-name"
									placeholder="'-'���� �Է�" required autofocus>
							</div>
							<div>
								<input class="btn btn-lg btn-dark btn-block text-uppercase"
									type="submit" value="�����ϱ�" onclick="join_click();">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function join_click() {
			alert("ȸ�������� �Ϸ�Ǿ����ϴ�!");

		}
	</script>
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