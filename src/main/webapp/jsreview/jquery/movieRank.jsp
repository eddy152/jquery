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
			//버튼을 클릭하면 박스오피스 정보를 조회해서 영화제목과 영화코드를 rank div에 출력
			$.ajax({
				url : "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221",
				success : function (rank) {
					var list = rank.boxOfficeResult.dailyBoxOfficeList;
					for(i = 0; i < list.length; i++) {
						$("#rank").append("<tr class='row'><td>" + list[i].rnum + "</td>"
								  		 + "<td>" + list[i].movieNm + "</td>"
								  		 + "<td>" + list[i].movieCd + "</td></tr>");
					}
				},
				dataType : "json",
			});
		});
		$("#rank").on("click", ".row", function () {
			var movieCd = $(event.target).parent().children().last().text();
			console.log(movieCd);
			$.ajax({
				url : "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd="
						+ movieCd,
				success : function (info) {
					var list2 = info.movieInfoResult.movieInfo;
					$("#info").append("<tr><td>제목</td><td>" + list2.movieNm + "</td>"
					  		 		+ "<tr><td>개봉일</td><td>" + list2.openDt + "</td></tr>");
					for (i = 0; i < list2.genres.length; i++)
						$("#info").append("<tr><td>장르</td><td>" + list2.genres[i].genreNm) + "</td>";
					for (i = 0; i < list2.actors.length; i++)
						$("#info").append("<tr><td>출연 배우</td><td>" + list2.actors[i].peopleNm) + "</td>";
				},
				dataType : "json"
			});
		});
	});
</script>
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
		<button id="btn">박스오피스조회</button>
		<br />
		<table border="1" id="rank"></table>
		<br />
		<table border="1" id="info"></table>
	</div>
</body>
</html>