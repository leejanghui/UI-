<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<html>
<head>
<title>상품목록페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<%@include file="./manupage.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listofproducts = dao.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i = 0; i < listofproducts.size(); i++){
					Product product = listofproducts.get(i);
			%>
			<div class="col-md-4">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitprice()%>원
				<p>
					<a href="./productpage.jsp">상세 정보 &raquo;</a>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
</body>
</html>