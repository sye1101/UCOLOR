<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<script type ="text/javascript" src ="./resources/js/validation.js"></script>
<title>UCOLOR</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>' />
	<fmt:bundle basename="bundle.message" >
	<jsp:include page="menu.jsp" />	
	<div class="jumbotron p-3 p-md-6 text-black rounded bg-white" style="font-family: 'Gowun Batang', serif;">
		<div class="row">
			<div class="col-md-6 text-left">
			<h5 style="font-weight: 500;">&nbsp;&nbsp;<fmt:message key="title" /></h5>
			</div>
			<div class="col-md-6 text-right">
			<a href="?language=ko" class="p-2 text-muted">Korean</a>
			<a href="?language=en" class="p-2 text-muted">English</a>
			<a href="logout.jsp" class="p-2 text-muted">logout</a>
			</div>
		</div>
	</div>
	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype ="multipart/form-data" style="font-family: 'Gowun Batang', serif; margin-left: 20px">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="productId" /></label>
				<div class="col-sm-3" style="padding-left: 0; padding-right: 30px">
					<input type="text" id ="productId" name="productId" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="pname" /></label>
				<div class="col-sm-3" style="padding-left: 0; padding-right: 30px">
					<input type="text" id ="name" name="name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitPrice" /></label>
				<div class="col-sm-3" style="padding-left: 0; padding-right: 30px">
					<input type="text" id ="unitPrice" name="unitPrice" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="peopleNum" /></label>
				<div class="col-sm-3" style="padding-left: 0; padding-right: 30px">
					<input type="text" id ="peopleNum" name="peopleNum" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description" /></label>
				<div class="col-sm-5" style="padding-left: 0; padding-right: 30px">
					<textarea name="description" cols="50" rows="2"
						class="form-control"></textarea>
				</div>
			</div>
			<div class ="form-group row">
			<label class ="col-sm-2"><fmt:message key="productImage" /></label>
				<div class ="col-sm-5" style="padding-left: 0; padding-right: 30px">
 					<input type="file" name="productImage" class="form-control">
 				</div>
 			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10" style="margin-top: 15px">
					<input type ="button" class="btn btn-outline-secondary" value="<fmt:message key="button" />" onclick ="CheckAddProduct()">
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="footer_light.jsp"/>
</fmt:bundle>
</body>
</html>
