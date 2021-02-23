<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div { display: inline-block; 
	width : 100px; 
	height: 100px;
	border: 1px solid black; }
</style>

</head>
<body>
<script>
	for(i=0; i<10; i++) {
		var div = document.createElement("div");
		div.innerHTML = i;
		div.onclick = clickHandler
		document.body.appendChild(div);
	}
	function clickHandler(e) {
		var dLng = document.getElementsByTagName("div").length;
		console.log(dLng);
		if(dLng == 10) {
			var nStart = new Date().getTime();
			console.log(nStart);
		}
		console.log(e.target.innerHTML, '클릭됨')
		e.target.remove();
		//클릭된 태그를 삭제
		//모두 제거되었을때 "모두 제거 되었습니다." 출력
		if(dLng == 1){
			var nEnd = new Date().getTime();
			console.log(nEnd);
			var nDiff = nEnd - nStart; 
			console.log("모두 제거 되었습니다!! 시간 :" + nDiff + "ms");
		}
	}
</script>
</body>
</html>