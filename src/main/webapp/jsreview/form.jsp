<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form.jsp</title>
<script>
	function validateForm() {
		var x = document.forms["myForm"]["fname"].value;
		if (x == "") {
			alert("Name must be filled out");
			return false;
		}
		// value, selectedIndex
		//var job = documnet.fomrs["myForm"]["job"].value;
		//var job = document.myForm.job.value; // <-제일많이씀
		//  var job = document.fomrs[0].elements[1].value; [1]에 idx가들어가든 job이들어가든 상관없음
		// var job = document.getElementsByName("job")[0].value
		var job = document.myForm.job.selectedIndex;
		if (job <= 0) {
			alert("Job must be filled out");
			return false;
		}
		//체크된 갯수가 하나이상인지 체크 확인 (for문)
		document.forms["myForm"].submit();
	}
</script>
</head>
<body>
	<form name="myForm" action="action_page.jsp" method="post">
		Name: <input type="text" name="fname"><br/>
		<select name="job">
			<option value="">선택</option>
			<option value="dgn">디자이너</option>
			<option value="pgm">프로그래머</option>
		</select><br/>
		취미
		<input type="checkbox" name="hobby" value="read">독서
		<input type="checkbox" name="hobby" value="jog">조깅
		<button type="button" onclick="validateForm()">등록</button>
	</form>
</body>
</html>