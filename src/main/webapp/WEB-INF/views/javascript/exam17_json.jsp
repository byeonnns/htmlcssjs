<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>JSON</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			//JSON : JavaScript Object Notation
			// {"속성명" : 값, "속성명" : 값, ...} 속성 명과 값이 쌍의 형태로 나열되어 있는 형식
			// 반드시 속성 명은 큰 따옴표로 감싸야 함(작은 따옴표 불가)
			// 값의 타입
			// 숫자일 경우 : {"price" : 3000}, {"tall" : 170.5}
			// 문자일 경우 : {"name" : "홍길동"} -> 값도 큰 따옴표로 감싸야 함
			// 객체일 경우 : {"data" : {"bno":1,"title":"제목"}}
			// 배열일 경우 : {"hobby" : ["음악감상", "게임", "여행"]}
			// 용도 : 프론트엔드와 백엔드 사이의 데이터 전달을 위해 사용한다.
			// 자바스크립트 객체와 JSON은 다른 것이다
			
			// 자바스크립트 객체를 JSON으로 변환시키기
			const person = {
				name : "홍길동",
				nation : '한국',
				age : 25,
				family : {father:"홍삼원", mother:'정관순'},
				hobby : ["영화", '게임']
			};
			
			console.log(person);
			
			const strJson = JSON.stringify(person);
			console.log(strJson);
			
			// JSON 문자열을 자바스크립트 객체로 변환시키기
			const person2 = JSON.parse(strJson);
			console.log(person2);
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam17_json</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>