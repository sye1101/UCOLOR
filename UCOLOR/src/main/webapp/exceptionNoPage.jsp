<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&family=Playfair+Display:ital,wght@1,900&display=swap" rel="stylesheet">
<title>UCOLOR</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<div class="jumbotron bg-light">
		<div class="container">
			<h2 style="color: crimson; text-align: center; font-family: 'Noto Serif KR', serif" >요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
	</div>
	<div class="container" style="font-family: 'Noto Serif KR', serif; text-align: center">
		<p><%=request.getRequestURL()%></p>
		<p> <a href="reservation.jsp" class="btn btn-secondary">product list</a>
	</div>
</body>
</html>