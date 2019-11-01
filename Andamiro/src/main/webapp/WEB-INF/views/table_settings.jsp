<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<style>
.droptarget {
	width: 100px;
	height: 100px;
	margin: 15px;
	padding: 10px;
	border: 1px solid #aaaaaa;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
</body>
</html>