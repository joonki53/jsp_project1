
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<%@ page import="java.io.PrintWriter"%>
	<%@ page import="bbs.BbsDAO"%>
	<%@ page import="bbs.Bbs"%>
	<%@ page import="java.util.ArrayList"%>
	
 


	
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
	<title>HJK GAMES &copy; Board page</title>
    <link rel="stylesheet" href="css/board2.css">
    
    <link rel="stylesheet" href="css/search_game.css">
    
    
    
</head>
<body>

 <nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><img src="img/hjk_logo.jpg" alt=""></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor02">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="index.jsp">Home
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="lost_bl.jsp">Lost Arc</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="lol_bl.jsp">LoL</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="fifa_bl.jsp">FiFA</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="over_bl.jsp">OVERWATCH</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="battle_bl.jsp">BATTLE GROUNDS</a>
        </li>
      </ul>
     
    </div>
  </div>
</nav>
  <%
		//로긴한사람이라면	 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1; //기본 페이지 넘버

		//페이지넘버값이 있을때
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	<%
				//라긴안된경우
				if (userID == null) {
			%>
				<h1><span class="yellow">&lt;</span><span class="yellow">Board Page</span><span class="yellow">&gt;</h1>
				<h2></h2>
			<%
				} else {

			%>
				<h1><span class="yellow">&lt;</span><span class="yellow">Board Page</span><span class="yellow">&gt;</h1>
				<h2></h2>
				

			<%
				}
			%>




<table class="container">
  <thead>
    <tr>
      
      <th><h1>번호</h1></th>
      <th><h1>게임</h1></th>
      <th><h1>제목</h1></th>
      <th><h1>작성자</h1></th>
      <th><h1>작성일</h1></th>
     
      
       <tbody>
					<% 
						
						BbsDAO bbsDAO = new BbsDAO();
						request.setCharacterEncoding("UTF-8");
						ArrayList<Bbs> list = bbsDAO.getSearch(request.getParameter("searchField"),
								request.getParameter("searchText"));
						if (list.size() == 0) {
							PrintWriter script = response.getWriter();
							script.println("<script>");
							script.println("alert('검색결과가 없습니다.')");
							script.println("history.back()");
							script.println("</script>");
						}
						for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%=list.get(i).getBbsID()%></td>
						<td><%=list.get(i).getBbsGame()%></td>
						<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>" style="color:gray"><%=list.get(i).getBbsTitle()%></a></td>
						<td><%=list.get(i).getUserID()%></td>
						<td><%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"
						+ list.get(i).getBbsDate().substring(14, 16) + "분"%></td>
						
					</tr>
					<%
						}
					%>
				</tbody>
    </tr>
  </thead>
</table>
<div class=container style="text-align: center">
				
				<a href="bbs.jsp" style="color:white" font="bold">◀ 뒤로가기</a>
			</div>

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>

</html>