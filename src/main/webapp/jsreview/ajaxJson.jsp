<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="demo">
		<h2>The XMLHttpRequest Object</h2>
	</div>
	<button type="button" onclick="loadDoc()">Change Content</button>

	<script>
		function loadDoc() {
			//1. XHR객체를 생성
			var xhttp = new XMLHttpRequest();
			//2. 콜백함수
			xhttp.onload = function() {
				members = JSON.parse(this.responseText);
				document.getElementById("demo").innerHTML += members.hobbys[0] + " ";
			};
			xhttp.onerror = function() {
				document.getElementById("demo").innerHTML += this.status;
			};
			//3. 요청준비 (url)
			xhttp.open("GET", "../FindMember");
			//4. 요청 시작
			xhttp.send();
		}
	</script>
</body>
</html>
