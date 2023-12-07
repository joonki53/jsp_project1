<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>

	<script>

		   //true는 확인버튼을 눌렀을 때 코드 작성
		   <%
			session.invalidate();//현재 이 페이지에 접속한 회원이 세션을 빼앗기도록
			%>
			alert("로그아웃 되었습니다.");
		   location.href="index.jsp";
	
		
	</script>
</body>
</html>

