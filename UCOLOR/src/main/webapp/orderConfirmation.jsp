<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();

	String Reservation_cartId = "";
	String Reservation_name = "";
	String Reservation_date = "";
	String Reservation_time = "";
	String Reservation_phone = "";
	
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Reservation_cartId"))
				Reservation_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Reservation_name"))
				Reservation_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Reservation_date"))
				Reservation_date = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Reservation_time"))
				Reservation_time = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Reservation_phone"))
				Reservation_phone = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
	
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Playfair+Display:wght@800&display=swap" rel="stylesheet">
<title>UCOLOR</title>
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 예약 주문을 취소합니다!") == true)
			location.href = "./deleteReservationOrder.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<div class="py-3">
	</div>	
	<div class="container col-8 alert alert-light" style="font-family: 'Gowun Batang', serif;">
		<div class="text-center ">
			<h1 style="font-family: 'Playfair Display', serif; color: black;">Receipt</h1><br>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>예약 정보</strong> <br> 이름 : <% out.println(Reservation_name); %>	<br> 
				예약 날짜 : <% out.println(Reservation_date);%><br> 
				예약 시간 : <%	out.println(Reservation_time);%><br>
				전화번호 : <%	out.println(Reservation_phone);%><br><br>
			</div>
		</div>
		<div>
			<table class="table table-hover">			
			<tr>
				<th class="text-center">상품 이름</th>
				<th class="text-center">인원수</th>
				<th class="text-center">수량</th>
				<th class="text-center">가격</th>
				<th class="text-center">소계</th>
			</tr>
			<%
				int sumPrice = 0;
				int sumPeople = 0;
				String pName = "";
				ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
				if (cartList == null)
					cartList = new ArrayList<Product>();
	
				for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
					Product product = cartList.get(i);
					int total = product.getUnitPrice() * product.getQuantity();
					int people = product.getPeopleNum() * product.getQuantity();
					sumPrice = sumPrice + total;
					sumPeople += people;
					pName += product.getPname() + "*" ; 
					pName += product.getQuantity() + " ";
					
			%>
			<tr>
				<td class="text-center"><em><%=product.getPname()%> </em></td>
				<td class="text-center"><%=product.getPeopleNum()%></td>
				<td class="text-center"><%=product.getQuantity()%></td>
				<td class="text-center"><%=product.getUnitPrice()%>원</td>
				<td class="text-center"><%=total%>원</td>
			</tr>
			<%
				}
			%>
			<tr>
				<td class="text-right">	<strong>총인원: </strong></td>
				<td class="text-center text-secondary"><strong><%=sumPeople%> </strong></td>
				<td> </td>
				<td class="text-right">	<strong>총액: </strong></td>
				<td class="text-center text-danger"><strong><%=sumPrice%> </strong></td>
			</tr>
			</table><br>
			<div style="text-align: center">
				<a href="./thankCustomer.jsp"  class="btn btn-outline-success" role="button"> 주문 완료 </a>
				<a href="#" onclick="deleteConfirm('<%=Reservation_cartId%>')" class="btn btn-outline-secondary" role="button" > 취소 </a>			
			</div>
		</div>
	</div>	
	<jsp:include page="footer_light.jsp" />
	<%
	
		String sql = "insert into reservation values(?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, Reservation_cartId);
		pstmt.setString(2, Reservation_name);
		pstmt.setString(3, Reservation_date);
		pstmt.setString(4, Reservation_time);
		pstmt.setString(5, Reservation_phone);
		pstmt.setInt(6, sumPeople);
		pstmt.setString(7, pName);
		pstmt.executeUpdate();
		
		if (pstmt != null)
	 		pstmt.close();
	 	if (conn != null)
			conn.close();
	
	%>
</body>
</html>
