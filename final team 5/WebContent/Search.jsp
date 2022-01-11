<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoogleSearch</title>
<style type="text/css">
body {
    background-color: #F6F6F6;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

.button {
	position: absolute;
	width: 45px;
	height: 25px;
	font-size: 15px;
	left: 50%;
	top: 50%;
}

.border-style {
	border-radius: 75px/90px;
}

#padding {
	padding: 0px 0px 0px 15px;
}

.circle {
	height: 45px;
	width: 45px;
	background-color: #fff;
	border-radius: 50%;
	display: inline-block;
}
</style>
</head>
<body>
	<form action='${requestUri}' method='get'>
		<div>
			<input type='text' class="border-style" id="padding"
				style='font-size: 120%; position: absolute; left: 50%; top: 48%; margin-top: -47px; margin-left: -400px; width: 800px; height: 50px '
				name='keyword' placeholder='請輸入關鍵字' onfocus="placeholder= '' "
				onblur="placeholder='請輸入關鍵字'" />
		</div>
		<div>
			<input type='image' src="images/loupe-2.png"
				style='position: absolute; width: 35px; height: 35px; left: 50%; top: 50.5%; margin-top: -55px; margin-left: 368px' />
		</div>
		<div>
			<a href='http://localhost:8080/final%20team%205/TestProject'><img
				src="images/Logo-1.png"
				style='position: absolute; width: 30%; height: 30%; left: 50%; top: 50%; margin-top: -265px; margin-left: -165px'></a>
		</div>
	</form>
</body>
</html>