<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String productId = request.getParameter("productId");
	String name = request.getParameter("name");
	String unitprice = request.getParameter("unitprice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");
	
	Integer price;
	
	if(unitprice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitprice);
	
	long stock;
	
	if(unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitprice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	
	dao.addproduct(newProduct);
	
	response.sendRedirect("productspage.jsp");
%>