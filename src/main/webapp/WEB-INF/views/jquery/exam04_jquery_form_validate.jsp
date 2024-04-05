<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>jQuery Form Validate</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<!-- jQuery 외부 라이브러리  설정-->
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		
		<script>
			function handleCheckData() {
				console.log("입력 데이터를 검사합니다.");
				// form 태그의 action 기능을 수행하지 않도록 함
				event.preventDefault();
				
				// 각 입력 양식의 데이터 검사를 수행
				var totalResult = true;
				// 1. ID 검사
				var uidPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}$/;
				var uidResult = uidPattern.test($("#uid").val());
				
				if (uidResult) {
					//el_uid.classList.remove("bg-danger");
					$("#uidSpan").removeClass("text-danger");
				} else {
					//el_uid.classList.add("bg-danger");
					$("#uidSpan").addClass("text-danger");
					totalResult = false;
				}
				
				// 2. Email 검사
				var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
				var emailResult = emailPattern.test($("#email").val());
				
				if (emailResult) {
					$("#email").removeClass("bg-danger");
				} else {
					$("#email").addClass("bg-danger");
					totalResult = false;
				}
				
				// 3. Password 검사
				var pwPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$/;
				var pwResult = pwPattern.test($("#password").val());
				
				if (pwResult) {
					$("#passwordSpan").removeClass("text-danger");
				} else {
					$("#passwordSpan").addClass("text-danger");
					totalResult = false;
				}
				
				// 4. Phone 유효성 검사
				var phonePattern = /^(010)-\d{3,4}-\d{4}$/;
				var phoneResult = phonePattern.test($("#phone").val());
				
				var el_phone_span = $("#phoneSpan");
				
				if (phoneResult) {
					$("#phoneSpan").html = "예) 010-123-1234, 010-1234-1234";
					$("#phoneSpan").removeClass("text-danger");
				} else {
					$("#phoneSpan").html = "전화번호 형식이 아닙니다.";
					$("#phoneSpan").addClass("text-danger");
					totalResult = false;
				}
				
				// 5. 전체 유효성 검사 결과가 true인 경우
				if (totalResult) {					
					// 수동으로 action 기능을 수행하도록 함 -> preventDefault를 풀어주는 방법은 따로 없음
					// jQuery 객체 메소드에는 submit 메소드가 없다.
					// 그래서 인덱스 0에 접근하면 거기엔 element 객체가 들어있음 -> submit() 사용이 가능해짐
					$("#joinForm")[0].submit();
				}
			}
			
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam04_jquery_form_validate</div>
		    <div class="card-body">
				<form id="joinForm" 
					  name="joinForm" 
					  action="/htmlcssjs/jquery" 
					  onsubmit="handleCheckData()"
					  novalidate>
				  <div class="mb-3">
				    <label for="uid" class="form-label">ID</label>
				    <input type="text" class="form-control" id="uid" name="uid" value="Abc123"/>
				    <span id="uidSpan" class="form-text">알파벳 대소문자, 숫자를 혼용해서 6자 이상 10자 이하</span>
				  </div>
				
				  <div class="mb-3">
				    <label for="email" class="form-label">Email</label>
				    <input type="email" class="form-control" id="email" name="email" value="Abc123@mycompany.com"/>
				  </div>
				
				  <div class="mb-3">
				    <label for="password" class="form-label">Password</label>
				    <input type="password" class="form-control" id="password" name="password" value="Abc12345"/>
				    <span id="passwordSpan" class="form-text">알파벳 대소문자, 숫자를 혼용해서 8자 이상 15자 이하</span>
				  </div>
				
				  <div class="mb-3">
				    <label for="phone" class="form-label">Phone</label>
				    <input type="text" class="form-control" id="phone" value="010-123-1234"/>
				    <span id="phoneSpan" class="form-text">예) 010-123-1234, 010-1234-1234</span>
				  </div>
				
				  <div class="mb-3">
				    <label for="city" class="form-label">City</label>
				    <select id="city" name="city" class="form-control">
				      <option value="seoul">서울</option>
				      <option value="pusan">부산</option>
				      <option selected value="jeju">제주</option>
				    </select>
				  </div>
				
				  <div class="mb-3">
				    <label class="form-label">Hobby</label>
				    <div class="d-flex">
					    <div class="form-check me-3">
					      <input class="form-check-input" type="checkbox" id="hobby1" name="hobby" value="movie" checked/>
					      <label class="form-check-lable" for="hobby1"> 영화 </label>
					    </div>
					    
					    <div class="form-check me-3">
					      <input class="form-check-input" type="checkbox" id="hobby2" name="hobby" value="trip" checked/>
					      <label class="form-check-lable" for="hobby2"> 여행 </label>
					    </div>
					    
					    <div class="form-check me-3">
					    	<input class="form-check-input" type="checkbox" id="hobby3" name="hobby" value="game" />
					    	<label class="form-check-lable" for="hobby3"> 게임 </label>
					    </div>				   
				  	</div>
				  </div>
				
				  <div class="mb-3">
				    <label class="form-label">Job</label>
				    <div class="d-flex">
					    <div class="form-check me-3">
					      <input class="form-check-input" type="radio" id="job1" name="job" value="developer" checked />
					      <label class="form-check-lable" for="job1"> 개발자 </label>
					    </div>
					    
					    <div class="form-check me-3">
					      <input class="form-check-input" type="radio" id="job2" name="job" value="designer"/>
					      <label class="form-check-lable" for="job2"> 디자이너 </label>
					    </div>
					    
					    <div class="form-check me-3">
					      <input class="form-check-input" type="radio" id="job3" name="job" value="manager"/>
					      <label class="form-check-lable" for="job3"> 매니저 </label>
					    </div>
				    </div>
				  </div>
				
				  <div class="text-center">
				    <input type="submit" class="btn btn-primary btn-sm" value="Join" />
				    <input type="reset" class="btn btn-primary btn-sm" value="Reset" />
				  </div>
				</form>
			</div> 
		</div>
	</body>
</html>