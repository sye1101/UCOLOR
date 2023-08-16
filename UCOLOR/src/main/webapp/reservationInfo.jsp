<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Playfair+Display:wght@800&display=swap" rel="stylesheet">
<title>UCOLOR</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<div class="py-3">
		<div class="col-lg-12 text-center mb-4">
			<h1 style="font-family: 'Playfair Display', serif">Reservation Info</h1>
		</div>
	</div>	
	<div class="container" style="font-family: 'Gowun Batang', serif;">
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
			<div class="form-group row justify-content-center">
				<label class="col-sm-2" >이름</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row justify-content-center">
				<label class="col-sm-2">예약 날짜</label>
				<div class="col-sm-3">
					<input name="date" type="text" class="form-control" />(YYYY/MM/DD)
				</div>
			</div>
			<div class="form-group row justify-content-center">
				<label class="col-sm-2">예약 시간</label>
				<div class="col-sm-3">
					<input name="time" type="text" class="form-control">
					   <a>09:00&nbsp;</a>
					   <a>10:30&nbsp;</a>
					   <a>12:00&nbsp;</a>
					   <a>13:30&nbsp;</a>
					   <a>15:00&nbsp;</a>
					   <a>16:30&nbsp;</a>
					   <a>18:00&nbsp;</a>
					   <a>19:30&nbsp;</a>
					   <a>21:00</a>
				</div>
			</div>
			<div class="form-group row justify-content-center">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input name="phone" type="text" class="form-control" />(010-XXXX-XXXX)
				</div>
			</div>
			<br><br>
			<div class="form-group row" style="text-align: center;">
				<div class="col-md-offset-2 col-md-12">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-outline-secondary" role="button"> 이전 </a> 
					<input	type="submit" class="btn btn-outline-primary" value="등록" />
					<a href="./checkOutCancelled.jsp" class="btn btn-outline-secondary" role="button"> 취소 </a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
