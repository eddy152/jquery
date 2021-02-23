<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findTag.jsp</title>
<script type="text/javascript">
	function toSm() {
		var num = document.getElementsByTagName("img");
		
		for(i = 0; i < num.length; i++){
			var s = num[i].width;
			s = parseInt(s) - 100 + "px";
			num[i].style.width = s;
		}
	}
</script>
</head>
<body>
	<button type="button" onclick="toSm()">작게</button><br/>
	<img id="img1" style = width:500px src="../images/Tulips.jpg">
	<img class="backimg" style = width:600px src="../images/Lighthouse.jpg">
	<img class="backimg" style = width:700px src="../images/Hydrangeas.jpg">
</body>
</html>