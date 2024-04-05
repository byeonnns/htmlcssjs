<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<!-- external css -->
		<!-- link rel="stylesheet" href="/htmlcssjs/resources/css/exam01_style.css" -->
		
		<!-- internal css -->
		<style type="text/css">
		
			* {
  				text-align: center;
  				color: blue;
			}
			
			div {
				border : 1px solid red;
				background-color:orange;
			}
			
			#divId1 {
				background-color:navy;
			}
			
			.divClass1 {
				background-color:red;
			}
			
			.divClass2 {
				background-color:aqua;
			}
			
			p, header, article {
				border:1px solid orange;
				text-align:right;
				color:red;
			}
			
			p.classA {
				background-color:maroon;
			}
			
			
		</style>
	</head>
	<body>
		<h4>exam02_selectors</h4>
		<hr/>
		
		<div>content1</div>
		<!-- id 속성은 식별자로 사용하므로 중복값을 줘선 안된다 -->
		<div id="divId1">content2</div>
		<!-- class 속성은 그룹핑한 그룹의 이름을 준 것 -->
		<div class="divClass1">content3</div>
		<div class="divClass1">content4</div>
		<div class="divClass2">content5</div>
		<div class="divClass2">content6</div>
		
		<hr/>
		
		<p>content7</p>
		<header>content8</header>
		<article>content9</article>
		
		<p class="classA">content10</p>
		<div class="classA">content11</div>
		
	</body>
</html>