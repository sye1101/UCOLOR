<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Playfair+Display:wght@800&display=swap" rel="stylesheet">
<%
	String cartId = session.getId();
%>
<title>UCOLOR</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<div class="py-3">
		<div class="col-lg-12 text-center mb-4">
			<h1 style="font-family: 'Playfair Display', serif">Cart</h1>
		</div>
	</div>	
	<div class="container" style="font-family: 'Gowun Batang', serif;">
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품 코드</th>
					<th>상품 이름</th>
					<th>인원수</th>
					<th>&nbsp;&nbsp;가격</th>
					<th>수량</th>
					<th>&nbsp;&nbsp;소계</th>
					<th>비고</th>
				</tr>
				<%				
					int sumPrice = 0;
					int sumPeople = 0;
					ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Product>();

					for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
						Product product = cartList.get(i);
						int total = product.getUnitPrice() * product.getQuantity();
						int people = product.getPeopleNum() * product.getQuantity();
						sumPrice = sumPrice + total;
						sumPeople += people;
				%>
				<tr>
					<td><%=product.getProductId()%></td>
					<td><%=product.getPname()%></td>
					<td>&nbsp;&nbsp;<%=product.getPeopleNum()%></td>
					<td><%=product.getUnitPrice()%></td>
					<td>&nbsp;&nbsp;<%=product.getQuantity()%></td>
					<td><%=total%></td>
					<td><a href="./removeCart.jsp?id=<%=product.getProductId()%>" class="badge badge-danger">삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th>&nbsp;총인원</th>
					<th>&nbsp;&nbsp;<%=sumPeople %></th>
					<th></th>
					<th>총액</th>
					<th><%=sumPrice%></th>
					<th></th>
				</tr>
			</table>
			<div style="text-align: center">
				<a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-outline-danger" role="button"">전체 삭제</a>
				<a href="./reservation.jsp" class="btn btn-outline-secondary">쇼핑 계속하기</a>
				<a href="./reservationInfo.jsp?cartId=<%= cartId %>" class="btn btn-outline-success" role="button">주문하기</a>
			</div>
		</div>
		<br><br>
	</div>
	<jsp:include page="footer_light.jsp" />
</body>
</html>
