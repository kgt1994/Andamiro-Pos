<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#orderSettings {
	width: 300px;
	height: 310px;
	background-color: darkorange;
}

#moneySettings {
	background-color: chocolate;
	width: 300px;
	height: 100px;
}

#endSettings {
	width: 300px;
	height: 100px;
	background-color: cornflowerblue;
}

#receiptSettings {
	width: auto;
	height: auto;
	max-width: 500px;
	max-height: 100px;
}

#menuSettings {
	background-color: darksalmon;
	width: 300px;
	height: 100px;
}

#tableSettings {
	background-color: burlywood;
	width: 300px;
	height: 100px;
}

#money {
	background-color: olivedrab;
	width: 300px;
	height: 100px;
}

#sales_account {
	background-color: royalblue;
	width: 300px;
	height: 100px;
}

#restart {
	background-color: violet;
	width: 300px;
	height: 100px;
}
</style>
</head>
<body>
	<div class="row">
		<div class="col-xs-6 col-md-3">
			<table style="margin-left: auto; margin-right: auto;">
				<tbody>
					<tr>
						<td rowspan="3"><a>
								<form action="order.do">
									<input type="submit" value="주문관리 " id="orderSettings">
								</form>
						</a></td>

						<td><a>
								<form action="#.jsp">
									<input type="submit" value="영업준비금 " id="moneySettings">
								</form>
						</a></td>
					</tr>
					<tr>
						<td><a>
								<form action="#.jsp">
									<input type="submit" value="마감관리 " id="endSettings">
								</form>
						</a></td>
					</tr>
					<td><a>
							<button type="button" id="money">테이블 관리</button>
					</a></td>
					<tr>

						<td><a>
								<form action="sales_account.do">
									<input type="submit" value="매출 확인 " id="sales_account">
								</form>
						</a></td>
						<td><a>
								<form action="#.jsp">
									<input type="submit" value="메뉴관리 " id="menuSettings">
								</form>
						</a></td>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>

</html>