<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() { //document ready
		$("#btn").bind("click", function() { //해당 태그에 직접 이벤트
			$("#result").append($("<li>").html("JSP")
										 .css("backgroundColor", "yellow")
										 .attr("id", "liTag")
										 .prop("alt", "text")
										 .data("num", "10") );
		});
		$("ul").bind("click", "li", function() { //그룹이벤트(이벤트 실행을 부모태그에 위임)
			$(event.target).remove();
			console.log(this);
		})	
	})
	
	/*
	$(window).bind("load", function() {
		$("#btn").bind("click", function() {
			$("#result").append($("<li>").html("JSP"));
		});
	});
	-->
	*/
</script>
<!-- 
<script type="text/javascript">
	//페이지 로드 이벤트
	window.addEventListener("load", function(){
		document.getElementsByTagName("ul")[0].addEventListener("click", function(){
			//this.remove();
			event.target.parentNode.removeChild(event.target);
		});
		document.getElementById("btn").addEventListener("click", function(){
			//li태그 생성
			var li = document.createElement("li");
			li.innerHTML = "자바";
			document.getElementById("result").appendChild(li);
		});
	});
</script>
 -->
</head>
<body>
	<button type="button" id="btn">추가</button>
	<ul id="result">
		<li>스프링</li>
	</ul>
</body>
</html>