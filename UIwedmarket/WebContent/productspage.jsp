<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<html>
<head>
<title>상품목록페이지</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<body>
	<%@jsp:include page="./manupage.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<%
		ArrayList<Product> listofproducts = productDAO.getAllProducts(); 
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
				<p><%=product.getUnitprice()%>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
</body>
</html>