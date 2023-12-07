<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
	<title>HJK GAMES &copy; Login page</title>

	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<form class="box" method="post" action="login_ok.jsp">
	<h1>Login</h1>
	<input type="text" name="userID" placeholder="ID" required>
	<input type="password" name="userPassword" placeholder="PASSWORD" required>
<div>
	<button type="submit" name="loginbtn" >login</button>
	<button type="button" name="joinbtn" onclick="location.href='join.jsp'">Join</button>
	
	
</div>
	</form>
</body>
</html>