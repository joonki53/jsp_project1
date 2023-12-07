<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>

<%@ page import="bbs.Bbs"%>

<%@ page import="bbs.BbsDAO"%>

<!DOCTYPE html>
<html lang="ko">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- //구글폰트 -->
 

    <title>H.J.K &copy; write page</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">	
    <!-- Custom styles for this template -->	
    <link href="css/reset_responsive.css" rel="stylesheet">    
	
    <link href="css/board.css" rel="stylesheet">
	<link href="css/submenu2.css" rel="stylesheet">
	 <link rel="stylesheet" href="css/board3.css">
	
	
    
    <link rel="stylesheet" href="css/search_game.css">
    
	<!--   -->
  </head>
  <body>
  <%

		//로긴한사람이라면	 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값

		String userID = null;

		if (session.getAttribute("userID") != null) {

			userID = (String) session.getAttribute("userID");

	

		}

		int bbsID = 0;

		if (request.getParameter("bbsID") != null) {

			bbsID = Integer.parseInt(request.getParameter("bbsID"));

		}

		if (bbsID == 0) {

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('유효하지 않은 글 입니다.')");

			script.println("location.href = 'bbs.jsp'");

			script.println("</script>");

		}

		Bbs bbs = new BbsDAO().getBbs(bbsID);

	%>
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


<!--타이틀자리 -->



<!-- 헤더 네비게이션 -->
	
<!--//네비게이션 종료-->
  







<!-- 본문 -->
<div class="container">	
	


	
	<!-- 게시판 쓰기 -->
	
	<form action="modi.jsp"  method="post">
	
	<div id="board_write">
		<table>
			<colgroup>
				<col width="20%">
				<col>
			</colgroup>

			 
			<tbody>
				
				
				
				
				<tr>
					<th>제목</th>
					<td style="color: white"><%= bbs.getBbsTitle() %></td>
					
				</tr>
				<tr>
					<th>작성자</th>
					<td style="color: white"><%= bbs.getUserID() %></td>
					
				</tr>
				<tr>
					<th>게임 종류</th>
					<td style="color: white"><%= bbs.getBbsGame() %></td>
					
				</tr>
				<tr>
					<th>작성일</th>
					<td style="color: white"><%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시"

							+ bbs.getBbsDate().substring(14, 16) + "분"%></td>
					
				</tr>
     
				<tr>
					
					<td colspan="2" class="editor"><textarea name="contents" rows="20" title="내용" readonly="true"><%= bbs.getBbsContent() %></textarea></td>
					
				</tr>
				
				
				<!-- <tr>
					<th>첨부파일</th>
					<td>
						<div class="file_box">
							<input type="text" class="file_name" readonly="readonly"></input>
							<label for="uploadBtn" class="btn_file">찾아보기</label>
							<input type="file" id="uploadBtn" value="1" name="b_file" class="uploadBtn"></input>
							
						</div>
					</td>
				</tr>				 -->
				
			</tbody>
		
		</table>
	</div>
	<!-- //게시판 쓰기 -->

	<!-- 게시판 버튼 -->
	<div class="border_btn2">
	<a href = "bbs.jsp" class="btn btn-primary">목록</a>
		<%

				//글작성자 본인일시 수정 삭제 가능
					
					if(userID != null && userID.equals(bbs.getUserID())){

				%>

						<a href="modi.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">수정</a>
						<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="delete.jsp?bbsID=<%= bbsID %>" class="btn btn-primary	">삭제</a>

				<%					

					}

				%>
	</div>
	
	<!-- //게시판 버튼 -->
	<input type="hidden" name="page" value="<?=$page_name?>" />
	<input type="hidden" name="answer" value="<?=$answer?>" />
	<? if($answer==1) { ?>
	<input type="hidden" name="idx" value="<?=$idx?>" />
	<?}?>
	</form>
	
</div>
<!-- //본문 -->





<!-- 하단 맨 끝 -->







  </body>

</html>
