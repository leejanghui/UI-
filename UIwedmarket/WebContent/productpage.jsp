<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<html>
<head>
<title>상세 정보</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<%@include file="./manupage.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상세 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		Product product = productDAO.getProductById(id);
	%>
	<div>
		<div>
			<div>
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p> <b> 코드 : </b><span class="badge badge-danger"><%=product.getProductId()%></span>
				<p> <b> 제조사 : </b><%=product.getManufacturer()%>
				<p> <b> 분류 : </b><%=product.getCategory()%>
				<p> <b> 재고수 : </b><%=product.getUnitsInStock()%>
				<h4><%=product.getUnitprice()%>원</h4>
				<p> <a href="#" class="btn btn-info">상품 주문 &raquo;</a>
					<a href="./productspage.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
</body>
</html>