<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
	</head>
	<style type="text/css">
		img {
			float:left;
			margin-right:10px;
			margin-bottom:10px;
		}
		
		footer {
			clear:both;
			border:1px solid black;	
		}
		
		#datetime {
			margin:10px;
		}
	</style>
	
	<body>
		<h4>exam09_float</h4>
		<hr/>
		
		<p>
			In this example, the image will float to the right in the paragraph, and the text in the paragraph will wrap around the image.
		</p>
		
		<p>
			<img src="/htmlcssjs/resources/image/photos/photo3.jpg" width="150">
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
			Phasellus imperdiet, nulla et dictum interdum, nisi lorem egestas odio, 
			vitae scelerisque enim ligula venenatis dolor.
		</p>
		
		<footer>
			<div id="datetime">
				2024.03.27 유럽 여행중에 찍은 사진
			</div>
			
		</footer>
		
	</body>
</html>