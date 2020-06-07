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
	.mainContent {
		height: calc(100% - 56px);
	}
	.loginInput {
		text-align: center;
		height: 40px;
		border-radius: 40px;
		margin-bottom: 10px;
	}
	.mainContent {
		overflow: hidden;
	}
</style>
<script type="text/javascript">
	$('document').ready(function() {
		setTimeout(function() {
			$('.loginBox').css('opacity', '1');
		}, 1000)
	});
	
	function submitLogin() {
		var param = {};
		param.id = $('input[name=id]').val().trim();
		param.pw = $('input[name=pw]').val().trim();
		
		if (param.id == '')
			$$.toast.mobile.push('ID를 입력하지 않으셨습니다.', '.mainContent');
		else if (param.pw == '')
			$$.toast.mobile.push('Password를 입력하지 않으셨습니다.', '.mainContent');
		else {
			$.post('/JTTS/process/auth/login', param, function(json) {
				console.log(json);
				if (json.resultData.status == 'success')
					location.href = '/JTTS/page/main/manual';
				else {
					$$.toast.mobile.push('가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.', '.mainContent');
				}
			});
		}
	}
</script>
</head>
<body>
<div class="container">
	<div class="topBar">
		<i class="axi axi-android"></i> <i class="axi axi-smartphone"></i> <i class="axi axi-ion-aperture"></i>
		<div style="float: right;"><i class="axi axi-bluetooth"></i> LTE <i class="axi axi-ion-connection-bars"></i> 70% <i class="axi axi-ion-android-battery"></i> 12:00</div>
	</div>
	<div class="mainContent" style="background: #edfcff;">
		<div style="position: fixed; width: 338px; text-align: center; font-weight: bolder; margin-top: 587px;">Prototype <span title="Open Source Group :: AXISJ" style="font-size: 0.7rem; cursor: pointer;" onclick="location.href='https://axisj.com/axicon/';">with AXIcon</span></div>
		<div style="text-align: center;">
			<img src="/JTTS/weblib/imgs/JTTS-logo-vertical.png" style="width: 60%; margin-top: 150px;">
		</div>
		<div class="loginBox" style="opacity: 0; transition: opacity 1s ease 0s; margin-top: 35px; text-align: center;">
			<form action="javascript: submitLogin();" method="post">
				<input class="loginInput" type="text" name="id" placeholder="ID" autocomplete="off">
				<input class="loginInput" type="password" name="pw" placeholder="Password">
				<br>
				<input type="submit" value="Login" class="btn btn-success btn-xl" style="width: 130px;">
			</form>
			<button class="btn btn-success btn-xl" onclick="location.href='/JTTS/page/auth/join'" style="width: 130px; margin-top: 10px;">Join</button>
		</div>
	</div>
	<div class="navBar">
		<div><i class="axi axi-ion-android-system-windows"></i></div>
		<div><i class="axi axi-stop"></i></div>
		<div id="prevBtn" onclick="clickPrevBtn()"><i class="axi axi-keyboard-backspace"></i></div>
	</div>
</div>
</body>
</html>