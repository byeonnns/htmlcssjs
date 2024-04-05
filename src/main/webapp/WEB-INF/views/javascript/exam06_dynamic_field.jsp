<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Dynamic Field</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			const car = {};
			// 동적 속성 추가
			car.name = "그랜저";
			car.price = 5000;
			// 동적 메소드 추가
			car.start = function() {
				console.log("시동을 겁니다.");
			}
			console.log(car);
			car.start();
			car["start"](); // 이것도 가능하다. 변수 처리해서 사용 가능해서 좋을 듯
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam06_dynamic_field</div>
		    <div class="card-body">
				content
			</div>
		</div>
	</body>
</html>