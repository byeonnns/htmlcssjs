<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Static - 정적 필드와 메소드</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			class Car {
				// 정적 필드와 초기화
				static company = "현대 자동차";
				
				constructor(name="그랜저", price=50000000) {
					// 인스턴스 필드와 초기화
					this.name = name;
					this.price = price;
				}
				
				// 정적 메소드 선언
				static getCompany() {
					return Car.company;
				}
				
				static setCompany(company) {
					Car.company = company;
				}
				
				// 인스턴스 메소드 선언
				setPrice(price) {
					this.price = price;
				}
				
				getPrice() {
					return this.price;
				}
			}
			// 정적 멤버 사용해보기
			console.log(Car.company);
			Car.setCompany("기아 자동차");
			console.log(Car.getCompany());
			
			// 객체 생성 후 인스턴스 멤버 사용해보기
			const myCar = new Car("포르쉐", 250000000);
			console.log(myCar.name);
			console.log(myCar.price);
			myCar.setPrice(300000000);
			console.log(myCar.getPrice());
			
			
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam10_static</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>