<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>String Methods</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			var data = "123456-7890123";
			console.log("전체 문자 수 : ", data.length); // length는 메소드가 아닌 string 객체가 가지는 속성의 값이다. (길이가 저장된다)
			console.log("성별 숫자 : ", data.charAt(7)); // 1
			console.log("포함 여부 : ", data.includes("567")); // true
			console.log("포함 여부 : ", data.indexOf("7890123")); // 7
			console.log("추출하기 : ", data.slice(0, 6)); // 123456
			console.log("추출하기 : ", data.slice(7)); // 7890123
			console.log("토큰 배열 : ", data.split("-")); // ['123456','7890123']
			console.log("추출하기 : ", data.substr(0,6)); // 123456
			console.log("추출하기 : ", data.substr(7)); // 7890123
			console.log("추출하기 : ", data.substring(0,6)); // 123456
			console.log("추출하기 : ", data.substring(7)); // 7890123
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam13_string</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>