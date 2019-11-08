<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>상품등록페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<%@include file="./manupage.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<form action="">
				<div class="form-group">
					<label for="intupUserName" class="sr-only">UserName</label>
					<input type="password" class="form-control" placeholder="password" name="j_password" required>
				</div>
				<div class="form-group">
					<label for="intupPassword" class="sr-only">password</label>
					<input type="password" class="form-control" placeholder="password" name="j_password" required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>
</body>
</html>