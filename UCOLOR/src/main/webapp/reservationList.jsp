<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<title>UCOLOR</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<div class="jumbotron p-3 p-md-6 text-black rounded bg-white" style="font-family: 'Gowun Batang', serif;">
		<div class="container">
			<h5 style="font-weight: 600; text-align: center">Reservation List</h5>
		</div>
	</div>
	<div class="container" style="font-family: 'Gowun Batang', serif;">
			<%@ include file="dbconn.jsp" %>
			<div class="row" align="center">
			<table class="table table-hover">			
			<tr>
				<th class="text-center">주문 번호</th>
				<th class="text-center">이름</th>
				<th class="text-center">예약 날짜</th>
				<th class="text-center">예약 시간</th>
				<th class="text-center">전화번호</th>
				<th class="text-center">인원수</th>
				<th class="text-center">상품 내역</th>
				<th class="text-center">비고</th>
			</tr>
			<%
				String sql = "select * from reservation";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<tr>
				<td class="text-center"><%=rs.getString("r_id")%></td>
				<td class="text-center"><%=rs.getString("r_name")%></td>
				<td class="text-center"><%=rs.getString("r_date")%></td>
				<td class="text-center"><%=rs.getString("r_time")%></td>
				<td class="text-center"><%=rs.getString("r_phone")%></td>
				<td class="text-center"><%=rs.getString("r_peopleNum")%></td>
				<td class="text-center"><%=rs.getString("r_pName")%></td>
				<td><a href="./deleteReservationAdmin.jsp?id=<%=rs.getString("r_id")%>" class="badge badge-danger">삭제</a></td>
			</tr>
			<%
				}
				
			if (rs != null)
				rs.close();
 			if (pstmt != null)
 				pstmt.close();
 			if (conn != null)
				conn.close();
			%>
			</table><br>
		</div>
			<div align="right">
				<a href="./admin.jsp"class="btn btn-outline-secondary" role="button"> 이전 </a>
				<a href="./logout.jsp"class="btn btn-outline-secondary" role="button"> 로그아웃 </a>
			</div>
		<hr>
	</div>
	<jsp:include page="footer_light.jsp" />
</body>
</html>