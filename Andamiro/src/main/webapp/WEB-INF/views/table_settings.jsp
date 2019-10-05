<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다)
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요
<script src="./resources/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<style>
#draggable {
	width: 150px;
	height: 150px;
	padding: 0.5em;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#draggable").draggable();
	});
</script>
</head>
<body>

	<div id="draggable" class="ui-widget-content">
		<p>Drag me around</p>
	</div>
</body>
</html> -->
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Drag and Drop Interaction Ideas | Modal</title>
<meta name="description"
	content="Inspiration for drag and drop interactions for the modern UI" />
<meta name="keywords"
	content="drag and drop, interaction, inspiration, web design, ui" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css"
	href="./resources/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="./resources/css/demo.css" />
<link rel="stylesheet" type="text/css" href="./resources/css/modal.css" />
<script src="./resources/js/modernizr.custom.js"></script>
</head>
<body class="skin-3">
	<div class="container">
		<div class="content">
			<div id="grid" class="grid clearfix">
				<div class="grid__item">
					<i class="fa fa-fw fa-file-archive-o"></i>
				</div>
				<div class="grid__item">
					<i class="fa fa-fw fa-file-image-o"></i>
				</div>
				<div class="grid__item">
					<i class="fa fa-fw fa-file-word-o"></i>
				</div>
				<div class="grid__item">
					<i class="fa fa-fw fa-file-excel-o"></i>
				</div>
				<div class="grid__item">
					<i class="fa fa-fw fa-file-code-o"></i>
				</div>
				<div class="grid__item">
					<i class="fa fa-fw fa-file-pdf-o"></i>
				</div>
				<div class="grid__item">
					<i class="fa fa-fw fa-file-code-o"></i>
				</div>
				<div class="grid__item">
					<i class="fa fa-fw fa-file-sound-o"></i>
				</div>
				<div class="grid__item">
					<i class="fa fa-fw fa-file-video-o"></i>
				</div>
				<div class="grid__item">
					<i class="fa fa-fw fa-file-archive-o"></i>
				</div>
				<div class="grid__item">
					<i class="fa fa-fw fa-file-image-o"></i>
				</div>
				<div class="grid__item">
					<i class="fa fa-fw fa-file-sound-o"></i>
				</div>
			</div>
		</div>
		<!-- /content -->
	</div>
	<!-- /container -->
	<div id="drop-area" class="drop-area">
		<div class="drop-area__item"></div>
		<div class="drop-area__item"></div>
	</div>
	<div class="drop-overlay"></div>
	<script src="./resources/js/draggabilly.pkgd.min.js"></script>
	<script src="./resources/js/dragdrop.js"></script>
	<script>
		(function() {
			var body = document.body, dropArea = document
					.getElementById('drop-area'), droppableArr = [], dropAreaTimeout;

			// initialize droppables
			[].slice
					.call(
							document
									.querySelectorAll('#drop-area .drop-area__item'))
					.forEach(
							function(el) {
								droppableArr
										.push(new Droppable(
												el,
												{
													onDrop : function(instance,
															draggableEl) {
														// show checkmark inside the droppabe element
														classie
																.add(
																		instance.el,
																		'drop-feedback');
														clearTimeout(instance.checkmarkTimeout);
														instance.checkmarkTimeout = setTimeout(
																function() {
																	classie
																			.remove(
																					instance.el,
																					'drop-feedback');
																}, 800);
														// ...
													}
												}));
							});

			// initialize draggable(s)
			[].slice
					.call(document.querySelectorAll('#grid .grid__item'))
					.forEach(
							function(el) {
								new Draggable(
										el,
										droppableArr,
										{
											draggabilly : {
												containment : document.body
											},
											onStart : function() {
												// add class 'drag-active' to body
												classie
														.add(body,
																'drag-active');
												// clear timeout: dropAreaTimeout (toggle drop area)
												clearTimeout(dropAreaTimeout);
												// show dropArea
												classie.add(dropArea, 'show');
											},
											onEnd : function(wasDropped) {
												var afterDropFn = function() {
													// hide dropArea
													classie.remove(dropArea,
															'show');
													// remove class 'drag-active' from body
													classie.remove(body,
															'drag-active');
												};

												if (!wasDropped) {
													afterDropFn();
												} else {
													// after some time hide drop area and remove class 'drag-active' from body
													clearTimeout(dropAreaTimeout);
													dropAreaTimeout = setTimeout(
															afterDropFn, 400);
												}
											}
										});
							});
		})();
	</script>
</body>
</html>
