<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
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
			<h5 style="font-weight: 500;">&nbsp;&nbsp;상품 수정</h5>
		</div>
	</div>
	<%@ include file="dbconn.jsp"%>
	<%
		String productId = request.getParameter("id");

		String sql = "select * from product where p_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div class="container">
		<div class="row" style="font-family: 'Gowun Batang', serif;">
			<div class="col-md-4" style="padding-left: 30px;">
				<img src="./resources/images/<%=rs.getString("p_filename")%>" alt="image" style="width: 100%" />
			</div>
			<div class="col-md-7" style="margin-left: 50px">
				<form name="newProduct" action="./processUpdateProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">상품 코드</label>
						<div class="col-sm-3" style="padding-left: 0; padding-right: 30px">
							<input type="text" id="productId" name="productId"
								class="form-control" value='<%=rs.getString("p_id")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상품명</label>
						<div class="col-sm-3" style="padding-left: 0; padding-right: 30px">
							<input type="text" id="name" name="name" class="form-control"
								value="<%=rs.getString("p_name")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">가격</label>
						<div class="col-sm-3" style="padding-left: 0; padding-right: 30px">
							<input type="text" id="unitPrice" name="unitPrice"
								class="form-control" value="<%=rs.getInt("p_unitPrice")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">인원수</label>
						<div class="col-sm-3" style="padding-left: 0; padding-right: 30px">
							<input type="text" id="peopleNum" name="peopleNum"
								class="form-control" value="<%=rs.getInt("p_peopleNum")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상세 설명</label>
						<div class="col-sm-5" style="padding-left: 0; padding-right: 30px">
							<textarea name="description" cols="50" rows="2"
								class="form-control"><%=rs.getString("p_description")%></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">이미지</label>
						<div class="col-sm-5" style="padding-left: 0; padding-right: 30px">
							<input type="file" name="productImage" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 " style="margin-top: 15px">
							<input type="submit" class="btn btn-outline-secondary" value="등록">
						</div>
					</div>
				</form>

			</div>
		</div>
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
 		<jsp:include page="footer_light.jsp"/>
</body>
</html>
