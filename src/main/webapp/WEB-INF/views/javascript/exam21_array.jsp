<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Array</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			function basic() {
				console.log("basic()");
				// 배열 생성
				const arr = ["Java", "JavaScript", "Vue.js"];
				// 배열 항목 정보 읽기
				console.log(arr[1]);
				console.log("배열의 길이 : ", arr.length);
				// 배열 항목 변경
				arr[2] = "Spring";
				// 항목 반복 읽기 (방법1)
				for (var i = 0; i < arr.length; i++ ) {
					console.log(arr[i]);
				}
				console.log("");
				// 항목 반복 읽기 (방법2) of는 항목을 반복하고 in은 인덱스를 반복한다.
				for (var item of arr) {
					console.log(item);
				}
			}
			
			function appendItem() {
				console.log("appendItem()");
				// 배열 생성
				const arr = [];
				// 마지막 인덱스에 항목 추가
				arr.push("html");
				arr.push("css");
				// 항목 반복 읽기
				for (var item of arr) {
					console.log(item);
				}
			}
			
			function removeAndInsertItem() { // insert는 중간에 삽입 -> 삽입 위치보다 뒤 인덱스는 1씩 밀려난다
				console.log("removeAndInsertItem()");
				// 배열 생성
				const arr = ["Banana", "Orange", "Apple", "Mango"];
				// 항목 삭제 (자바스크립트 배열은 자바의 리스트와 비슷하다)
				// 항목을 삭제할 경우 뒤 인덱스가 1씩 당겨진다
				arr.splice(2,1); // 인덱스 2부터 1개를 삭제(인덱스 2를 삭제) -> (2,2)일 경우 인덱스 2,3이 동시 삭제
				console.log(arr);
				
				// 항목 삽입
				arr.splice(2, 0, "Lemon" ,"Kiwi");
				console.log(arr);
				
				// 항목 대체
				arr = ["Banana", "Orange", "Apple", "Mango"];
				arr.splice(2, 2, "Lemon", "Kiwi"); // 인덱스 2부터 2개를 삭제한 뒤 Lemon과 Kiwi를 삽입
				console.log(arr);
			}
			
			function concatArray() {
				const arr1 = ["Banana", "Orange"];
				const arr2 = ["Apple", "Mango"];
				
				const arr3 = arr1.concat(arr2);
				console.log(arr1);
				console.log(arr2);
				console.log(arr3);
			}
			
			function filterItem() {
				 const arr4 = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				 // filter()는 매개변수로 함수를 받는다 -> 화살표 함수를 사용하자
				 const newArr1 = arr4.filter(item => item.writer === "홍길서"); 
				 console.log(newArr1);
				 // 이 조건식이 true를 만족하는 항목만 저장 -> 5번 실행됨 (arr4의 length가 5이므로)
				 
				 // bno가 홀수인 항목만 저장 -> true, false를 리턴하는 조건식이 와야한다
				 const newArr2 = arr4.filter(item => (item.bno % 2) == 1);
				 console.log(newArr2);
				 
				 const newArr3 = arr4.filter(function (item) {
					 return item.writer === "홍길서";
				 });
				 console.log(newArr3);
			}
			
			function findItem() {
				const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				
				//bno가 3인 게시물 찾기
				const board = arr.find(item => item.bno === 3);
				console.log(board);
				
				//writer가 홍길남인 게시물 찾기
				const board2 = arr.find(findItem => findItem.writer === "홍길남");
				console.log(board2);
				
			}
			
			function handleEachItem() {
				const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				
				// for : index 이용
				for (var i = 0; i < arr.length; i++) {
					console.log(arr[i]);
				}
				
				// for : of 이용
				for (var item of arr) {
					console.log(item);
				}
				
				// 배열의 forEach() 이용
				arr.forEach( item => {
					console.log(item);
					console.log(item.bno, item.title, item.writer);
				});
			}
			
			function mapItem() {
				const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				
				// 제목으로 구성된 새로운 배열 얻기
				const titles = arr.map(item => item.title);
				console.log(titles);
				
				const bnoArr = arr.map(item => item.bno);
				console.log(bnoArr);
				
				// 항목에 오늘의 날짜를 date : '2024.4.2'를 추가한 새로운 항목 배열을 얻기
				
				const newArr = arr.map(item => {
					var now = new Date();
					var strDate = now.getFullYear() + "." + now.getMonth()+1 + "." + now.getDate();
					return {...item, date: strDate};
				});
				console.log(newArr);
			}
			
			function sortItem() {
				const fruits = ["Banana", "Orange", "Apple", "Mango"];
				//오름차순 정렬
				fruits.sort();
				console.log(fruits);
				//내림차순 정렬
				fruits.reverse();
				console.log(fruits);
				
				const arr = [
			          { bno: 5, title: "제목1", writer: "홍길동" },
			          { bno: 1, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 2, title: "제목5", writer: "홍길북" },
			     ];
				
				// bno를 기준으로 오름차순 정렬된 배열 -> 내림차순을 원하면 return값에 -1을 곱해줌
				arr.sort( (item1, item2) => {
					return item1.bno - item2.bno;
				});
				console.log(arr);
				
				// title을 기준으로 내림차순 정렬
				arr.sort( (item1, item2) => {
					if (item1.title < item2.title) {
						return 1;
					} else if (item1.title === item2.title) {
						return 0;
					} else {
						return -1;
					}
				});
				console.log(arr);
			}
		</script>   
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam21_array</div>
		    <div class="card-body">
				<p><button onclick="basic()" class="btn btn-info btn-sm">기본</button></p>
				<p><button onclick="appendItem()" class="btn btn-info btn-sm">새 항목 추가</button></p>
				<p><button onclick="removeAndInsertItem()" class="btn btn-info btn-sm">항목 제거 및 삽입</button></p>
				
				<p><button onclick="concatArray()" class="btn btn-info btn-sm">배열 합치기</button></p>
				<p><button onclick="filterItem()" class="btn btn-info btn-sm">필터링 후 새로운 배열 생성</button></p>
				<p><button onclick="findItem()" class="btn btn-info btn-sm">항목 찾기</button></p>
				<p><button onclick="handleEachItem()" class="btn btn-info btn-sm">항목 일괄처리 (반복처리)</button></p>
				<p><button onclick="mapItem()" class="btn btn-info btn-sm">항목을 변환하고 새로운 배열 생성</button></p>
				<p><button onclick="sortItem()" class="btn btn-info btn-sm">항목 정렬</button></p>
			</div>
		</div>
	</body>
</html>