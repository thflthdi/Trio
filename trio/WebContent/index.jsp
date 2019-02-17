<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!--[if lte IE 8]> <html class="oldie" lang="en"> <![endif]-->
<!--[if IE 9]> <html class="ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="format-detection" content="telephone=no">
	<title>Trio Restaurant</title>
	<link rel="stylesheet" href="css/fancySelect.css" />
	<link rel="stylesheet" href="css/uniform.css" />
	<link rel="stylesheet" href="css/all.css" />
	<link media="screen" rel="stylesheet" type="text/css" href="css/screen.css" />
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
	<div id="wrapper">
		<div class="wrapper-holder">
			<header id="header">
				<span class="logo"><a href="index.jsp">Trio Restaurant</a></span>
				<ul class="tools-nav tools-nav-mobile">
					
						
						<% if(session.getAttribute("userID")==null){ %>
							
							<li class="login"><a href="login.html">Login</a> / <a href="register.html">register</a></li>
							
						<% }else{ %>
							<li class="items"><a href="cart1.jsp">
							<span><%
						   	out.print(session.getAttribute("total"));
							%></span> Items</a></li>
							<li class="login"><a href="myPage.jsp"><% out.print(session.getAttribute("userID")); %></a>
							/<a href="Logout.jsp">Logout</a></li>
						<% } %>
				</ul>
				<div class="bar-holder">
				<a class="menu_trigger" href="menu.jsp">menu</a>
					<nav id="nav">
						<ul>
							<li><a href="menu.jsp">menu</a></li>
							<li><a href="aboutus.jsp">about us</a></li>
							<li><a href="event/event.jsp">event</a></li>
							<li><a href="contact.jsp">contact</a></li>
							<li><a href="faq.jsp">FAQ</a></li>
						</ul>
					</nav>
					<ul class="tools-nav">
						
						<% if(session.getAttribute("userID")==null){ %>
							<li class="login"><a href="login.html">Login</a> / <a href="register.html">register</a></li>
							
						<% }else{ %>
							<li class="items"><a href="cart1.jsp">
							<span><%
						   	out.print(session.getAttribute("total"));
							%></span> Items</a></li>
							<li class="login"><a href="myPage.jsp"><% out.print(session.getAttribute("userID")); %></a>
							/<a href="Logout.jsp">Logout</a></li>
						<% } %>
							 
					</ul>
				</div>
			</header>
			<section class="promo">
				<ul class="slider">
					<li style="background: url(images/slide-01.jpg) no-repeat 50% 50%;">
						<div class="slide-holder">
							<div class="slide-info">
								<h1>���� �޴� ���캸��</h1>
								<p>main main main main main main main main main main main main main main main main main main main main main main main main main main main main main main main main main main main main main main main</p>
								<a class="btn white big" href="menu.jsp">See the collection</a>
							</div>
						</div>
					</li>
					<li style="background: url(images/slide-02.jpg) no-repeat 50% 50%;">
						<div class="slide-holder">
							<div class="slide-info">
								<h1>���� ��õ �޴�</h1>
								<p>recommend recommend recommend recommend recommend recommend recommend recommend recommend recommend recommend recommend recommend recommend recommend recommend recommend recommend recommend recommend </p>
								<a class="btn white big" href="chef.jsp">See the collection</a>
							</div>
						</div>
					</li>
					<li style="background: url(images/slide-03.jpg) no-repeat 50% 50%;">
						<div class="slide-holder">
							<div class="slide-info">
								<h1>���θ�� �޴�</h1>
								<p>promotion promotion promotion promotion promotion promotion promotion promotion promotion promotion promotion promotion promotion promotion promotion promotion promotion promotion promotion promotion </p>
								<a class="btn white big" href="event/event.jsp">See the collection</a>
							</div>
						</div>
					</li>
					<li style="background: url(images/slide-05.jpg) no-repeat 50% 50%;">
						<div class="slide-holder">
							<div class="slide-info">
								<h1>take out dessert</h1>
								<p>dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert dessert </p>
								<a class="btn white big" href="dessert.jsp">See the collection</a>
							</div>
						</div>
					</li>
				</ul>
			</section>
			<section id="main">
				<div class="boxes">
					<div class="box">
						<a href="event/event.jsp">
							
							<img src="images/img-01.jpg" alt="" />
							<div class="box-info">
								<div class="box-info-holder">
									<span class="title"><span>New evnet</span></span>
									<h2>new event coming soon</h2>
									<span class="btn white normal">More new evnets</span>
								</div>
							</div>
						</a>
					</div>
					<div class="box">
						<a href="contact.jsp">
							
							<img src="images/img-02.jpg" alt="" />
							<div class="box-info">
								<div class="box-info-holder">
									<span class="title"><span>���ô±�</span></span>
									<h2>Welcome to Restaurant</h2>
									<span class="btn white normal">GO~GO</span>
								</div>
							</div>
						</a>
					</div>
					<div class="box">
						<a href="faq.jsp">
							
							<img src="images/img-03.jpg" alt="" />
							<div class="box-info">
								<div class="box-info-holder">
									<span class="title"><span>FAQ</span></span>
									<h2>Ask me anything</h2>
									<span class="btn white normal">question</span>
								</div>
							</div>
						</a>
					</div>
				</div>
				
			</section>
		</div>
		
		
		<footer id="footer">
			<div class="footer-holder">
				<div class="footer-frame">
					<div class="footer-content">
						<div class="col-holder">
							
							<div class="col">
								<div class="heading">
									<h3>Contact</h3>
								</div>
								<address>
									<p><strong>Trio restaurant</strong></p>
									<p>Korea</p>
								</address>
								<address>
									<p>010 4334 5174</p>
									<p><a href="mailto:office@elegantic.com">thflthdi@naver.com</a></p>
								</address>
							</div>
							<div class="col col-contact">
								<div class="heading">
									<h3>Follow us</h3>
								</div>
								<ul class="social">
									<li class="facebook"><a href="#">Facebook</a></li>
									<li class="google"><a href="#">Google+</a></li>
									<li class="twitter"><a href="#">Twitter</a></li>
									<li class="pinterest"><a href="#">Pinterest</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="footer-bottom">
						<div class="holder">
							<p>Thank you</p>
						</div>
					</div>
				</div>
			</div>
		</footer>	
	</div>
	
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="js/jquery.placeholder.js"></script>
	<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="js/fancySelect.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>