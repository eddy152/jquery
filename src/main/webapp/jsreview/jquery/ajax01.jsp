<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function () {
		$("#btn").on("click", function () {
			var param = "userid=" + $("#userid").val();
			var url = "../../FindName";
			//1. load
			//$("#demo").load(url + "?" + param);
			
			//2. post/get -> jQuery.get( url [, data ] [, success ] [, dataType ] )
			param = {userid : $("#userid").val(), dept : "newDept"}; //?userid=aaa&dept=newDept
			$.post(url, param, function (response) {
				$("#demo").append("post : " + response);
			}); // 비동기
			
			//3.ajax -> jQuery.ajax( url [, settings ] )
			$.ajax(url, {
				async : true, // true : 비동기 , false : 동기
				success : function(response) {
					$("#demo").append(" ajax : " + response);
				},
				data : param
			});
		});
	});
</script>
</head>
<body>
	<div id="demo">
		<h2>The XMLHttpRequest Object</h2>
	</div>
	<input id="userid">
	<button type="button" id="btn">Change Content</button></body>
</html>
