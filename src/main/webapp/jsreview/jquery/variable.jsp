<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//"use strict"; 변수 선언
	var v1 = 50; //var = 지역 변수 선언 
	//v1 = 60; 전역 변수 -> script 어디에서나 사용 가능
	function f1() {
		{
			//var i1 = 10; 지역 변수
			let i1 = 10; //블록 변수
		}
		console.log(i1 + ", "+ v1)
	}
	
	function f2() {
		//var은 지역변수라 i1은 f2()에서 사용 불가능  
		console.log(i1 + ", " + v1)
	}
</script>
</head>
<body>

</body>
</html>