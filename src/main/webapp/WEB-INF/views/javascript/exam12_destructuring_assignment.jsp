<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Destructuring Assignment - 구조분해 할당</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			// board 객체 생성
			const board = {
				bno : 1,
				title : "오늘은 월요일",
				content : "날씨가 좋네요. 자바스크립트 공부해야겠어요.",
				writer : "홍길동",
			};
			
			// var title = board.title;과 같은 결과 (구조분해 할당)
			var {title} = board;
			console.log(title);
			
			/* var bno = board.bno;
			var content = board.content;와 같은 결과를 갖는 코드 (구조분해 할당)*/
			var {bno, content} = board;
			console.log( bno, title , content);
			console.log("");
			console.log(board.bno, board.title);
			
			function fun1({title}) {
				console.log(title);
			}
			
			fun1(board);
			
			var {title} = board; // fun1(board)와 같은 결과 -> board 객체의 title 속성 값이 저장됨
			
			var {writer, ... rest} = board;
			// ...rest : 나머지는 객체로 만듬 (board 객체가 아닌 새로운 rest 객체)
			//var {writer, {bno, title, content}} = board;과 같은 결과
			
			console.log(writer);
			console.log(rest);
			
			var newBoard = {...board, bno:2, title:"벚꽃이 좋아요."};
			// ...은 나머지로 구조분해해서 그대로 넣어라
			// 매우 중요한 문법. 잘 알아두자.
			console.log(newBoard);
			
			var newBoard2 = (obj) => {
				return {...obj, hitcount:1, likes:3};
			} 
			console.log(newBoard2(board));
			
			/* var newBoard2 = (obj) => ( {...obj, hitcount:1, likes:3} );
			} 중괄호를 하나만 쓰면 함수의 실행문으로 인식 -> 괄호로 감싸서 값임을 명시해줘야 함.*/
			
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam12_destructuring_assignment</div>
		    <div class="card-body">
				구조 분해(destructuring) 할당(assignment)
			</div> 
		</div>
	</body>
</html>