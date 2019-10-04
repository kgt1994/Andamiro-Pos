<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="./resources/js/bootstrap.min.js"></script>
<style>
div.post {
	float: left;
	width: 150px;
	height: 150px;
	padding: 10px 0px 0px 20px;
	background-color: #f9d716;
	border: 1px solid black;
	box-shadow: 2px 2px 2px;
}

div.color {
	background-color: salmon;
}
</style>

<script>
	$(".post").draggable({
		cursor : "move",
		stack : ".post",
		opacity : 0.8
	});

	$(".post").bind("dragstart", function(event, ui) {
		$(this).addClass("color"); //bgi 체인지
	});
	$(".post").bind("dragstop", function(event, ui) {
		$(this).removeClass("color") //bgi 체인지
	});
</script>
</head>
<body>
	<div class="post">
		<p>hello</p>
	</div>

	<div class="post">
		<p>
			Lorem ipsum dolor <br /> sit amet, consecteturlit. Aenean
		</p>
	</div>

	<div class="post">
		<p>Drag me</p>
	</div>

	<div class="post">
		<p>What a Wonderful</p>
		<img src="http://sevensprings.dothome.co.kr/img/6.jpg" width="130"
			height="80" />
	</div>

</body>
</html>