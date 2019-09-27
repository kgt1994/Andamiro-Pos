<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>업장선택페이지</title>

<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="./resources/js/bootstrap.min.js"></script>

<style>
#ImageSettings {
	max-width: 300px;
	max-height: 300px;
}
</style>
</head>
<body>
	<div class="row">
		<div class="col-xs-6 col-md-3">
			<table style="margin-left: auto; margin-right: auto;">
				<tr>
					<td><div class="thumbnail" data-toggle="modal"
							data-target="#exampleModal" data-whatever="@mdo">
							<img src="./resources/image/twosome.png" id="ImageSettings"></div></td>
					<td><a href="main.jsp" class="thumbnail"> <img
							src="./resources/image/def.jpg" id="ImageSettings"></a></td>
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
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="recipient-name" class="control-label"></label> <input
								type="text" class="form-control" id="recipient-name"
								placeholder="아이디를 입력해 주세요." required autofocus>
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label"></label> <input
								type="text" class="form-control" id="recipient-name"
								placeholder="비밀번호를 입력해 주세요." required autofocus>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>

					<form action="settings.do">
						<input class="btn btn-success" type="submit" value="login">
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>