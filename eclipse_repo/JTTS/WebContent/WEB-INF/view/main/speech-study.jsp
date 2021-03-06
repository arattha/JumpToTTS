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
	.script-list {
		width: 100%;
	}
	.script-list tr {
		height: 34px;
	}
</style>
<script type="text/javascript">
	$('document').ready(function() {
		
	});
	
	function addBold(dom) {
		$('.script-sample').each(function() {
			$(this).css('font-weight', 'inherit');
		});
		$(dom).css('font-weight', 'bold');
	}
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
		
		<div style="margin-top: 25px; padding: 25px;">
			<h3 style="text-align: center;">
				<img src="/JTTS/weblib/imgs/JTTS-icon.png" style="width: 20px; padding-bottom: 6px;">
				대본을 녹음해주세요.
			</h3>
			
			<div style="height: 330px; overflow-y: scroll; padding-top: 10px;">
				<table class="script-list">
					<tr>
						<td><i class="axi axi-check2" style="color: #38b301"></i></td>
						<td class="script-sample" onclick="addBold(this);">기차도 전기도 없었다.</td>
						<td><i class="axi axi-play"></i></td>
					</tr>
					<tr>
						<td><i class="axi axi-check2" style="color: #38b301"></i></td>
						<td class="script-sample" onclick="addBold(this);">이제 날씨가 너무 덥다.</td>
						<td><i class="axi axi-play"></i></td>
					</tr>
					<tr>
						<td><i class="axi axi-check2" style="color: #38b301"></i></td>
						<td class="script-sample" onclick="addBold(this);">안녕하세요.</td>
						<td><i class="axi axi-play"></i></td>
					</tr>
					<tr>
						<td><i class="axi axi-check2" style="color: #38b301"></i></td>
						<td class="script-sample" onclick="addBold(this);">감사해요.</td>
						<td><i class="axi axi-play"></i></td>
					</tr>
					<tr>
						<td><i class="axi axi-check2" style="color: #38b301"></i></td>
						<td class="script-sample" onclick="addBold(this);">잘있어요.</td>
						<td><i class="axi axi-play"></i></td>
					</tr>
					<tr>
						<td><i class="axi axi-check2" style="color: #38b301"></i></td>
						<td class="script-sample" onclick="addBold(this);">다시 만나요.</td>
						<td><i class="axi axi-play"></i></td>
					</tr>
					<tr>
						<td><i class="axi axi-trending-neutral"></i></td>
						<td class="script-sample" onclick="addBold(this);" style="font-weight: bold;">화려한 조명이 나를 감싸네.</td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td class="script-sample" onclick="addBold(this);">내일은 비가 올 예정이다.</td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td class="script-sample" onclick="addBold(this);">오늘 저녁은 김치찌개이다.</td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td class="script-sample" onclick="addBold(this);">어제 너무 늦게 잤다.</td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td class="script-sample" onclick="addBold(this);">여기까지 스크롤을 내리다니.</td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td class="script-sample" onclick="addBold(this);">시 공 조 아</td>
						<td></td>
					</tr>
				</table>
			</div>
			
			<div style="font-size: 5.5rem; text-align: center; margin-top: 15px;">
				<i class="axi axi-record" style="cursor: pointer; color: #f00;"></i>
				<i class="axi axi-pause" style="cursor: pointer;"></i>
				<i class="axi axi-stop" style="cursor: pointer;"></i>
			</div>
		</div>
	</div>
	<nav id="footer-nav">
		<ul>
			<li onclick="location.href='/JTTS/page/main/manual'">
				<span><i class="axi axi-description"></i></span>
				<br>메뉴얼
			</li>
			<li onclick="location.href='/JTTS/page/main/study'" class="selected">
				<span><i class="axi axi-microphone2"></i></span>
				<br>음성학습
			</li>
			<li onclick="location.href='/JTTS/page/main/synthesis'">
				<span><i class="axi axi-volume-up"></i></span>
				<br>음성합성
			</li>
			<li onclick="location.href='/JTTS/page/main/ref'">
				<span><i class="axi axi-book3"></i></span>
				<br>참고
			</li>
		</ul>
		<div id="menu-indicator" style="left: 25%"><div></div></div>
	</nav>
	<div class="navBar">
		<div><i class="axi axi-ion-android-system-windows"></i></div>
		<div><i class="axi axi-stop"></i></div>
		<div id="prevBtn" onclick="clickPrevBtn()"><i class="axi axi-keyboard-backspace"></i></div>
	</div>
</div>
</body>
</html>