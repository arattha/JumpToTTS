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
<link rel="stylesheet" type="text/css" href="http://welcome.blog-yh.kr/EncodingServer/weblib/css/util.css" />
<link rel="stylesheet" href="/JTTS/weblib/css/common.css">
<script type="text/javascript" src="//code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://welcome.blog-yh.kr/EncodingServer/weblib/js/util.js"></script>
<script type="text/javascript" src="/JTTS/weblib/js/common.js"></script>
<style type="text/css">
	.mainContent {
		height: calc(100% - 56px);
	}
</style>
<script type="text/javascript">
	$('document').ready(function() {
		$('.mainContent').css('background', '#edfcff');
		$('.mainContent>div').css('opacity', '1');
		setTimeout(function() {
			$('.mainContent>div>div>img').css('margin-top', '150px');
		}, 3000);
		setTimeout(function() {
			location.href = '/JTTS/page/auth/login';
		}, 5000);
	});
</script>
</head>
<body>
<div class="container">
	<div class="topBar">
		<i class="axi axi-android"></i> <i class="axi axi-smartphone"></i> <i class="axi axi-ion-aperture"></i>
		<div style="float: right;"><i class="axi axi-bluetooth"></i> LTE <i class="axi axi-ion-connection-bars"></i> 70% <i class="axi axi-ion-android-battery"></i> 12:00</div>
	</div>
	<div class="mainContent" style="background: #fff; transition: background 0.5s ease 1s; overflow: hidden;">
		<!-- <div style="width: 100%; opacity: 0; transition: opacity 1.5s ease 1.7s;">
			<div style="text-align: center; margin-bottom: 113px;">
				<img src="/JTTS/weblib/imgs/JTTS-logo-vertical.png" style="width: 60%; margin-top: 240px; transition: margin 0.8s ease-in-out 0s;">
			</div>
			<br><br><br><br><br><br>
			<div style="text-align: center; font-weight: bolder;">Prototype <span style="font-size: 0.7rem;">with AXIcon</span></div>
		</div> -->
		<div style="opacity: 0; transition: opacity 1.5s ease 1.7s;">
			<div style="position: fixed; width: 338px; text-align: center; font-weight: bolder; margin-top: 587px;">Prototype <span title="Open Source Group :: AXISJ" style="font-size: 0.7rem; cursor: pointer;" onclick="location.href='https://axisj.com/axicon/';">with AXIcon</span></div>
			<div style="text-align: center;">
				<img src="/JTTS/weblib/imgs/JTTS-logo-vertical.png" style="width: 60%; margin-top: 240px; transition: margin 0.8s ease-in-out 0s;">
			</div>
		</div>
	</div>
	<div class="navBar">
		<div><i class="axi axi-ion-android-system-windows"></i></div>
		<div><i class="axi axi-stop"></i></div>
		<div id="prevBtn" onclick="clickPrevBtn(function() {})"><i class="axi axi-keyboard-backspace"></i></div>
	</div>
</div>
</body>
</html>