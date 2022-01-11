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

#padding {
	padding: 0px 0px 10px 10px;
}

a {

	color: #5B92D9;
	font-size: 30px;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

.border-style {
	border-radius: 90px/90px;
}
</style>
</head>
<body>
	<!-- style='background-color: #0d3640' -->
	<form action='${requestUri}' method='get'>

		<br> <br> <br> <br> <br> <br>
		<div>
			<a href='http://localhost:8080/Fin/TestProject'><img
				src="images/Logo-1.png"
				style='position: absolute; width: 20%; height: 20%; left: 50%; top: 50%; margin-top: -300px; margin-left: -550px'></a>
		</div>
		<div>
			<input type='image' src="images/loupe-2.png"
				style='position: absolute; width: 35px; height: 35px; left: 50%; top: 50%; margin-top: -300px; margin-left: 368px' />
		</div>
		<div>
				
				<input type='text' class="border-style" id="padding"
				style='font-size: 120%; position: absolute; left: 50%; top: 48%; margin-top: -250px; margin-left: -400px; width: 800px; height: 50px '
				name='keyword' placeholder='請輸入關鍵字' onfocus="placeholder= '' "
				onblur="placeholder='請輸入關鍵字'" />
		</div>
		<div style='margin-top:50px; margin-left:15px'>
			
			<%
			String[][] orderList = (String[][]) request.getAttribute("query");
			for (int i = 0; i < orderList.length; i++) {
				String s = orderList[i][1];
			%>

			<a href='<%=s%>'><%=orderList[i][0]%> </a> <br> <br> <br>
			<%
			}
			%>
			
		</div>
		<img src="images/background.jpeg" style='width:100%;height:100%'>
	</form>
	
</body>
</html>