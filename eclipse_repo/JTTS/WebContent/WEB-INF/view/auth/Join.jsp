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
	.joinInput {
		text-align: center;
		height: 25px;
		border-radius: 20px;
		margin-bottom: 10px;
	}
	.mainContent {
		overflow: hidden;
	}
</style>
<script type="text/javascript">
	$('document').ready(function() {
		$('.mainContent>div>img').css('margin-top', '70px');
		setTimeout(function() {
			$('.loginBox').css('opacity', '0');
		}, 200)
		setTimeout(function() {
			$('.loginBox').remove();
			$('.join-box').css('opacity', '1');
		}, 1000)
	});
	
	function submitRegister() {
		var param = {};
		param.id = $('input[name=id]').val().trim();
		param.pw = $('input[name=pw]').val().trim();
		param.pwCfm = $('input[name=pw-confirm]').val().trim();
		param.name = $('input[name=name]').val().trim();
		param.nickname = $('input[name=nickname]').val().trim();
		param.email = $('input[name=email]').val().trim();
		
		if (param.id == '')
			$$.toast.mobile.push('ID를 입력하지 않으셨습니다.', '.mainContent');
		else if (param.pw == '')
			$$.toast.mobile.push('Password를 입력하지 않으셨습니다.', '.mainContent');
		else if (param.pwCfm == '')
			$$.toast.mobile.push('Password Confirm을 입력하지 않으셨습니다.', '.mainContent');
		else if (param.pw != param.pwCfm)
			$$.toast.mobile.push('Password Confirm이 일치하지 않습니다.', '.mainContent');
		else if (param.name == '')
			$$.toast.mobile.push('Name을 입력하지 않으셨습니다.', '.mainContent');
		else if (param.nickname == '')
			$$.toast.mobile.push('Nickname을 입력하지 않으셨습니다.', '.mainContent');
		else if (param.email == '')
			$$.toast.mobile.push('Email을 입력하지 않으셨습니다.', '.mainContent');
		else {
			$.post('/JTTS/process/auth/join', param, function(json) {
				console.log(json);
				$$.toast.mobile.push('정상적으로 회원가입이 완료되었습니다.', '.mainContent');
				setTimeout(function() {
					$('.join-box').css('opacity', '0');
				}, 3500);
				setTimeout(function() {
					$('.mainContent>div>img').css('margin-top', '150px');
				}, 4000);
				setTimeout(function() {
					location.href = '/JTTS/page/auth/login';
				}, 5000);
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
			<img src="/JTTS/weblib/imgs/JTTS-logo-vertical.png" style="width: 60%; margin-top: 150px; transition: margin 0.8s ease-in-out 0s;">
		</div>
		<div class="loginBox" style="opacity: 1; transition: opacity 0.5s ease 0s; margin-top: 35px; text-align: center;">
			<form action="javascript:return false;" method="post">
				<input class="loginInput" type="text" name="id" placeholder="ID" autocomplete="off">
				<input class="loginInput" type="password" name="pw" placeholder="Password">
				<br>
				<input type="submit" value="Login" class="btn btn-success btn-xl" style="width: 130px;">
			</form>
			<button class="btn btn-success btn-xl" style="width: 130px; margin-top: 10px;">Join</button>
		</div>
		<div class="join-box" style="opacity: 0; transition: opacity 0.5s ease 0s; margin-top: 35px; text-align: center;">
			<span>Please complete below form.</span>
			<br><br>
			<form action="javascript: submitRegister()" method="post">
				<input class="joinInput" type="text" name="id" pattern="^[a-z][a-z|_|\-|0-9]{4,19}$" placeholder="ID" autocomplete="off">
				<input class="joinInput" type="password" name="pw" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$" placeholder="Password">
				<input class="joinInput" type="password" name="pw-confirm" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$" placeholder="Password Confirm">
				<input class="joinInput" type="text" name="name" placeholder="Name" autocomplete="off">
				<input class="joinInput" type="text" name="nickname" placeholder="Nickname" autocomplete="off">
				<input class="joinInput" type="email" name="email" pattern="^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$" placeholder="Email" autocomplete="off">
				<br>
				<input type="submit" value="Register!" class="btn btn-success btn-xl" style="width: 130px; margin-top: 15px;">
			</form>
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