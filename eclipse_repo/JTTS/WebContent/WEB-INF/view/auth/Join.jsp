<%@page import="framework.init.ServerConfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>JTTS JOIN</title>
<link rel="stylesheet" type="text/css" href="http://welcome.blog-yh.kr/EncodingServer/weblib/css/axicon/axicon.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="http://welcome.blog-yh.kr/EncodingServer/weblib/js/toast-master/toastr.min.css" />
<link rel="stylesheet" type="text/css" href="http://welcome.blog-yh.kr/EncodingServer/weblib/css/util.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://welcome.blog-yh.kr/EncodingServer/weblib/js/toast-master/toastr.min.js"></script>
<script type="text/javascript" src="http://welcome.blog-yh.kr/EncodingServer/weblib/js/util.js"></script>
<script type="text/javascript">
	$('document').ready(function() {
		
	});
</script>
</head>
<body>
<div class="container-fluid">
	<h2 style="margin: 30px auto;"><%=ServerConfig.getProjectName() %> <span style="font-size: medium;">version : <%=ServerConfig.getProjectVersion() %></span></h2>
	<form action="/JTTS/process/auth/join">
		<!-- id : <input type="text" name="id" autocomplete="off">
		pw : <input type="password" name="pw">
		pw confirm : <input type="password" name="pw-confirm">
		name : <input type="text" name="name">
		nickname : <input type="text" name="nickname"> -->
		id : <input type="text" name="id" autocomplete="off" value="tester">
		pw : <input type="password" name="pw" value="test123123">
		pw confirm : <input type="password" name="pw-confirm" value="test123123">
		name : <input type="text" name="name" value="테스트">
		nickname : <input type="text" name="nickname" value="테스트입니다.">
		
		<input type="submit" value="회원가입"> 
	</form>
</div>
</body>
</html>