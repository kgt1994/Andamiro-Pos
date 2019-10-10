<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
						
						<!-- form class="form-label-group"-->
						<form:form modelAttribute="memberDTO" name="memberDTO"
							class="form-horizontal" role="form" action="join.do"
							method="post">
							<div class="form-group">
								<label for="recipient-name" class="control-label"></label>
								<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
								<form:input path="id" type="text" class="form-control" name="id"
									placeholder="���̵� �Է��� �ּ���." />
								<form:errors path="id" cssClass="error" />
							</div>
							<div class="form-group">
								<label for="message-text" class="control-label"></label>
								<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
								<form:input path="pw" type="password" class="form-control"
									name="pw" placeholder="��й�ȣ�� �Է��� �ּ���." />
								<form:errors path="pw" cssClass="error" />
							</div>
							<div class="form-group">
								<label for="message-text" class="control-label"></label>
								<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
								<form:input path="checkPw" type="password" class="form-control"
									name="checkPw" placeholder="��й�ȣ�� ���Է� ���ּ���." />
								<form:errors path="checkPw" cssClass="error" />
							</div>
							<div class="form-group">
								<label for="recipient-name" class="control-label"></label>
								<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
								<form:input path="name" type="text" class="form-control"
									name="name" placeholder="�̸��� �Է��� �ּ���." />
								<form:errors path="name" cssClass="error" />
							</div>
							<div class="form-group">
								<label for="message-text" class="control-label"></label>
								<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
								<form:input path="email" type="text" class="form-control"
									name="email" placeholder="�̸��ϸ� �Է��� �ּ���" />
								<form:errors path="email" cssClass="error" />
							</div>
							<div class="form-group">
								<label for="message-text" class="control-label"></label>
								<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
								<form:input path="phone" type="text" class="form-control"
									name="phone" placeholder="�޴��� ��ȣ�� �Է����ּ���" />
								<form:errors path="phone" cssClass="error" />
							</div>
							<div class="modal-footer">
								<input type="reset" class="btn btn-danger" data-dismiss="modal"
									value="Close" /> 
								<input type="submit" class="btn btn-lg btn-dark btn-block text-uppercase"
									value="�����ϱ�" />
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
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