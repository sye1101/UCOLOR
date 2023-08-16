<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<title>UCOLOR</title>
</head>
<body>
	<%
		String reservation_cartId = "";
		String reservation_name = "";
		String reservation_date = "";
		String reservation_time = "";
		String reservation_phone = "";

		Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if (n.equals("Reservation_cartId"))
					reservation_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				if (n.equals("Reservation_date"))
					reservation_date = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>
	<jsp:include page="menu.jsp" />
	<hr>
	<div class="py-5">
		<div class="row">
        <div class="col-lg-12 text-center mb-5">
           <h1 style="font-family: 'Gowun Batang', serif;">예약 완료</h1>
        </div>
       </div>
	</div>
	<div class="container" style="font-family: 'Gowun Batang', serif;">
		<h2 class="alert alert-primary" style="text-align: center">예약해주셔서 감사합니다.</h2><br>
		<p style="text-align: center">	<%	out.println(reservation_date);	%>에 만나요!	
		<p style="text-align: center">	주문번호 :	<%	out.println(reservation_cartId);	%>		
		
	<div class="jumbotron p-3 p-md-6 text-black rounded bg-light" style="font-family: 'Gowun Batang', serif;">
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
	</div>
	<div class="container" style="text-align: center">
		<br><p>	<a href="./reservation.jsp" class="btn btn-outline-secondary">product list</a>		
	</div>
	<jsp:include page="footer_light.jsp"/>
</body>
</html>
<%
	session.invalidate();

	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Reservation_cartId"))
			thisCookie.setMaxAge(0);
		if (n.equals("Reservation_name"))
			thisCookie.setMaxAge(0);
		if (n.equals("Reservation_date"))
			thisCookie.setMaxAge(0);
		if (n.equals("Reservation_time"))
			thisCookie.setMaxAge(0);
		if (n.equals("Reservation_phone"))
			thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}
%>
