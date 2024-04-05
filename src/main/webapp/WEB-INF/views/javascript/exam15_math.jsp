<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Math</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			console.log(Math.ceil(2.4)); // 3
			console.log(Math.floor(2.7)); // 2
			console.log(Math.round(2.7)); // 반올림 : 3
			console.log(Math.pow(3, 4)); // 3의 4승 : 81
				
			// 주사위 눈 뽑기
			var num = Math.ceil(Math.random() * 6);
			console.log("뽑은 눈 : ", num);
			
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam15_math</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>