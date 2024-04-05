<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Javascript - Variables</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<script>
			// 변수를 선언하는 3가지 방법
			var var1 = 1; // 전역 변수
			let var2 = 1.0; // 전역 변수
			const var3 = "abc"; // 전역 변수
											
			// 콘솔에 변수 값 출력
			console.log("var1 : ", var1);
			console.log("var2 : ", var2);
			console.log("var3 : ", var3);
											
			// 수정이 가능할까?
			var1 = 2;
			var2 = 3.5;
			// var3 = "def"; -> 상수는 값 변경이 불가능하다.
		</script>
		<script>
			function fun1() {
				var var4 = 10; // 지역 변수(함수 레벨)
				let var5 = 10.0; // 지역 변수(블록 레벨)
				const var6 = "ghi"; // 지역 변수(블록 레벨)
				
				if (true) {
					var var7 = 100;
					let var8 = 100.0;
					const var9 = "jkl";
					// ------------------------
					console.log("var1 : ", var1);
					console.log("var2 : ", var2);
					console.log("var3 : ", var3);
					console.log("var4 : ", var4);
					console.log("var5 : ", var5);
					console.log("var6 : ", var6);
					console.log("var7 : ", var7);
					console.log("var8 : ", var8);
					console.log("var9 : ", var9);
					// ------------------------
				}
				
				console.log("var1 : ", var1);
				console.log("var2 : ", var2);
				console.log("var3 : ", var3);
				console.log("var4 : ", var4);
				console.log("var5 : ", var5);
				console.log("var6 : ", var6);
				console.log("var7 : ", var7); // var로 선언하면 함수 레벨이므로 접근이 가능하다.
				/* console.log("var8 : ", var8);
				console.log("var9 : ", var9); */
			}
			
			function fun2() {
				console.log("var1 : ", var1);
				console.log("var2 : ", var2);
				console.log("var3 : ", var3);
				console.log("var4 : ", var4);
				console.log("var5 : ", var5);
				console.log("var6 : ", var6);
				console.log("var7 : ", var7); // var로 선언하면 함수 레벨이므로 접근이 가능하다.
				/* console.log("var8 : ", var8);
				console.log("var9 : ", var9); */
			}
			// 함수 호출
			fun1();
			fun2();
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam02_variables</div>
		    <div class="card-body">
				
			</div> 
		</div>
	</body>
</html>