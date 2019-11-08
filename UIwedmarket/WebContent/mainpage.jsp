<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>MainHome</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<body>
	<jsp:include page="./manupage.jsp" >
	<%!String tag = "Web Shopping Mail"; %>
	<div>
		<div>
			<h1><%=tag%></h1>
		</div>
	</div>
	<p>
		<a href="./productspage.jsp">상품목로으로 &raquo;</a>
</body>
</html>