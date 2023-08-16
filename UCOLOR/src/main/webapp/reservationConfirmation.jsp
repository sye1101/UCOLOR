<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Playfair+Display:wght@800&display=swap" rel="stylesheet">
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 예약을 삭제합니다!!") == true)
			location.href = "./deleteReservation.jsp?id=" + id;
		else
			return;
	}
</script>
<title>UCOLOR</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");

	String Reservation_name = "";
	String Reservation_phone = "";
	
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Reservation_name"))
				Reservation_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Reservation_phone"))
				Reservation_phone = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<div class="py-3">
	</div>	
	<div class="container col-8 alert alert-light" style="font-family: 'Gowun Batang', serif;">
		<div class="text-center ">
			<h1 style="font-family: 'Playfair Display', serif; color: black;">Receipt</h1><br><br>
		</div>
		<div class="row">
		<%	
			
			String sql = "select * from reservation where r_name = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Reservation_name);
			rs = pstmt.executeQuery();
			String phone;
			if (rs.next()) {	// 해당 이름 존재
				phone = rs.getString("r_phone");
				if (phone.equals(Reservation_phone)) {	// 예약조회에서 입력한 전화번호 = DB에서 조회된 전화번호
				
		%>
			<div class="container" align="left">
				<strong style="font-size: 1.5em;">예약 정보</strong> <br> 
				주문번호 : <%= rs.getString("r_id") %><br> 
				이름 : <%= rs.getString("r_name") %><br> 
				예약 날짜 : <%= rs.getString("r_date") %><br> 
				예약 시간 : <%= rs.getString("r_time") %><br> 
				전화번호 : <%= rs.getString("r_phone") %><br> 
				인원수 : <%= rs.getInt("r_peopleNum") %>인<br> 
				상품 내역 : <%= rs.getString("r_pName") %><br> <br>
			</div>
		</div>
			<a href="./inquiry.jsp" class="btn btn-outline-dark">inquiry</a>
			<a href="#" onclick="deleteConfirm('<%=rs.getString("r_id")%>')" class="btn btn-outline-danger">delete</a>
		<%
			}
				else { // 예약조회에서 입력한 전화번호 != DB에서 조회된 전화번호
		%>
			<div class="container" align="center">		
			<p style="font-family: 'Gowun Batang', serif;"><b>>> 일치하는 예약 내역이 없습니다. 이름과 전화번호를 다시 입력하여 조회해주세요!</b></p>
			<a href="./inquiry.jsp" class="btn btn-outline-dark">inquiry</a>
			</div>		
		<%			
				}
			} else { // 해당 이름 존재 X
		%>
			<div class="container" align="center">		
			<p style="font-family: 'Gowun Batang', serif;"><b>>> 일치하는 예약 내역이 없습니다. 이름과 전화번호를 다시 입력하여 조회해주세요!</b></p>
			<a href="./inquiry.jsp" class="btn btn-outline-dark">inquiry</a>
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
		<br>
		</div>
		<br>
		<div class="jumbotron p-3 p-md-6 text-black rounded bg-light" style="font-family: 'Gowun Batang', serif; font-size: 0.9em;">
		<div class="container">
			<h5 style="font-weight: 500;">&nbsp;방문전 필독사항</h5>
			<p></p>
			<p>> 쌩얼진행<br>
			퍼스널컬러 진단은 맨 얼굴로 진행됩니다. 메이크업이 된 상태로 방문하시면 메이크업을 지워주셔야 합니다.<br>
			매장에 클렌징제품이 구비되어 있지만, 개인의 피부를 위해 클렌징 제품과 기초케어 제품을 함꼐 가져와주시면 좋습니다.<br>
			> 컬러렌즈<br>
			컬러렌즈를 착용하시면 진단에 영향을 미칠 수 있으니 투명렌즈를 착용해 주시면 좋습니다.<br>
			만약 컬러렌즈 밖에 없으신 분은 최대한 본인 눈색상과 유사한 컬러렌즈 착용을 권장드립니다.<br>
			> 톤 별 색조구분<br>
			평소에 사용하시던 색조제품을 함께 가져와 주시면 톤 별로 구분해 드립니다.<br>
			> 체형진단<br>
			체형 진단을 위해 라인이 드러나는 옷 착용 후 내방하시면 좋습니다. (두툼한 재질 등은 피해주세요)<br></p>
		</div>
	</div>
	<jsp:include page="footer_light.jsp"	/>
</body>
</html>