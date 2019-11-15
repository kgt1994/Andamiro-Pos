<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
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
	href="./resources/fonts/law-icons/font/flaticon.css">

<link rel="stylesheet"
	href="./resources/fonts/fontawesome/css/font-awesome.min.css">


<link rel="stylesheet" href="./resources/css/slick.css">
<link rel="stylesheet" href="./resources/css/slick-theme.css">

<link rel="stylesheet" href="./resources/css/helpers.css">
<link rel="stylesheet" href="./resources/css/style.css">
<link rel="stylesheet" href="./resources/css/landing-2.css">
<script>
	$(function() {
		$("#droptarget").draggable();
	});
</script>

<script>
	/* Events fired on the drag target */
	document
			.addEventListener(
					"dragstart",
					function(event) {
						// The dataTransfer.setData() method sets the data type and the value of the dragged data
						event.dataTransfer.setData("Text", event.target.id);

						// Output some text when starting to drag the p element
						document.getElementById("demo").innerHTML = "Started to drag the p element.";

						// Change the opacity of the draggable element
						event.target.style.opacity = "0.4";
					});

	// While dragging the p element, change the color of the output text
	document.addEventListener("drag", function(event) {
		document.getElementById("demo").style.color = "red";
	});

	// Output some text when finished dragging the p element and reset the opacity
	document
			.addEventListener(
					"dragend",
					function(event) {
						document.getElementById("demo").innerHTML = "Finished dragging the p element.";
						event.target.style.opacity = "1";
					});

	/* Events fired on the drop target */

	// When the draggable p element enters the droptarget, change the DIVS's border style
	document.addEventListener("dragenter", function(event) {
		if (event.target.className == "droptarget") {
			event.target.style.border = "3px dotted red";
		}
	});

	// By default, data/elements cannot be dropped in other elements. To allow a drop, we must prevent the default handling of the element
	document.addEventListener("dragover", function(event) {
		event.preventDefault();
	});

	// When the draggable p element leaves the droptarget, reset the DIVS's border style
	document.addEventListener("dragleave", function(event) {
		if (event.target.className == "droptarget") {
			event.target.style.border = "";

		}
	});

	/* On drop - Prevent the browser default handling of the data (default is open as link on drop)
	 Reset the color of the output text and DIV's border color
	 Get the dragged data with the dataTransfer.getData() method
	 The dragged data is the id of the dragged element ("drag1")
	 Append the dragged element into the drop element
	 */
	document.addEventListener("drop", function(event) {
		event.preventDefault();
		if (event.target.className == "droptarget") {
			document.getElementById("demo").style.color = "";
			event.target.style.border = "";
			var data = event.dataTransfer.getData("Text");
			event.target.appendChild(document.getElementById(data));
		}
	});
</script>

</head>
<body>
	<div id="droptarget" class="ui-widget-content">
		<p>Drag me around</p>
	</div>

	<div class="droptarget">
		<div draggable="true" id="dragtarget">
			<input type="button" value="버튼"> <input type="button"
				value="버튼2">
		</div>
	</div>

	<div class="droptarget" style="width: 900px; height: 800px">여기다
		테이블 배치</div>

	<p id="demo"></p>



	<!-- 부트스트랩 스크립트 지우면 사망 -->
	<script src="./resources/js/jquery.min.js"></script>

	<script src="./resources/js/popper.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/slick.min.js"></script>
	<script src="./resources/js/jquery.mb.YTPlayer.min.js"></script>

	<script src="./resources/js/jquery.waypoints.min.js"></script>
	<script src="./resources/js/jquery.easing.1.3.js"></script>

	<script src="./resources/js/main.js"></script>
	<!-- 스크립트 모음 -->
</body>
</html>