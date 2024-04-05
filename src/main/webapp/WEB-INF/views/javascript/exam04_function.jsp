<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Javascript - Function</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			// 함수 선언
			function fun1() {
				console.log("fun1() 실행");
				
			}
			
			// 함수 호출
			fun1();
			
			fun1 = function() {
				console.log("fun1() 재정의");
			};
			
			fun1();
			
			// 함수 선언
			var fun2 = function() { // js에서는 함수도 객체다 -> 번지가 저장됨
				console.log("fun2() 실행");
			}
			
			// 함수 호출
			fun2();
			
			// 화살표 함수(arrow function) 선언
			var fun3 = () => console.log("fun3() 실행"); // 실행문이 하나인 경우 중괄호 생략 가능
			
			// 함수 호출
			fun3();
			
			// 함수 대입
			var fun4 = fun3; // fun3이 저장해둔 함수 객체의 번지를 그대로 전달 -> 같은 함수 호출
			fun4();
			
			// 매개변수가 있는 함수
			function fun5(arg1, arg2=0) { //arg2=0 -> 매개변수 값을 안준다면 기본값으로 0을 준다
				console.log("fun5() 실행")
				console.log("arg1 : ", arg1);
				console.log("arg2 : ", arg2);
			}
			
			fun5(10,"abc");
			fun5(10); // 가능 -> 변수 초기화가 안된 건 undefined로 나온다
			
			//
			var fun6 = (arg1, arg2=0) => {
				console.log("fun6() 실행")
				console.log("arg1 : ", arg1);
				console.log("arg2 : ", arg2);
			} 
			
			fun6(15);
			fun6('abc', "def"); // js는 char타입이 없어 문자열에 ",' 모두 사용 가능
			
			var var7 = (arg1) => console.log("arg1 : ", arg1); // java의 람다식과 유사
			var var8 = arg1 => console.log("arg1 : ", arg1); // 매개변수가 1개일 경우 괄호 생략 가능
			
			// return 값이 있는 함수
			function fun9(x, y) {
				let result = x+y;
				return result;
			}
			
			var result1 = fun9(10, 20);
			console.log("result1 : ", result1);
			
			var fun10 = (x, y) => x + y; // 화살표 함수에서 return문 하나밖에 없다면 중괄호와 return 생략이 가능
			// 원래대로라면 function fun10 = (x,y) => { return x + y; }
			var result2 = fun10(10, 20);
			
			console.log("result2 : ", result2);
			
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam04_function</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>