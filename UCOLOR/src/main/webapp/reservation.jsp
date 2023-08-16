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
			<h5 style="font-weight: 500;">&nbsp;&nbsp;Product List</h5>
		</div>
	</div>
	<div class="container" style="font-family: 'Gowun Batang', serif;">
			<%@ include file="dbconn.jsp" %>
			<div class="row" align="center">
			<%
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-3">
				<img src="./resources/images/<%=rs.getString("p_fileName")%>" style="width: 80%">
				<h4><br><%=rs.getString("p_name")%></h4>
				<p><%=rs.getString("p_description")%>
				<p><%=rs.getString("p_UnitPrice")%>원
				<p> <a href="./product.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-outline-secondary" role="button">Reservation</a>
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
		<hr>
	</div>
	
	<jsp:include page="footer_light.jsp" />	
</body>
</html>