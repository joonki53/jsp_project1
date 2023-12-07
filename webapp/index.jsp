<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>HJK GAMES MAIN</title>
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


	<!-- Hero section -->
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/sl2.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>RPG <span>Game</span> LOST ARC</h2>
						<p>this game is a korea popular rpg game</p><br>
						<a href="lost_bl.jsp" class="site-btn">Read More</a>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/sl8.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>Popular <span>Game</span> BATTLE GROUNDS</h2>
						<p>battle grounds is a very popular survival game</p><br>
						<a href="battle_bl.jsp" class="site-btn">Read More</a>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/sl7.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>Popular <span>Game</span> OVERWATCH</h2>
						<p>overwatch is a exciting hero shooting game</p>
						<a href="over_bl.jsp" class="site-btn">Read More</a>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/sl4.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>The Best <span>Game</span> LEAGUE OF LEGENDS</h2>
						<p>league of legends is the most popular game in korae</p><br>
						<a href="lol_bl.jsp" class="site-btn">Read More</a>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/sl11.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>SPORTS <span>Game</span> FIFA ONLINE4</h2>
						<p>fifa online4 is the most popular sports game in korea</p><br>
						<a href="fifa_bl.jsp" class="site-btn">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero section end -->


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


	<!-- Feature section -->
	<section class="feature-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 p-0">
					<div class="feature-item set-bg" data-setbg="img/features/7.jpg">
						<span class="cata new">Hot</span>
						<div class="fi-content text-white">
							<h5><a href="#">Lost Arc</a></h5>
							<p>RPG 인기게임</p>
							<a href="lost_bl.jsp" class="fi-comment">go to blog</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 p-0">
					<div class="feature-item set-bg" data-setbg="img/features/5.jpg">
						<span class="cata strategy">Top</span>
						<div class="fi-content text-white">
							<h5><a href="#">LEAGUE OF LEGENDS</a></h5>
							<p>한국 PC방 점유율 순위 1등 게임</p>
							<a href="lol_bl.jsp" class="fi-comment">go to blog</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 p-0">
					<div class="feature-item set-bg" data-setbg="img/features/3.jpg">
						<span class="cata new">Hot</span>
						<div class="fi-content text-white">
							<h5><a href="#">BATTLE GROUNDS</a></h5>
							<p>서바이벌 인기게임</p>
							<a href="battle_bl.jsp" class="fi-comment">go to blog</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 p-0">
					<div class="feature-item set-bg" data-setbg="img/features/6.jpg">
						<span class="cata racing">sports</span>
						<div class="fi-content text-white">
							<h5><a href="#">FIFA ONLINE4</a></h5>
							<p>한국 스포츠 게임 순위 1등</p>
							<a href="fifa_bl.jsp" class="fi-comment">go to blog</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Feature section end -->


	<!-- Recent game section  -->
	<section class="recent-game-section spad set-bg" data-setbg="img/recent-game-bg.png">
		<div class="container">
			<div class="section-title">
				<div class="cata new">RANK</div>
				<h2><a href="review.jsp" style="color: black">Game Ranking</a></h2>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="recent-game-item">
						<div class="rgi-thumb set-bg" data-setbg="img/recent-game/13.jpg">
							<div class="cata new">TOP1</div>
						</div>
						<div class="rgi-content">
							<h5>League of Legends</h5>
							
							<a href="https://www.leagueoflegends.com/ko-kr/" class="comment"target="_blank">go to site</a>
							<div class="rgi-extra">
								<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
								<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="recent-game-item">
						<div class="rgi-thumb set-bg" data-setbg="img/recent-game/14.jpg">
							<div class="cata racing">TOP2</div>
						</div>
						<div class="rgi-content">
							<h5>FIFA ONLIEN4</h5>
							
							<a href="https://fifaonline4.nexon.com/main/index" class="comment"target="_blank">go to site</a>
							<div class="rgi-extra">
								<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
								<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="recent-game-item">
						<div class="rgi-thumb set-bg" data-setbg="img/recent-game/16.jpg">
							<div class="cata adventure">TOP3</div>
						</div>
						<div class="rgi-content">
							<h5>Maple Story</h5>
							
							<a href="https://maplestory.nexon.com/Home/Main" class="comment"target="_blank">go to site</a>
							<div class="rgi-extra">
								<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
								<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
							</div>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</section>
	<!-- Recent game section end -->


	


	<!-- Review section -->
	<section class="review-section spad set-bg" data-setbg="img/pattern.png">
		<div class="container">
			<div class="section-title">
				<div class="cata new ">new</div>
				<h2 class="text-white">PC방 점유율</h2>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/recent-game/13.jpg">
							<div class="score yellow">40.8%</div>
						</div>
						<div class="review-text">
							<h5 class="text-white">League of Legends</h5>
							<p>1ST</p>
							<p>PC방 점유율 1위</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/recent-game/17.jpg">
							<div class="score purple">10.4%</div>
						</div>
						<div class="review-text">
							<h5 class="text-white">FIFA ONLINE4</h5>
							<p>2ND</p>
							<p>PC방 점유율 2위</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/recent-game/15.jpg">
							<div class="score green">7.1%</div>
						</div>
						<div class="review-text">
							<h5 class="text-white">MAPLE STORY</h5>
							<p>3RD</p>
							<p>PC방 점유율 3위</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/recent-game/18.jpg">
							<div class="score pink">5.92%</div>
						</div>
						<div class="review-text">
							<h5 class="text-white">VALORANT</h5>
							<p>4TH</p>
							<p>PC방 점유율 4위</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Review section end -->


	<!-- Footer top section -->
	

	
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
