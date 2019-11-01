<%@page import="com.andamiro.pos.model.MemberDTO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
		String name;
	%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>업장선택페이지</title>

<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700" rel="stylesheet">
<link rel="stylesheet" href="./resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/magnific-popup.css">
<link rel="stylesheet" href="./resources/css/jquery-ui.css">
<link rel="stylesheet" href="./resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="./resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="./resources/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="./resources/css/aos.css">
<link rel="stylesheet" href="./resources/css/style.css">

<style>
#ImageSettings {
	max-width: 300px;
	max-height: 300px;
}
</style>
</head>
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
						<ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
					
						
						<li>강근태님 안녕하세요!</li>
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

		<div class="row">
			<div class="col-xs-6 col-md-3">
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<td><div class="thumbnail" data-toggle="modal"
								data-target="#exampleModal" data-whatever="@mdo">
								<img src="./resources/image/twosome.png" id="ImageSettings">
							</div></td>
					</tr>
				</table>
			</div>
		</div>

		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="exampleModalLabel">Login</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<form action="shoppw.do" method="post">
						<div class="modal-body">
							<div class="form-group">
								<label for="message-text" class="control-label"></label> 
								<input type="password" class="form-control" name="shop_pw"
									placeholder="비밀번호를 입력해 주세요." required autofocus>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
							<input class="btn btn-success" type="submit" value="login">
						</div>
					</form>


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