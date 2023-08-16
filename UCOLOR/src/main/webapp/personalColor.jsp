<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<title>UCOLOR</title>
<style>
	p {
		font-family: 'Gowun Batang', serif;
	}
</style>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<div class="card-deck">
	<div class="card col-md-6" style="padding-left: 0; padding-right: 0">
  	<img class="card-img-top" src="./resources/images/springWarm.png">
  		<div class="card-body">
    		<p class="card-text">▶ 봄웜 브라이트 : 밝은 톤의 봄 웜톤으로, 피부 톤이 밝고 대비도 상대적으로 강합니다. 채도가 높고 비비드한 컬러가 잘 어울리는 특징을 가지고 있습니다.<br>
▶ 봄웜트루: 정석적인 봄 웜톤으로, 옐로우와 오렌지 베이스의 봄 웜톤 컬러는 전반적으로 모두 잘어울려 컬러 선택의 폭이 넓습니다.<br>
▶ 봄웜 라이트 : 봄웜톤에 화이트 컬러가 더해진 톤으로, 명도가 높고 대비가 낮아 부드러운 톤을 가지고 있습니다. 채도가 높은 컬러가 받지 않는다면 봄웜 라이트일 확률이 높아요.</p>
  		</div>
	</div>
	
	<div class="card col-md-6" style="padding-left: 0; padding-right: 0">
  	<img class="card-img-top" src="./resources/images/summerCool.png">
  		<div class="card-body">
    		<p class="card-text">▶ 여름쿨 라이트 : 비비드한 색감의 트루톤에 흰색이 섞인 톤이에요. 흰색이 섞였기 때문에 대체로 맑은 느낌을 주면서 채도가 낮고 밝은 파스텔 톤과 잘 어울립니다.<br>
▶ 여름쿨 트루 : 트루 톤은 원색이 잘 어울려요. 라이트와 소프트 톤 사이의 무난한 중간색으로서 모든 쿨톤 색이 잘 어울립니다.가장 색상 선택의 스펙트럼이 넓은 톤입니다.<br>
▶ 여름쿨 뮤트 : 회색이 섞여 차분한 느낌을 줘요. 뮤트 톤의 사람들은 너무 밝기만 한 것보다 탁하고 그레이 톤이 잘 어울립니다.</p>
  		</div>
	</div>
	
	<div class="card col-md-6" style="padding-left: 0; padding-right: 0">
  	<img class="card-img-top" src="./resources/images/autumnWarm.png">
  		<div class="card-body">
    		<p class="card-text">▶ 가을 웜 뮤트 : 트루톤에 회색빛이 더해진 컬러로 조금 더 부드럽고 채도가 낮아요.<br>
▶ 가을 웜 트루 : 가을웜톤의 주를 이루며 명도가 낮고 채도가 높은 것이 특징으로 컬러 스펙트럼이 가장 넓어요.<br>
▶ 가을 웜 딥  : 블랙이 더해져 조금 더 어둡고 깊은 컬러가 잘 어울려요.</p>
  		</div>
	</div>
	
	<div class="card col-md-6" style="padding-left: 0; padding-right: 0">
  	<img class="card-img-top" src="./resources/images/winterCool.png">
  		<div class="card-body">
    		<p class="card-text">▶ 겨울쿨 브라이트 : 선명하고 시원한 컬러에 봄 웜톤의 화사함을 더한 겨울쿨 브라이트, 밝고 생생한 컬러가 어울리고 비비드 한 원색이나 네온컬러처럼 인공적으로 느껴지는 컬러가 특징입니다.<br>
▶ 겨울쿨 트루 : 대체적으로 선명하고 눈에 띄는 컬러가 잘 받으며 채도가 낮은색은 어울리지않는다. 차가운 느낌의 쿨 채도 컬러라면 상대적으로 넓게 커버 가능해요.<br>
▶ 겨울쿨 다크 : 전체적으로 채도가 높고 명도가 낮아 깊고 안정감 있는 컬러가 잘 어울립니다. 블랙&화이트 처럼 밝은컬러와 어두운 컬러의 명도대비가 큰 스타일링이 잘 어울려요.</p>
  		</div>
	</div>
	</div>
	<br><br><br>
	<jsp:include page="footer_light.jsp" />
</body>
</html>