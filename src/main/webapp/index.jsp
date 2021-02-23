<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<style></style>

</head>
<body>
	<h2>Hello World!</h2>
	<div id="result">이벤트 테스트</div>
	<div id="result2">두번째</div>
	<script>
		var div = document.getElementById("result");
		var div2 = document.getElementById("result2");
		//type / handler / event객체
		div.onclick = cleckHandler
		div2.onclick = cleckHandler
		
		function cleckHandler(e) {
			console.log(e.target.id, e.clientX, e.clientY);
		}
	</script>
</body>
</html>