<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>HJK GAMES BLOG</title>
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
		<div class="ln-title">Latest News</div>
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
	<section class="page-info-section set-bg" data-setbg="img/page-top-bg/10.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2>BATTLE GROUNDS BLOG</h2>
						<p>this page is a battle grounds blog page , freely share and talking about information for game</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page info section -->


	<!-- Page section -->
	<section class="page-section single-blog-page spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="blog-thumb set-bg" data-setbg="img/recent-game/11.jpg">
						<div class="cata new">Hot</div>
						<div class="rgi-extra">
							<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
							<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
						</div>
					</div>
					<div class="blog-content">
						<h3>Battle Grounds information</h3>
					
						<p>
							개발 : PUBG<br>
							장르 : 배틀로얄, 액션, 서바이벌, 스릴러, 느와르<br>
							플랫폼 : Windows, PS4, XBOX ONE<br>
							출시 : 	Windows <br>
									2017년 3월 24일 (스팀 얼리 엑세스)<br>
									2017년 11월 14일 (카카오 서버)<br>
									2017년 12월 21일 (정식 출시)<br>
									2022년 12월 8일 (에픽게임즈)<br>
									XBOX ONE : 2018년 9월 4일<br>
									PS4 : 2018년 12월 7일 <br>
						</p>
						<p>
							크래프톤의 자회사인 펍지 스튜디오의 MMO 슈팅 게임이다. 공식 명칭은 PUBG: BATTLEGROUNDS, 약칭 배틀그라운드이며, 더 줄여서 배그라고 많이 부른다. 게임플레이 형식은 브렌던 그린(Brendan Greene, 닉네임 PLAYERUNKNOWN)이 이전에 제작했던 ARMA 3의 모드 'PLAYERUNKNOWN'S Battle Royale'을 기반으로 하여, 일개 게임의 모드에 그치지 않고 스탠드얼론으로 제작된 작품이다. 
							최대 100명의 인원이 무기와 탈것을 활용해 벌이는 배틀로얄 게임으로, 방대한 오픈 월드 맵에서 물품을 얻고 다양한 전략을 이용해 싸우면서 최후의 1인 혹은 1팀을 가려내는 방식이라고 할 수 있다. 스팀을 통해 전세계 동시 출시를 하였으며, 300만명이 넘는 스팀역사상 최다 동접자기록을 세우면서 본격적인 배틀로얄 게임 시대를 열었다는 평가를 받고 있다.
							비록 왕좌를 포트나이트에 넘겨주긴 했지만, 출시 이후 수많은 배틀로얄 게임들이 등장했으며 콜 오브 듀티 등의 메이저 게임도 배틀로얄 모드를 도입시키는 등 게임계에 상당한 파장을 불러일으켰다는 데에서 영향력이 큰 게임이다. 국내시장도 예외가 아니라서 100주넘게 PC방을 점령했던 LoL을 한동안 밀어냈고, 2017년 대한민국 게임대상을 차지했다!
							현재 경쟁작으로는 2017년 09월 27일에 나온 포트나이트 배틀로얄, 후발주자 Apex 레전드, 콜 오브 듀티: 워존 퍼시픽 정도가 있다.
							12.2차 패치로 게임 이름이 PLAYERUNKNOWN'S BATTLEGROUNDS에서 PUBG: BATTLEGROUNDS로 변경되었다.
							본래 유료 게임이었으나, 2022년 1월 12일 라이브 서버 점검 이후 부분 유료화로 전환됐다. 단, 무료 유저는 게임의 일부 기능을 이용할 수 없으며, 랭크 모드인 경쟁전 플레이를 하거나, 커스텀 매치 개설, 그리고 기타 혜택을 누리기 위해서는 플러스(Plus) 계정으로 업그레이드해야 한다.
						</p>
						
					</div>
					
					<div class="comment-form-warp">
						<h4 class="comment-title">WRITE</h4>
						<form class="comment-form" method="post" action="write_ok.jsp">
							<div class="row">
								<div class="col-md-6">
									<input type="text" placeholder="title" name="bbsTitle">
								</div>
								<div class="col-md-6">
									<input type="email" value="BATTLE GROUNDS" readonly name="bbsGame">
								</div>
								<div class="col-lg-12">
									<textarea placeholder="Message" name="bbsContent"></textarea>
									<button class="site-btn btn-sm">Send</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- sidebar -->
				<div class="col-lg-4 col-md-7 sidebar pt-5 pt-lg-0">
					<!-- widget -->
					
					<!-- widget -->
					<div class="widget-item">
						<h4 class="widget-title">랭킹</h4>
						<div class="latest-blog">
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/4.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">2023년 9월 20일 기준</div>
									<p>리그오브레전드</p>
									<p>점유율 41.06% , pc방 점유율 1등</p>
									<p>출처: 게임트릭스</p>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/6.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">2023년 9월 20일 기준</div>
									<p>피파온라인4</p>
									<p>점유율 10.43% , pc방 점유율 2등</p>
									<p>출처: 게임트릭스</p>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/5.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">2023년 9월 20일 기준</div>
									<p>메이플스토리</p>
									<p>점유율 6.98% , pc방 점유율 3등</p>
									<p>출처: 게임트릭스</p>
								</div>
							</div>
						</div>
					</div>
					<!-- widget -->
					
					<!-- widget -->
					<div class="widget-item">
						<div class="feature-item set-bg" data-setbg="img/features/8.jpg">
							<span class="cata new">new</span>
							<div class="fi-content text-white">
								<h5><a href="https://diablo4.blizzard.com/ko-kr/">디아블로4 출시!!!</a></h5>
								<p>개발: 블리자드</p>
								<p>출시일: 2023년 6월 6일</p>
							</div>
						</div>
					</div>
					<!-- widget -->
					<div class="widget-item">
						<div class="review-item">
							<div class="review-cover set-bg" data-setbg="img/features/10.jpg">
								<span class="cata new">coming soon</span>
							</div>
							<div class="review-text">
								<h5>사이버펑크</h5>
								<p>9월 26일 출시예정 - 사이버펑크 2077: 팬텀 리버티 확장팩</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page section end -->


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
			<p class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			<a class="site-logo" href="index.jsp">
				<img src="img/hjk_logo.jpg" alt="">
			</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
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
