<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Event</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			function fun1() {
				console.log("button 태그로 만든 버튼이 클릭됨");
				console.log(event.target);
			}
			
			function fun2() {
				console.log(event.target);
				console.log("a 태그로 만든 버튼이 클릭됨");
				event.preventDefault(); // element가 기본적으로 갖고 있는 액션을 막음
			}
			
			function fun3() {
				console.log("사용자가 입력한 내용을 검사합니다. (유효성 검사)");
				event.preventDefault(); // 정규표현식 검사 후 알맞은 형식이 아니면 페이지 이동을 막는다
				// <form> 태그가 갖고 있는 기본 액션을 막는다
			}
			
			function fun4() {
				console.log("이메일 내용이 변경되었습니다.");
				console.log(event.target.value); // 사용자가 입력한 값을 가져올 수 있음
			}
			
			function fun5() {
				console.log("패스워드 내용이 변경되었습니다.");
				console.log(event.target.value);
			}
			
			function fun6() {
				console.log("체크박스 상태가 변경되었습니다.");
				if (event.target.checked) {
					console.log("체크됨");
				} else {
					console.log("체크해제됨");
				}
			}
			
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam19_event</div>
		    <div class="card-body">
				<button onclick="fun1()" class="btn btn-info btn-sm">나는 button 태그로 만든 버튼</button>
				<a href="/htmlcssjs" onclick="fun2()" class="btn btn-info btn-sm">나는 a태그로 만든 버튼</a>
				
				<hr/>
				
					<form action="/htmlcssjs" onsubmit="fun3()"> <!-- action 속성 값으로 요청 URL을 넣어주면 이동함 -->
						<div class="mb-3 mt-3">
							<label for="email" class="form-label">Email:</label>
							<input onchange="fun4()" type="email" class="form-control" id="email" placeholder="Enter email" name="email">
						</div>
						<div class="mb-3">
							<label for="pwd" class="form-label">Password:</label>
							<input onkeyup="fun5()"type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
						</div>
						<div class="form-check mb-3">
							<label class="form-check-label">
								<input onchange="fun6()" class="form-check-input" type="checkbox" name="remember"> Remember me
							</label>
						</div>
						<button type="submit" class="btn btn-primary btn-sm">Submit</button>
					</form>

			</div> 
		</div>
	</body>
</html>