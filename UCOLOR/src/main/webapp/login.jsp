<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&display=swap" rel="stylesheet">
<title>UCOLOR</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
		<div class="card border-light justify-content-center" >
			<div class="container" align="center">
				<div class="col-md-4 col-md-offset-4">
				<h3 class="text-center" style="font-family: 'Noto Serif KR', serif"><br><br>LOGIN</h3>
				<p>&nbsp;</p>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해주세요.");
					out.println("</div>");
				}
			%>
			<form class="form-sign-in" action="j_security_check" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name
					</label>
					<input type="text" class="form-control" placeholder="ID" name='j_username' required autofocus style="font-family: 'Noto Serif KR', serif">
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password
					</label>
					<input type="password" class="form-control" placeholder="password" name='j_password' required style="font-family: 'Noto Serif KR', serif">
				</div>
				<p>&nbsp;</p>
				<button class="btn btn btn-lg btn-secondary btn-block" type="submit">LOGIN</button>
			</form>
		</div>
	</div>
	</div>
	<br><br><br><br>
	<jsp:include page="footer_light.jsp" />
</body>
</html>