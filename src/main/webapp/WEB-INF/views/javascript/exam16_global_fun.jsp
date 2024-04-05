<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Global</title>
		
		<!-- Latest compiled and minified CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Latest compiled JavaScript -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
			var data1 = "10";
			var num1 = parseInt(data1);
			
			console.log(typeof(num1), num1); // number
			
			var data2 = "10.5";
			var num2 = parseFloat(data2);
			
			console.log(typeof(num2), num2); // number
		</script>
	</head>
	
	<body>
		<div class="card">
		    <div class="card-header">exam16_global_fun</div>
		    <div class="card-body">
				content
			</div> 
		</div>
	</body>
</html>