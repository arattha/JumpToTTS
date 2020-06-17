<%@page import="framework.init.ServerConfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="referrer" content="origin-when-cross-origin">
<meta name="description" content="단국대학교 소프트웨어학과 캡스톤디자인 프로젝트 - Jump to TTS">
<meta property="og:title" content="Jump to TTS">
<meta property="og:description" content="단국대학교 소프트웨어학과 캡스톤디자인 프로젝트 - Jump to TTS">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="robots" content="noindex, nofollow">
<title>Jump to TTS - Welcome!</title>
<link rel="stylesheet" type="text/css" href="/JTTS/weblib/css/axicon/axicon.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/JTTS/weblib/css/util.css" />
<link rel="stylesheet" href="/JTTS/weblib/css/common.css">
<script type="text/javascript" src="//code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/JTTS/weblib/js/util.js"></script>
<script type="text/javascript" src="/JTTS/weblib/js/common.js"></script>
<style type="text/css">
	
</style>
<script type="text/javascript">
	$('document').ready(function() {
		
	});
</script>
</head>
<body>
<div class="container">
	<div class="topBar">
		<i class="axi axi-android"></i> <i class="axi axi-smartphone"></i> <i class="axi axi-ion-aperture"></i>
		<div style="float: right;"><i class="axi axi-bluetooth"></i> LTE <i class="axi axi-ion-connection-bars"></i> 70% <i class="axi axi-ion-android-battery"></i> 12:00</div>
	</div>
	<div class="mainContent" style="background: #fff;">
		<div class="upperMenubar" style="background: #edfcff; width: 338px;">
			<img src="/JTTS/weblib/imgs/JTTS-logo-horizontal.png" style="width: 140px; vertical-align: unset; margin-left: 18px; margin-top: 5px;">
		</div>
		
		<div style="margin-top: 25px; padding: 25px; text-align: center;">
			<div>
				<h3 style="margin-bottom: 20px;">Developer</h3>
				웹서버 개발 및 DB 설계 - 32141868 박유현
				<br>
				GCP 총괄 관리 - 32143180 이명재
				<br>
				음성학습 모델 구축 - 32144697 최광진
			</div>
			<div>
				<h3>Reference</h3>
				<img src="/JTTS/weblib/imgs/DeepVoiceBanner.png" style="width: 100%; vertical-align: unset;">
				<br>
				<span>DeepVoice3_Pytorch</span>
				<br>
				<span><a href="https://github.com/r9y9/deepvioce3_pytorch">https://github.com/r9y9/deepvioce3_pytorch</a></span>
				<br><br>
				<img src="/JTTS/weblib/imgs/JTTS-logo-horizontal.png" style="width: 78%; vertical-align: unset;">
				<br>
				<span>Jump to TTS</span>
				<br>
				<span><a href="https://github.com/kevin0309/JumpToTTS">https://github.com/kevin0309/JumpToTTS</a></span>
			</div>
			<button class="btn btn-success btn-xl" onclick="location.href='/JTTS/'" style="width: 130px; margin-top: 10px;">홈으로</button>
		</div>
	</div>
	<nav id="footer-nav">
		<ul>
			<li onclick="location.href='/JTTS/page/main/manual'">
				<span><i class="axi axi-description"></i></span>
				<br>메뉴얼
			</li>
			<li onclick="location.href='/JTTS/page/main/study'">
				<span><i class="axi axi-microphone2"></i></span>
				<br>음성학습
			</li>
			<li onclick="location.href='/JTTS/page/main/synthesis'">
				<span><i class="axi axi-volume-up"></i></span>
				<br>음성합성
			</li>
			<li onclick="location.href='/JTTS/page/main/ref'" class="selected">
				<span><i class="axi axi-book3"></i></span>
				<br>참고
			</li>
		</ul>
		<div id="menu-indicator" style="left: 75%"><div></div></div>
	</nav>
	<div class="navBar">
		<div><i class="axi axi-ion-android-system-windows"></i></div>
		<div><i class="axi axi-stop"></i></div>
		<div id="prevBtn" onclick="clickPrevBtn()"><i class="axi axi-keyboard-backspace"></i></div>
	</div>
</div>
</body>
</html>