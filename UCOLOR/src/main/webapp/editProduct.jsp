<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<title>UCOLOR</title>
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제합니다!!") == true)
			location.href = "./deleteProduct.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
<%
	String edit = request.getParameter("edit");
%>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<div class="jumbotron p-3 p-md-6 text-black rounded bg-white" style="font-family: 'Gowun Batang', serif;">
		<div class="container">
			<h5 style="font-weight: 500;">&nbsp;&nbsp;상품 수정</h5>
		</div>
	</div>
	<div class="container" style="font-family: 'Gowun Batang', serif;">
			<%@ include file="dbconn.jsp"%>
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
				<p>
					<%
						if (edit.equals("update")) {
					%>
					<a href="./updateProduct.jsp?id=<%=rs.getString("p_id")%>"	class="btn btn-outline-success" role="button">수정</a>
					<%
						} else if (edit.equals("delete")) {
					%>
					<a href="#" onclick="deleteConfirm('<%=rs.getString("p_id")%>')" class="btn btn-outline-danger" role="button">삭제</a>
					<%
						}
					%>				
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