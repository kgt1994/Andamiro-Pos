<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {
	box-sizing: border-box;
}

.wrapper {
	max-width: 940px;
	margin: 0 auto;
}

.wrapper>div {
	border: 2px solid rgb(233, 171, 88);
	border-radius: 5px;
	background-color: rgba(233, 171, 88, .5);
	padding: 1em;
	color: #d9480f;
}

.wrapper {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	grid-gap: 10px;
	grid-auto-rows: minmax(100px, auto);
}

.one {
	grid-column: 1/3;
	grid-row: 1;
}

.two {
	grid-column: 2/4;
	grid-row: 1/3;
}

.three {
	grid-column: 1;
	grid-row: 2/5;
	width: 300px;
	height: 310px;
}

.four {
	grid-column: 3;
	grid-row: 3;
}

.five {
	grid-column: 2;
	grid-row: 4;
}

.six {
	grid-column: 3;
	grid-row: 4;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="three">
			<a>
				<form action="order.jsp">
					<input type="submit" value="주문관리 " id="orderSettings">
				</form>
			</a>
		</div>
		<div class="one">One</div>
		<div class="two">Two</div>
		<div class="four">Four</div>
		<div class="five">Five</div>
		<div class="six">Six</div>
	</div>
</body>
</html>