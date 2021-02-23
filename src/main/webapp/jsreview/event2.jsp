<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="result" align="center"><h1>event test</h1></div>
<script type="text/javascript">
	result.addEventListener("click", function() {
		alert(this.innerHTML);
	});
	result.addEventListener("click", function() {
		alert("click!!");
	});
</script>
</body>
</html>