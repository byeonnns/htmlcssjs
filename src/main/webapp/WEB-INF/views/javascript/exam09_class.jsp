<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Class</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			// 클래스(설계도) 선언
			class Car { // 필드만을 위한 선언은 없다. 생성자에서 필드를 같이 선언한다.
				// 생성자 (필드 선언과 초기화를 생성자에서 함)
				constructor() { // 클래스 이름과 동일한 것이 아닌 constructor로 사용한다.
					// 필드 선언과 초기화 (this를 반드시 사용)
					this.name = "그랜저";
					this.price = 50000000;
					this.company;
				}
					// 메소드
					start() {
						console.log(this.name + "의 시동을 겁니다.");
					}
					
					setPrice(price) {
						this.price = price;
					}
				}
				
			const myCar = new Car();
			const yourCar = new Car();
			console.log(myCar.name);
			console.log(myCar.price);
			console.log(myCar.company);
			myCar.start();
			myCar.setPrice(60000000);
			
			class Person {
				constructor(name, age) {
					this.name = name;
					this.age = age;
				}
			}
			
			const me = new Person("홍길동", 30);
			const you = new Person("감자바", 27);
			console.log(me.name, me.age);
			console.log(you.name, you.name);
			
			me.name = "홍길서";
			me.age = "아나"; // 숫자 타입이 아니라 문자열 들어와도 교체가 된다;;
			console.log(me.name, me.age);
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam09_class</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>