<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Date</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			// 브라우저가 실행하는 컴퓨터의 현재 날짜 및 시간 객체 얻기
			const now = new Date();
			
			// 정보 얻기
			var year = now.getFullYear();
			var month = now.getMonth() + 1;
			var date = now.getDate();
			var hour = now.getHours();
			var minute = now.getMinutes();
			var sec = now.getSeconds();
			
			console.log(year, month, date, hour, minute, sec);
			console.log(now);
			console.log(now.toLocaleDateString());
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam14_date</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>