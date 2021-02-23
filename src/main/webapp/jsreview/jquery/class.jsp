<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		//li태그에 클릭 이벤트
		$("li.menu").on("click", function() {
			//alert($(this).text()); //jquery
			//alert(this.innerText); //js
			$("li.menu").removeClass("active");
			$(this).addClass("active");
		})
	})
</script>
<style type="text/css">
	.menu{
		border: 1px solid blue;
		background-color: yellow;
	}
	.active {
		background-color: yellowgreen;
	}
	li:hover{
		background-color: red;
		cursor: pointer;
	}
</style>
</head>
<body>
	<ul>
		<li class="menu" data-num="1">게시판</li>
		<li class="menu" data-num="2">회원가입</li>
		<li class="menu active" data-num="3">로그인</li>
		<li class="menu" data-num="4">QnA</li>
	</ul>
</body>
</html>