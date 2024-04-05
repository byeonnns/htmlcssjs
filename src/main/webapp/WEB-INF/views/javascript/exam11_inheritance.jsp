<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Inheritance - 상속</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			class Car {
				constructor(name="그랜저", price=5000) {
					this.name = name;
					this.price = price;
				}
				
				start() {
					console.log(this.name + " 시동을 겁니다.");
				}
				
				setPrice(price) {
					this.price = price;
				}
			}
			// 상속 받아서 클래스 생성
			class SportsCar extends Car {
				constructor(name="포르쉐", price=25000, cc=3000) {
					super(name, price);
					this.cc = cc;
				}
				
				fastRun() {
					console.log("빠르게 달립니다.");
				}
				// 재정의할 수 있다
				start(price) {
					console.log(this.name + " 가 왕왕거립니다.");
					console.log("가격은 ", price ,"만원 입니다.");
				}
			}
			
			// 자식 객체 생성
			const myCar = new SportsCar("람보르기니", 40000, 6000);
			console.log(myCar.name);
			console.log(myCar.price);
			console.log(myCar.cc);
			myCar.start(5000);
			myCar.fastRun();
			
			// Vue.js에서는 exam7,8,9,10,11은 거의 사용되지 않는다.
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam11_inheritance</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>