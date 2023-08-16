<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@800&family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">

<title>UCOLOR</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	  <section id="contact" class="py-5">
      <div class="container">

        <div class="row">
          <div class="col-lg-12 text-center mb-5">
            <h1 style="font-family: 'Playfair Display', serif">Contact us</h1>
            <br><br>
          </div>
        </div>

        <div class="row gy-4 text-center">
        
          <div class="col-md-4 ">
            <div class="info-item">
       		  <img src="./resources/icon/geo-alt.svg"/>	
              <h5 style="font-family: 'Roboto Slab', serif"><br>ADDRESS</h5>
              <address>154-42, Gwanggyosan-ro, Yeongtong-gu, Suwon-si, Gyeonggi-do, Republic of Korea</address>
            </div>
          </div>

          <div class="col-md-4">
            <div class="info-item">
            <img src="./resources/icon/phone.svg"/>	
              <h5 style="font-family: 'Roboto Slab', serif"><br>PHONE NUMBER</h5>
              <p><a>010 - 2001 - 1101</a></p>
            </div>
          </div>

          <div class="col-md-4">
            <div class="info-item">
            <img src="./resources/icon/envelope.svg"/>	
              <h5 style="font-family: 'Roboto Slab', serif"><br>EMAIL</h5>
              <p><a>ucolor@naver.com</a></p>
            </div>
          </div>
        </div>
      </div>
    </section>
	<jsp:include page="footer_light.jsp" />	
</body>
</html>