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
	<section class="page-info-section set-bg" data-setbg="img/page-top-bg/1.webp">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-black">
						<h2>LEAGUE OF LEGENDS BLOG</h2>
						<p>this page is a league of legends blog page , freely share and talking about information for game</p>
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
					<div class="blog-thumb set-bg" data-setbg="img/recent-game/13.jpg">
						<div class="cata new">new</div>
						<div class="rgi-extra">
							<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
							<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
						</div>
					</div>
					<div class="blog-content">
						<h3>League of Legends information</h3>
						<a href="" class="meta-comment">3 comment</a>
						<p>
							개발 : RIOT GAMES<br>
							장르 : MOBA, AOS<br>
							플랫폼 : Windows, mac OS<br>
							출시 : 2011년 12월 4일
						</p>
						<p>
							(개인의 숙련도와 팀 시너지를 조합하는 5대5 MOBA, 리그 오브 레전드에서 플레이어님의 실력을 선보이세요. 포지션을 선택하고, 아이템 빌드를 완성하고, 맵에서 치열한 전투를 펼쳐 적의 넥서스를 파괴하세요. 무한한 플레이 방식을 가진 150명 이상의 챔피언 중 자신만의 챔피언을 찾아 승리를 쟁취하세요.)<br>
							라이엇 게임즈가 개발 및 서비스 중인, 5명의 플레이어가 각자 다른 포지션에서 성장을 통해 아이템과 레벨을 올려 상대의 기지를 파괴하는 MOBA 장르의 게임. 게임 명칭의 앞 철자들을 따서 LoL(롤), 영어권에서는 League 등의 약칭으로도 불린다.
							이전까지 있었던 MOBA(AOS) 게임들보다 진입 장벽을 낮추는 것으로 높은 인기를 얻었고 현재는 전 세계에서 많은 유저들을 보유중인데 PC 게임 중 전 세계에서 많이 플레이하는 게임 중 하나이며 2016년 기준 월 플레이어 수 1억 명 이상을 달성했고, 2019년 8월 기준 하루 전 세계 서버의 피크 시간 동시 접속자 수를 합치면 800만 명 이상이다. 또한 전 세계 E스포츠 대회 중 가장 많은 시청자 수 기록을 보유 중인 리그 오브 레전드 월드 챔피언십과 각 지역 리그 등 수많은 e스포츠 대회가 많이 개최되는 중이다. 그리고 2018 자카르타·팔렘방 아시안 게임에서 공식 시범 종목으로 채택되기도 했다.
							대한민국에서는 언제나 PC방 점유율 1위를 놓치지 않는 최고의 인기 PC게임으로, 주로 청소년층과 젊은 성인층을 중심으로 꾸준히 사랑받고 있어 단순히 PC게임을 넘어 청소년 문화를 상징하는 요소 중 하나로 자리매김하였다.
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
									<input type="email" value="League of Legends" readonly name="bbsGame">
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
