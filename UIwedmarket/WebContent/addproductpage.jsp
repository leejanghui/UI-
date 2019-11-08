<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>상품등록페이지</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<body>
	<%@jsp:include page="./manupage.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품등록</h1>
		</div>
	</div>
	<div class="container">
		<form name="newProduct" action="./processaddpage.jsp">
			<div class="form-group row">
				<label class="col-sm-2">code</label>
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">name</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">Price</label>
				<div class="col-sm-3">
					<input type="text" name="unitprice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">description</label>
				<div class="col-sm-3">
					<textarea name="description" rows="2" cols="50" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">manufacturer</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">category</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">Stock</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">condition</label>
				<div class="col-sm-3">
					<input type="radio" name="condition" value="New">New
					<input type="radio" name="condition" value="Old">Old
					<input type="radio" name="condition" value="Refurbished">Refurbished
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>
</body>
</html>