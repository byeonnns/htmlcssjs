<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>DOM Element Manipulation</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			function changeContent() {
				// document.querySelector()와 innerHTML()를 사용하는 방법
				// 기존 내용을 대체
				let el_div1 = document.querySelector("#div1");
				
				el_div1.innerHTML = "<img src='/htmlcssjs/resources/image/photos/photo2.jpg' width='150'/>";
				
			}
			
			function appendContent() {
				let el_div1 = document.querySelector("#div1");
				
				// Element 객체를 직접 만들어 사용하는 방법
				const el_img = document.createElement("img");
				el_img.setAttribute("src", "/htmlcssjs/resources/image/photos/photo4.jpg"); // 만들어진 객체에 속성을 추가
				el_img.setAttribute("width", "150");
				
				// 기존 내용 뒤에 추가
				el_div1.appendChild(el_img);
			}
			
			function deleteContent() {
				// 기존 내용을 삭제
				let el_div1 = document.querySelector("#div1");
				// 속성을 아무것도 주지 않는 것으로 대체하면 뜨는게 없다 -> 아예 다 지우는 것
				// el_div1.innerHTML = "";
				
				// 맨 뒤에 있는 엘리먼트를 삭제
				el_div1.removeChild(el_div1.lastElementChild);
			}
			
			function changeCss() {
				var el_img1 = document.querySelector("#img1");
				el_img1.style.width = "50px"; // style로 접근할 땐 단위를 명시해주는 편이 좋다
				el_img1.style.height = "50px";
				// 원래 style="border-radius:50px; border-width:5px; border-color:red; border-style:solid"로 작성
				// JS는 -를 쓸 수 없다보니 캐멀스타일로 작성
				el_img1.style.borderRadius = "25px";
				el_img1.style.borderWidth = "2px";
				el_img1.style.borderColor = "red";
				el_img1.style.borderStyle = "solid";
			}
			
			function changeAttribute() {
				var el_img2 = document.querySelector("#img2");
				el_img2.src = "/htmlcssjs/resources/image/photos/photo10.jpg";
				// el_img2.setAttribute("src", "/htmlcssjs/resources/image/photos/photo6.jpg");와 같음
			}
			
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam03_dom_element_manipulation</div>
		    <div class="card-body">
				
				<div class="card">
				    <div class="card-header">엘리먼트 변경, 추가 및 삭제</div>
				    <div class="card-body">
				    	<button onclick="changeContent()" class="btn btn-warning btn-sm">변경</button>
				    	<button onclick="appendContent()" class="btn btn-warning btn-sm">추가</button>
				    	<button onclick="deleteContent()" class="btn btn-warning btn-sm">삭제</button>
				    	<hr/>
				    	<div id="div1"></div>
				    </div>
				</div>
				
				<hr/>
				
				<div class="card">
					<div class="card-header">스타일 변경</div>
					<div class="card-body">
						<button onclick="changeCss()" class="btn btn-warning btn-sm">크기 변경</button>
						<hr/>
						<div id="div2">
							<img id="img1" src="/htmlcssjs/resources/image/photos/photo3.jpg" width="100"/>
							<img class="rounded-circle" 
							src="/htmlcssjs/resources/image/photos/photo5.jpg" 
							width="50" height="50">
						</div>
					</div>
				</div>
				
				<hr/>
				
				<div class="card">
					<div class="card-header">속성값 변경</div>
					<div class="card-body">
						<button onclick="changeAttribute()" class="btn btn-warning btn-sm">속성값 변경</button>
						<hr/>
						<div id="div3">
							<img id="img2" 
								 src="/htmlcssjs/resources/image/photos/photo6.jpg"
								 class="rounded-circle"
								 width="100" height="100"/>
							
						</div>
					</div>
				</div>
			</div> 
		</div>
	</body>
</html>