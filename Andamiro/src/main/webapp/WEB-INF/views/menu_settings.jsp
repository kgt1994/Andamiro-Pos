<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<script type="text/javascript">
		function createRow() {
			var objTable = document.getElementById('table1');
			var objRow = objTable.insertRow(0);

			var cell = objRow.insertCell();
			cell.innerHTML = '���� �������� �߰��ǿ�';
			cell.height = '50';
			cell.align = 'center';
			cell.style.color = '#F30';
		}
	</script>

<body>
	<table id="table1" width="400" border="1">
  <tr>
    <td>ù��(�⺻)</td>
  </tr>
</table>
<input type="button" value="�����" onclick="createRow()" />
</body>
</body>

</html>