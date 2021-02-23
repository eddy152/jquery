<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>createOption.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function () {
		//버튼 클릭하면 option태그 생성해서 추가 값은 input 값
		$("#btn").on("click", function () {
			var op = $("<option>").html($("#fruit").val());
			$("#list").append(op.clone());
			$("#tbl").append(op);
		})
	})

</script>
</head>
<body>
	<input id="fruit"><button type="button" id="btn">등록</button>
	<select id="list" size="10"></select>
	<table id="tbl"></table>
</body>
</html>