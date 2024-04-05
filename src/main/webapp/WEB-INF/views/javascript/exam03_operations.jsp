<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Javascript - Operations</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script type="text/javascript">
			// 산술 연산자
			var var1 = 2 ** 3;
			console.log("var1 : ", var1);
			console.log("");
			
			// 비교 연산자
			console.log(3 == "3"); // true
			console.log(3 === "3"); // false
			console.log(3 != "3"); // false
			console.log(3 !== "3"); // true
			
			// 논리 연산자
			var var2 = true;
			var var3 = false;
			
			console.log(var2 && var3); // false
			console.log(var2 && "홍길동"); // 첫번째 값이 false면 무조건 false, 첫번째 값이 true면 두번째 값이 최종값이 됨 -> 홍길동
			console.log(var3 && "홍길동"); // 첫번째 값이 false 이므로 무조건 false
			
			console.log(var2 || var3); // 첫번째 값이 true면 무조건 true, 첫번째 값이 false면 두번째 값이 최종값이 됨
			console.log(var2 || "홍길동"); // true
			console.log(var3 || "홍길동"); // 첫 값이 false이므로 최종 값은 홍길동
			
			console.log(!var3); // true
			
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam03_operations</div>
		    <div class="card-body">
				content
			</div>
		</div>
	</body>
</html>