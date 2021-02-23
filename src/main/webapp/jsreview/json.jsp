<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="result"></div>
<script type="text/javascript">
	var emp = [
				{id:100, name:"scott", hiredate:"2020/01/01"},
				{id:101, name:"홍길동", hiredate:"2020/01/01"},
				{id:102, name:"김유신", hiredate:"2020/01/01"}
			  ];
	//사원의 이름을 div에 출력
	for(i = 0; i < emp.length; i++){
		document.getElementById("result").innerHTML += "<h1>" + emp[i].name + "</h1>";
	}
	for(e of emp){
		document.getElementById("result").innerHTML += "<h1>" + e.name + "</h1>";
	}
	//부서정보를 저장
	var depts = [
					{DEPARTMENT_ID:10, DEPARTMENT_NAME:"Administartion", MANAGER_ID:200, LOCATION_ID:1700},
					{DEPARTMENT_ID:20, DEPARTMENT_NAME:"Marketing", MANAGER_ID:201, LOCATION_ID:1800}
				];
	//
	var member = [
					{ name : "hong", hobbys : ["독서", "달리기"] },
					{ name : "hong", hobbys : ["스키", "달리기"] }
				 ];
	document.getElementById("result").innerHTML += "<h1>" + member[1].hobbys[0] + "</h1>";
	
</script>
</body>
</html>