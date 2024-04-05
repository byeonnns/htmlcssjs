<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Javascript - Object</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			// 객체 표기법 { }
			var var1 = 3;
			var var2 = "abc";
			var var3 = () => {};
			var var4 = {};
			var var5 = [];
			console.log("var1의 타입 : ", typeof(var1));
			console.log("var2의 타입 : ", typeof(var2));
			console.log("var3의 타입 : ", typeof(var3));
			console.log("var4의 타입 : ", typeof(var4));
			console.log("var5의 타입 : ", typeof(var5));
			
			// 객체 생성
			var car = {
				// 필드 (속성)
				company : "현대자동차",
				name : "그랜저",
				price : 50000000,
			};
			
			// 속성 값 읽기
			console.log(car.company);
			console.log(car["company"]);
			console.log(car.name);
			console.log(car["name"]);
			console.log(car.price);
			console.log(car["price"]);
			console.log(typeof(car.company));
			console.log("");
			
			// 속성 값 변경
			car.company = "포르쉐";
			car.name = "911";
			console.log(car["company"]);
			console.log(car["name"]);
			
			// 객체의 메소드 정의
			car = {
				// 필드 (속성)
				company : "현대자동차",
				name : "그랜저",
				price : 50000000,
				speed : 0,
					
				// 메소드
				/* run : function() { // 본인 속성을 읽을 때 반드시 this를 사용해줘야 함
					this.setSpeed(60);
					console.log(this.company + "의 " + this.name + "가 " + this.speed + "km/h로 달립니다.");
				}, */
				
				run() {
					this.setSpeed(60);
					console.log(this.company + "의 " + this.name + "가 " + this.speed + "km/h로 달립니다.");
				},
				
				/* setSpeed : function(speed) {
					this.speed = speed;
				}, */
				
				setSpeed(speed) {
					this.speed = speed;
				},
				
				toString : function() {
					return this.company + " - " + this.name;
				},	
				
				sound : () => {
					console.log("슈퍼에서 빠는 팡, 아니.. 빠는 빵.. 아니.. 슈퍼에서 빵~");
				}
				
				// 객체 메소드 선언시에는 되도록이면 화살표 함수로 선언하지 말자.
				// 화살표 함수 내에서 this는 객체 자신을 가리키는 의미가 아니다. window 객체를 참조한다고 한다.
				// js에서 오버로딩은 기존 메소드를 사라지게 하는 효과 -> 의미가 없다.
			};
			
			// 메소드 호출
			car.run();
			var info = car.toString();
			console.log("info : ", info);
			car.sound();
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam05_object</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>