<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<title>UCOLOR</title>
</head>
<style>
	p,h6,li {
		font-family: 'Noto Sans KR', sans-serif;
	}
</style>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	
	<div class="card border-light">
        	<img class="card-img-top" src="./resources/images/colors.png">
           <div class="card-body">
            <h2 class="card-title text-center">UCOLOR</h2>
            <p class="text-center">2022.11.01 ~ing</p>
            <p style="text-align: center; font-size: 14px; color: gray;">OPEN : AM 10:00 ~ PM 10:30</p>
			<p class="text-center">퍼스널 컬러는 개인이 갖고 있는 고유의 신체 색상으로 보통 피부·머리카락·눈동자 색을 의미합니다. <br>UCOLOR는 "당신을 위한 컬러"를 찾아주는 곳으로 퍼스널컬러 전문컨설팅을 제공합니다. <br>저희 UCOLOR에서는 개인에게 가장 알맞은 색채를 찾아내고 총 20가지 PCCS세부 분류로 명확한 퍼스널 컬러 타입을 제안해 드립니다.</p>
            <br>
            <h6 style="font-weight: 700; text-align: center;">- 당당하고 멋진 자신만의 브랜드 커리어를 완성하는 UCOLOR -</h6>
			<br>
            <h6 style="font-size:14px">▷ 안내사항</h6>
            <ul style="font-size:13px">
              	<li>주차 가능</li>
              	<li>컨설팅 고객 외 동행인, 반려동물 입장제한</li>
              	<li>진단시간이 정해져 있으므로 늦으실 경우 늦으시는 만큼 컨설팅 시간이 단축될 수 있습니다.</li>
              	<li>동영상촬영 및 녹취를 금지하고 있습니다. 사진촬영만 가능합니다.</li>
            </ul>
            <br>
  		</div>
	</div>
	
	<jsp:include page="footer_light.jsp" />
</body>
</html>