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
	<input id="userid">
	<button type="button" onclick="loadDoc()">Change Content</button>

	<script>
		function loadDoc() {
			//1. XHR객체를 생성
			var xhttp = new XMLHttpRequest();
			//2. 콜백함수
			xhttp.onreadystatechange = function() {
				if (this.readyState < 4) {
					document.getElementById("demo").innerHTML = "loading...";
					
				} else if (this.readyState == 4) {
					if(this.status == 200) {
						document.getElementById("demo").innerHTML = this.responseText;
					} else {
						document.getElementById("demo").innerHTML = this.status + " error";
					}
				}
			}
			//3. 요청준비 (url)
			var param = "userid=" + document.getElementById("userid").value;
			xhttp.open("POST", "../FindName?" + param);
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			//4. 요청 시작
			xhttp.send();
			//document.getElementById("demo").innerHTML += "ajax send";
		}
	</script>
</body>
</html>
