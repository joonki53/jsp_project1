<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>

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
	
	<form action="write_ok.jsp"  method="post">
	
	<div id="board_write">
		<table>
			<colgroup>
				<col width="20%">
				<col>
			</colgroup>

			 
			<tbody>
				
				
				
				
				<tr>
					<th>제목</th>
					<td><input type="text" name="bbsTitle"  class="form-control" ></td>
					
				</tr>
				<tr>
					<th>게임</th>
					<td><select class="form-control" name="bbsGame"  class="form-control" value="" detect="" detect-check="true" required>
					<option value="">선택</option>
								<option value="Lost Arc">Lost Arc</option>
								<option value="BATTLE GROUND">BATTLE GROUND</option>
								<option value="FIFA ONLINE4">FIFA ONLINE4</option>
								<option value="OVERWATCH">OVERWATCH</option>
								<option value="League of Legends">League of Legends</option>
					</select></td>
					
								
						
					
				</tr>
     
				<tr>
					
					<td colspan="2" class="editor"><textarea name="bbsContent" rows="20" title="내용" required></textarea></td>
					
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
		<button type="submit" class="btn gray" > 확인 </button> 
		<button type="button" class="btn gray" onclick="location.href='bbs.jsp'; return false;"> 취소 </button> 

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





<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

	<!-- 부트스트랩 JS  -->

	<script src="js/bootstrap.js"></script>

  </body>

</html>
