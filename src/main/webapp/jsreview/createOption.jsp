<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>createOption.jsp</title>
<script type="text/javascript">
	function addFruit() {
		//input tag의 값을 select의 옵션 태그 만들어서 추가
		var list = document.getElementById("list");
		if(list.length != list.size) {
		var op = document.createElement("option");
		var fr = document.getElementById("fruit").value;
		op.innerHTML = fr;
		document.getElementById("list").add(op);
		
		//테이블에 내용 추가
		var table = document.getElementById("tbl");
		var row = table.insertRow();
		var cell = row.insertCell();
		cell.innerText = fr;
		
		//input tag는 clear
		document.getElementById("fruit").value = "clear";
		} else {
			alert("최대 10개까지 저장 가능합니다.");
		}
	}
</script>
</head>
<body>
	<input id="fruit"><button type="button" onclick="addFruit()">등록</button>
	 <select id="list" size="10"></select>
	<table id="tbl"></table>
</body>
</html>