<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">
<title>UCOLOR</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<section id="contact" class="py-5">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-12 text-center mb-5">
            <h2 style="font-family: 'Playfair Display', serif">Admin</h2>
            <br><br>
          </div>
        </div>

        <div class="row gy-4 text-center">
        
          <div class="col-md-2">
            <div class="info-item">
       		  <img src="./resources/icon/box-arrow-right.svg"/>	
              <a style="font-family: 'Roboto Slab', serif; color: gray" href="./logout.jsp"><br><br>LOGOUT</a>
            </div>
            <br>
          </div>

          <div class="col-md-3">
            <div class="info-item">
            <img src="./resources/icon/card-list.svg"/>	
              <a style="font-family: 'Roboto Slab', serif; color: gray;" href="./reservationList.jsp"><br><br>RESERVATION LIST</a>
            </div>
            <br>
          </div>

          <div class="col-md-2">
            <div class="info-item">
            <img src="./resources/icon/plus-square.svg"/>	
              <a style="font-family: 'Roboto Slab', serif; color: gray;" href="./addProduct.jsp"><br><br>ADD PRODUCT</a>
            </div>
            <br>
          </div>
          
          <div class="col-md-3">
            <div class="info-item">
            <img src="./resources/icon/pencil-square.svg"/>	
              <a style="font-family: 'Roboto Slab', serif; color: gray;" href="./editProduct.jsp?edit=update"><br><br>EDIT PRODUCT</a>
            </div>
            <br>
          </div>
          
          <div class="col-md-2">
            <div class="info-item">
            <img src="./resources/icon/x-square.svg"/>	
              <a style="font-family: 'Roboto Slab', serif; color: gray;" href="./editProduct.jsp?edit=delete"><br><br>DELETE PRODUCT</a>
            </div>
            <br>
          </div>
        </div>
      </div>
    </section>
	<jsp:include page="footer_light.jsp" />
</body>
</html>