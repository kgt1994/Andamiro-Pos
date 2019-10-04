<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery (��Ʈ��Ʈ���� �ڹٽ�ũ��Ʈ �÷������� ���� �ʿ��մϴ�) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- ��� �����ϵ� �÷������� �����մϴ� (�Ʒ�), ������ �ʴ´ٸ� �ʿ��� ������ ������ �����ϼ��� -->
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
		$(this).addClass("color"); //bgi ü����
	});
	$(".post").bind("dragstop", function(event, ui) {
		$(this).removeClass("color") //bgi ü����
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