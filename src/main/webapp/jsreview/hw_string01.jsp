<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>homework3_array.jsp</title></head>
<body>
<input type="text" id="userno">
<input type="text" id="username">
<input type="text" id="userId">
<input type="text" id="userRegDate">
<div id="result">1,홍길동,hong,2019/12/01</div>
<script>
	//div의 값을 콤마(,)로 분리하여 각각의 텍스트필드에 출력 split() 함수 사용
	const str = document.getElementById("result").innerHTML;
	console.log(str);
	const arr = str.split(",");
	console.log(arr);
	for(i = 0; i < arr.length; i++){
		document.getElementsByTagName("input")[i].value = arr[i];
	}
</script>
</body>
</html>