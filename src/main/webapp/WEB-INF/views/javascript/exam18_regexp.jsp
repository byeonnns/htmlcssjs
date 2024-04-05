<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>RegExp</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			var tel = "010-1234-1234";
			// regexp 객체가 생성되어 pattern에 번지가 전달됨
			// 패턴이 연달아나오기만 하면 true -> 010-1234-1234-123도 true로 봄
			// /^가 시작이다, $가 끝이다 라고 명시해줌 -> 010-1234-1234-123을 false로 봄
			const pattern = /^(010|011)-\d{3,4}-\d{4}$/; // 큰 따옴표로 묶지 않고 그대로 사용
			
			// 전화번호 유효성 검사
			var result = pattern.test(tel);
			console.log(result);
			
			// 이메일 유효성 검사
			var email = "fall@naver.co.kr"
			const emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			// /^는 시작, \w+는 문자 하나 이상, [\.-]는 .이나 -가 와도 된다, \w+는 문자 하나 이상, *는 0개 이상, @가 와야함
			// \.은 .이 와도 된다, \w{2,3}은 2자나 3자가 와야 함
			console.log(emailPattern.test(email));
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam18_regexp</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>