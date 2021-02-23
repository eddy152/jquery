<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
tr {
	cursor: pointer;
}
.row:hover {
	background-color: lightyellow;
}
</style>
</head>
<body>
	<div id="result" align="center">
		<button id="btn" onclick="loadMovie()">박스오피스조회</button>
		<br />
		<table border="1" id="tbl"></table>
		<br />
		<table border="1" id="tbl2"></table>
	</div>
	<script type="text/javascript">
		function add(key, value) {
			var tr = document.createElement("tr");
			var td = document.createElement("td");
			var td1 = document.createElement("td");
			td.innerHTML = key;
			td1.innerHTML = value;
			tr.appendChild(td);
			tr.appendChild(td1);
			document.getElementById("tbl2").appendChild(tr);
		}
		function loadInfo(movieCd) {
			//코드에 해당하는 영화의 상세정보를 조회 - 감독, 출연배우, ...
			var cell = document.getElementById("tbl2");
			while (cell.hasChildNodes()) {
				cell.removeChild(cell.firstChild);
			}
			var xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				var list = JSON.parse(this.responseText).movieInfoResult.movieInfo;
				add("제목", list.movieNm);
				add("개봉일", list.openDt);
				for (i = 0; i < list.genres.length; i++)
					add("장르", list.genres[i].genreNm);
				for (i = 0; i < list.actors.length; i++)
					add("출연 배우", list.actors[i].peopleNm);
				console.log(list);
			}
			var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd="
					+ movieCd;
			xhttp.open("GET", url);
			xhttp.send();

		}
		function loadMovie() {
			if (document.getElementById("tbl").children.length < 10) {
				var xhttp = new XMLHttpRequest();
				xhttp.onload = function() {
					var list = JSON.parse(this.responseText).boxOfficeResult.dailyBoxOfficeList;
					for (i = 0; i < list.length; i++) {
						var tr = document.createElement("tr");
						var td = document.createElement("td");
						var td1 = document.createElement("td");
						var td2 = document.createElement("td");
						tr.setAttribute("class", "row");
						tr.setAttribute("align", "center");
						tr.setAttribute("onClick", "loadInfo('" + list[i].movieCd + "')")
						td.innerHTML = list[i].rnum + "위";
						td1.innerHTML = list[i].movieNm;
						td2.innerHTML = list[i].movieCd;
						tr.appendChild(td);
						tr.appendChild(td1);
						tr.appendChild(td2);
						document.getElementById("tbl").appendChild(tr);
					}
				}
				var url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221";
				xhttp.open("GET", url);
				xhttp.send();
			}
		}
	</script>
</body>
</html>