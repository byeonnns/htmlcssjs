<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Getter and Setter</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			const car = {
				name : "그랜저",
				price : 5000,
				speed : 100,
				start : function() {
					console.log("시동을 겁니다.");
				},
				// Setter 선언
				set kmSpeed(meter) {
					this.speed = meter / 0.621371;
				},
				// Getter 선언
				get kmSpeed() {
					return this.speed * 0.621371;
				},
				// set과 get은 한 쌍으로 쓰인다 -> 동일한 메소드 이름을 가져야 한다 (오버로딩의 개념은 아닌듯?)
				
			};
			
			car.kmSpeed = 100; // 속성을 사용하는 것처럼 보이지만 사실은 Setter를 호출하고 매개변수로 100을 준 것
			console.log("현재 속도(km/h) : ", car.kmSpeed);
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam07_getter_setter</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>