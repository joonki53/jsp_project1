<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HJK GAMES &copy; Join page</title>
	
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<form class="report" method="post" action="join_ok.jsp">
	<h1>Join</h1>

	<p style="font-size:25px;">ID</p>
	<input type='text' name='userID'  style="font-size: 20px;" required >

	<p style="font-size:25px;">PW</p>
	<input type="text" name="userPassword"   style="font-size: 20px;" required >

    <p style="font-size:25px;">PW_check</p>
	<input type="text" name="userPassch"  style="font-size: 20px;" required >

	<p style="font-size:25px;">NAME</p>
	<input type="text" name="userName"  style="font-size: 20px;"required >

	<p style="font-size:25px;">HP</p>
	<input type="text" name="userHp"  style="font-size: 20px;"required >

	<p style="font-size:25px;">Email</p>
	<input type="text" name="userEmail"  style="font-size: 20px;"required >

	<button type="submit" name="compeletebtn">Join</button>
</form>
</body>
</html>
