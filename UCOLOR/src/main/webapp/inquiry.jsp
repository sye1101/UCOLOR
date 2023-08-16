<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&family=Gowun+Batang&display=swap" rel="stylesheet">
<title>UCOLOR</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<div class="py-3">
		<div class="col-lg-12 text-center mb-4">
			<h2 style="font-family: 'Noto Serif KR', serif; font-weight: 500;"><br>RESERVATION INQUIRY</h2>
		</div>
		<br>
	</div>	
	<div class="container" style="font-family: 'Gowun Batang', serif;">
		<form action="./processInquiry.jsp" class="form-horizontal" method="post">
			<div class="form-group row justify-content-center">
				<label class="col-sm-2" style="font-size: 1.1em">이름</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row justify-content-center">
				<label class="col-sm-2" style="font-size: 1.1em">전화번호</label>
				<div class="col-sm-3">
					<input name="phone" type="text" class="form-control" />&nbsp;(010-XXXX-XXXX)
				</div>
			</div>
			<br>
			<div class="form-group row justify-content-center"" style="text-align: center;">
				<div class="col-md-offset-2 col-md-5">
					<input	type="submit" class="btn btn-secondary btn-block" value="조회" />
				</div>
			</div>
		</form>
	</div>
	<br><br>
	<jsp:include page="footer_light.jsp" />
</body>
</html>