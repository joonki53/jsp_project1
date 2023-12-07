<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>HJK GAMES</title>
	<meta charset="UTF-8">
	<meta name="description" content="Game Warrior Template">
	<meta name="keywords" content="warrior, game, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/stylein.css"/>
	<link rel="stylesheet" href="css/animate.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
<%
		//로긴한사람이라면	 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<!-- logo -->
			<a class="site-logo" href="index.jsp">
				<img src="img/hjk_logo.jpg" alt="">
			</a>
			<div class="user-panel">
						<%
				//라긴안된경우
				if (userID == null) {
			%>
				<a href="login.jsp">Login</a>   /   <a href="join.jsp">Register</a>
			<%
				} else {

			%>
				<a href="logout.jsp">Logout</a>   /   <a href="join.jsp">Register</a>

			<%
				}
			%>
			</div>
			<!-- responsive -->
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<!-- site menu -->
			<%
				//라긴안된경우
				if (userID == null) {
			%>
				<nav class="main-menu">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="review.jsp">Games</a></li>
					<li><a href="bbs.jsp">Board</a></li>
				</ul>
			</nav>
			<%
				} else {

			%>
				<nav class="main-menu">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="review.jsp">Games</a></li>
					<li><a href="bbs.jsp">Board</a></li>
					<li><a href="write.jsp">Write</a></li>
				</ul>
			</nav>

			<%
				}
			%>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Latest news section -->
	<div class="latest-news-section">
		<div class="ln-title">Games News</div>
		<div class="news-ticker">
			<div class="news-ticker-contant">
				<div class="nt-item text-white"><span class="new">update</span><a href="https://www.leagueoflegends.com/ko-kr/news/game-updates/patch-13-18-notes/" target="_blank">League of Legends 9/13(수) 13.18 패치노트 </a></div>
				<div class="nt-item text-white"><span class="strategy">update</span><a href="https://events.fifaonline4.nexon.com/230831/update?utm_source=pc&utm_medium=boardThumb&utm_campaign=230831_update" target="_blank">FiFA ONLINE4 8/31 업데이트</a></div>
				<div class="nt-item text-white"><span class="racing">공지</span><a href="https://fifaonline4.nexon.com/news/notice/view?n4articlesn=4327" target="_blank">FiFA ONLINE4 (홈페이지 점검 추가) 9/14(목) 정기점검</a></div>
				<div class="nt-item text-white"><span class="racing">공지</span><a href="https://www.leagueoflegends.com/ko-kr/news/notices/servicepolicy-20230927/" target="_blank">League of Legends 9/27 운영정책 변경 안내</a></div>
				<div class="nt-item text-white"><span class="new">update</span><a href="https://lostark.game.onstove.com/News/Update/List" target="_blank">로스트아크 9월 업데이트</a></div>
				<div class="nt-item text-white"><span class="racing">공지</span><a href="https://lostark.game.onstove.com/News/Notice/Views/2529?page=1&searchtype=0&searchtext=&noticetype=all" target="_blank">로스트아크 9/13(수) 정기점검 안내</a></div>
				<div class="nt-item text-white"><span class="strategy">update</span><a href="https://www.pubg.com/ko/news/6616?category=patch_notes" target="_blank">배틀그라운드  8/30 25.2 패치노트</a></div>
				<div class="nt-item text-white"><span class="racing">공지</span><a href="https://www.pubg.com/ko/news/6657?category=notice">배틀그라운드 주간 제재 현황 안내 (8/23 ~ 9/3)</a></div>
				<div class="nt-item text-white"><span class="racing">공지</span><a href="https://overwatch.blizzard.com/ko-kr/news/patch-notes/">오버워치 패치노트</a></div>
			</div>
		</div>
	</div>
	<!-- Latest news section end -->


	<!-- Page info section -->
	<section class="page-info-section set-bg" data-setbg="img/page-top-bg/13.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2>한국 PC온라인 게임 랭킹 Top 10</h2>
						<p>PC방 점유율(%)</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page info section -->


	<!-- Page section -->
	<section class="page-section review-page spad">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/review/17.jpg">
							<div class="score yellow">41.6%</div>
						</div>
						<div class="review-text">
							<h4><a href="https://www.leagueoflegends.com/ko-kr/" style="color: black" target="_blank">League of Legends</a></h4>
							<p>	267주 연속 1등<br>장르: RTS/	서비스: 상용/ 공개서비스일: 2011-12-12
								개발사: 라이엇게임즈/ 등급: 12세 이용가/ 게임등록일: 2011-12-12
								유통사: 라이엇게임즈/ 권장사양: CPU 3GHz, RAM 1GB(국내/북미 서버 통합)</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/review/12.jpg">
							<div class="score yellow">10.9%</div>
						</div>
						<div class="review-text">
							<h4><a href="https://fconline.nexon.com/main/index" style="color: black" target="_blank">FIFA ONLINE4</a></h4>
							<p>2등<br>장르: 스포츠 / 공개서비스일:	2018-05-17 /
								개발사: EA/	등급: 전체이용가/ <br>
								게임등록일: 2018-05-16/
								유통사: 넥슨	권장사양: CPU 인텔 i5-2550K 또는 FX-6350 이상 램 8GB 이상, GPU GTX 460 또는 HD6870 이상</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/review/13.jpg">
							<div class="score yellow">6.6%</div>
						</div>
						<div class="review-text">
							<h4><a href="https://maplestory.nexon.com/Home/Main" style="color: black" target="_blank">Maple Story</a></h4>
							<p>	3등<br>장르: RPG/ 공개서비스일: 2003-04-29
								개발사: 위젯 스튜디오/ 등급: 전체이용가/<br> 게임등록일: 2003-07-22/
								유통사: 넥슨/ 권장사양: 펜티엄3 700MHz, RAM 128MB 이상</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/review/14.jpg">
							<div class="score yellow">5.4%</div>
						</div>
						<div class="review-text">
							<h4><a href="https://sa.nexon.com/main/index.aspx" style="color: black" target="_blank">SUDDEN ATTACK</a></h4>
							<p>	4등<br>장르: FPS/ 공개서비스일: 2005-08-23/
								개발사: 넥슨지티/ 등급: 청소년이용불가/<br> 게임등록일: 2005-08-24/
								유통사: 넥슨/ 권장사양: 펜티엄4 2GHz, RAM 512MB 이상</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/review/15.jpg">
							<div class="score yellow">5%</div>
						</div>
						<div class="review-text">
							<h4><a href="https://playvalorant.com/ko-kr/" style="color: black" target="_blank">VALORANT</a></h4>
							<p>	5등<br>장르: FPS/ 공개서비스일: 2020-06-02/
								개발사: 라이엇 게임즈/등급: 15세 이용가<br> 게임등록일: 2020-05-28/
								유통사: 라이엇 게임즈</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/review/16.jpg">
							<div class="score yellow">4.9%</div>
						</div>
						<div class="review-text">
							<h4><a href="https://lostark.game.onstove.com/Promotion/Update/230913" style="color: black" target="_blank">Lost Arc</a></h4>
							<p>	6등<br>장르: RPG/ 공개서비스일: 2018-11-07/
								개발사: 스마일게이트 알피지<br> 등급: 청소년 이용불가/ 게임등록일: 2018-05-24/
								유통사: 스마일게이트 알피지/ 권장사양: Intel i5이상 / Ryzen 5이상 /1080P FHD NVIDIA GeForce GTX 660 GeForce GTX 1050	</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/review/18.jpg">
							<div class="score yellow">3.7%</div>
						</div>
						<div class="review-text">
							<h4><a href="https://overwatch.blizzard.com/ko-kr/" style="color: black" target="_blank">OVER WATCH</a></h4>
							<p>	7등<br>장르: FPS/ 공개서비스일: 2022-10-05/
										개발사: 블리자드	/ 등급: 12세, 15세 이용가<br> 게임등록일: 2016-05-04/
										유통사: 블리자드/ 권장사양: Intel Core i7 또는 AMD Ryzen™ 5
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/review/19.jpg">
							<div class="score yellow">3.04%</div>
						</div>
						<div class="review-text">
							<h4><a href="https://pubg.com/ko/" style="color: black" target="_blank">BATTLE GROUNDS</a></h4>
							<h4><a href="https://pubg.game.daum.net/pubg/index.daum" style="color: black" target="_blank">BATTLE GROUNDS Daum</a></h4>
							<p>	8등<br>장르: FPS/	
										개발사: 펍지 주식회사/ 등급: 청소년 이용불가<br> 게임등록일: 2017-07-12/
										유통사: 펍지 주식회사,카카오게임즈/ 권장사양: 램8GB/ 그래픽 GTX1060 3GB
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/review/20.jpg">
							<div class="score yellow">2.53%</div>
						</div>
						<div class="review-text">
							<h4><a href="https://starcraft.blizzard.com/ko-kr/" style="color: black" target="_blank">STAR CRAFT</a></h4>
							<p>	9등<br>장르: RTS/ 공개서비스일: 1998-04-01/
										개발사: 블리자드/ 등급: 전체이용가<br> 게임등록일: 2002-10-16/
										유통사: 블리자드/ 권장사양: 펜티엄 166MHz, RAM 32MB 이상
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/review/1.png">
							<div class="score yellow">2.4%</div>
						</div>
						<div class="review-text">
							<h4><a href="https://df.nexon.com/" style="color: black" target="_blank">DUNGEON & FIGHTER</a></h4>
							<p>	10등<br>장르: RPG/ 공개서비스일: 2005-08-10/
										개발사: 네오플/ 등급: 청소년이용불가<br>게임등록일: 2005-08-23
										유통사: 넥슨/ 권장사양: 펜티엄4 1.8GHz이상, RAM 512MB 이상

						</div>
					</div>
				</div>
			</div>
			
		</div>
	</section>
	<!-- Page section end -->


	<!-- Review section -->
	
	<!-- Review section end -->


	<!-- Footer top section -->
	
	<!-- Footer top section end -->

	
	<!-- Footer section -->
	<footer class="footer-section">
		<div class="container">
			<ul class="footer-menu">
				<li><a href="index.jsp">Home</a></li>
					<li><a href="review.jsp">Games</a></li>
					<li><a href="bbs.jsp">Board</a></li>
			</ul>
			<p class="copyright">
			<a class="site-logo" href="index.jsp">
				<img src="img/hjk_logo.jpg" alt="">
			</a>
		</div>
	</footer>
	<!-- Footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/main.js"></script>
    </body>
</html>