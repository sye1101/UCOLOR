<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<title>UCOLOR</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>

</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron p-3 p-md-6 bg-white">
		<div class="container" style="font-family: 'Gowun Batang', serif;">
			<h5 style="font-weight: 500;">Product Information</h5>
		</div>
	</div>
	<div class="container">
		<%@ include file="dbconn.jsp" %>
		<div class="row">
			<%
				String productId = request.getParameter("id");
			
				String sql = "select * from product where p_id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, productId);
				rs = pstmt.executeQuery();
				if (rs.next()) {
			%>
			<div class="col-md-3">
				<img src="./resources/images/<%=rs.getString("p_fileName")%>" style="width:100%" />
			</div>
			<div class="col-md-6" style="font-family: 'Gowun Batang', serif;">
				<h3><%=rs.getString("p_name") %></h3>
				<p> 상품 코드&nbsp;&nbsp;<span class="badge badge-light">
					<%=rs.getString("p_id") %></span>
				<p> 인원수 : <%=rs.getString("p_peopleNum") %>
				<p><%=rs.getString("p_description") %>
				<p><b><%=rs.getString("p_UnitPrice") %>원</b></p>
				<p> <form name = "addForm" action="./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post">
					<a href="#" class="btn btn-outline-dark" onclick="addToCart()"><img src="./resources/icon/bag.svg"/>&nbsp; add to cart</a>
					<a href="./cart.jsp" class="btn btn-outline-dark"><img src="./resources/icon/cart.svg"/>&nbsp;go to cart</a>
					<a href="./reservation.jsp" class="btn btn-outline-dark"><img src="./resources/icon/list-ul.svg"/>&nbsp;product list</a>
				</form>
			</div>
			<%
				}
			if (rs != null)
				rs.close();
 			if (pstmt != null)
 				pstmt.close();
 			if (conn != null)
				conn.close();
			%>
		</div>
		<br>
	</div><br>
	<div class="jumbotron p-3 p-md-6 text-black rounded bg-light" style="font-family: 'Gowun Batang', serif;">
		<div class="container">
			<h5 style="font-weight: 500;">&nbsp;예약 안내</h5>
			<p></p>
			<p>1. 원하는 날짜, 시간, 인원을 선택하여 퍼스널컬러 진단을 예약합니다.<br>
			2. 신한은행 111-234-567890 (주)UCOLOR 로 입금합니다.<br>
			3. 예약 후 24시간 이내에 입금하셔야 예약확정 문자를 받으실 수 있습니다.</p>
		</div>
	</div>
	<jsp:include page="footer_light.jsp"	/>
</body>
</html>