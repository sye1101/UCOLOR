<%@ page contentType="text/html; charset=utf-8"%>
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
	<div class="py-5">
        <div class="row">
          <div class="col-lg-12 text-center mb-5">
            <h1 style="font-family: 'Gowun Batang', serif;">예약 주문 취소</h1>
          </div>
        </div>
	</div>
		<div class="container" style="font-family: 'Gowun Batang', serif;">
		<h2 class="alert alert-primary" style="text-align: center">예약 주문이 취소되었습니다.</h2><br>
		</div>
	<div class="container" style="text-align: center">
		<br><p>	<a href="./reservation.jsp" class="btn btn-outline-secondary">product list</a>		
	</div>
	<jsp:include page="footer_light.jsp"/>	
</body>
</html>
