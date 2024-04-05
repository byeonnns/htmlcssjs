<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>DOM Find Elements</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			function findElementById() {
				// id를 찾는 두 가지 방법
				// 방법 1 - document의 getElementById 메소드를 사용
				var el_p1 = document.getElementById("p1"); // id=p1을 찾아서 리턴
				console.log(el_p1);
				console.log("");
				
				// 방법 2 - document의 querySelector 메소드를 사용
				el_p1 = document.querySelector("#p1"); // CSS 선택자를 찾아 리턴 -> 활용도가 매우 높다
				console.log(el_p1);
			}
			
			function findElementByClass() {
				// class를 찾는 두 가지 방법
				// 방법 1 - document의 getElementsByClassName 메소드를 사용
				var el_class1 = document.getElementsByClassName("class1"); // HTMLCollection 타입으로 리턴
				console.log(el_class1);
				console.log(el_class1[0]); // 배열처럼 인덱스 접근이 가능하다
				for (var el of el_class1) { // 배열이 아니고 컬렉션 타입인데 for문 사용 가능
					console.log(el);
				}
				console.log("");
				
				// 방법 2 - document의 querySelectorAll 메소드 사용
				var el_class1 = document.querySelectorAll(".class1"); // NodeList 타입으로 리턴
				// querySelector는 첫번째로 작성된 요소 1개만 리턴
				console.log(el_class1);
				console.log(el_class1[0]);
				for (var el of el_class1) { // 배열이 아니고 컬렉션 타입인데 for문 사용 가능
					console.log(el);
				}
			}
			
			function findElementByTag() {
				// tag를 찾는 두 가지 방법
				// 방법 1 - document의 findElementsByTag 메소드를 사용
				var el_p = document.getElementsByTagName("p");
				for (var el of el_p) {
					console.log(el);
				}
				console.log("");
				
				// 방법 2 - document의 querySelectorAll 메소드 사용
				el_p = document.querySelectorAll("p");
				for (var el of el_p) {
					console.log(el);
				}
			}
			
			function findElementByChecked() {
				// 체크박스 중에서 체크된 것만 찾는 방법
				var el_checked = document.querySelectorAll("[name=skill]:checked");
				for (var el of el_checked) {
					console.log(el);
				}
			}
		</script>
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam02_dom_find_element</div>
			<div class="card-body">
				<button onclick="findElementById()" class="btn btn-info btn-sm">ID로 찾기</button>
				<button onclick="findElementByClass()" class="btn btn-info btn-sm">Class로 찾기</button>
				<button onclick="findElementByTag()" class="btn btn-info btn-sm">Tag로 찾기</button>
				<button onclick="findElementByChecked()" class="btn btn-info btn-sm">체크된 것만 찾기</button>
				<hr/>
				<div class="d-flex">
			    	<p id="p1" class="border bg-success" style="width: 100px; height: 100px;"></p>
					<p class="class1 border bg-danger" style="width: 100px; height: 100px;"></p>
					<p class="class1 border bg-info" style="width: 100px; height: 100px;"></p>
			    </div>
			    <hr/>
				<div class="d-flex">
				    <div class="me-3"><input type="checkbox" name="skill" value="java"/>java</div>
				    <div class="me-3"><input type="checkbox" name="skill" value="javascript"/>javascript</div>
				    <div class="me-3"><input type="checkbox" name="skill" value="vue"/>vue</div>
				</div>
			</div>
		</div>
	</body>
</html>