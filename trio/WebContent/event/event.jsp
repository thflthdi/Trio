<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!--[if lte IE 8]> <html class="oldie" lang="en"> <![endif]-->
<!--[if IE 9]> <html class="ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->
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
	<link rel="stylesheet" href="../css/fancySelect.css" />
	<link rel="stylesheet" href="../css/uniform.css" />
	<link rel="stylesheet" href="../css/all.css" />
	<link media="screen" rel="stylesheet" type="text/css" href="../css/screen.css" />
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
	<div id="wrapper">
		<div class="wrapper-holder">
			<header id="header">
				<span class="logo"><a href="../index.jsp">Trio Restaurant</a></span>
				<ul class="tools-nav tools-nav-mobile">
					<li class="items"><a href="../cart.jsp"><span>2</span> Items, <strong>$599.00</strong></a></li>
					<% if(session.getAttribute("userID")==null){ %>
					
							<li class="login"><a href="../login.html">Login</a> / <a href="../register.html">register</a></li>
							
						<% }else{ %>
							<li class="login"><a href="../myPage.jsp"><% out.print(session.getAttribute("userID")); %></a>
							/<a href="../Logout.jsp">Logout</a></li>
						<% } %>
				</ul>
				<a class="menu_trigger" href="#">menu</a>
				<div class="bar-holder">
					<nav id="nav">
						<ul>
							<li><a href="../menu.jsp">menu</a></li>
							<li><a href="../aboutus.jsp">about us</a></li>
							<li><a href="../event.jsp">event</a></li>
							<li><a href="../contact.jsp">contact</a></li>
							<li><a href="../faq.jsp">FAQ</a></li>
						</ul>
					</nav>
					<ul class="tools-nav">
						<li class="items"><a href="cart.jsp"><span>2</span> Items, <strong>$599.00</strong></a></li>
						<% if(session.getAttribute("userID")==null){ %>
					
							<li class="login"><a href="../login.html">Login</a> / <a href="../register.html">register</a></li>
							
						<% }else{ %>
							<li class="login"><a href="../myPage.jsp"><% out.print(session.getAttribute("userID")); %></a>
							/<a href="../Logout.jsp">Logout</a></li>
						<% } %>
					</ul>
				</div>
			</header>
			<section class="bar">
				<div class="bar-frame">
					<ul class="breadcrumbs">
						<li><a href="../index.jsp">Home</a></li>
						<li>event</li>
					</ul>
				</div>
			</section>
			<section id="main">
				<div class="top-bar">
					<!-- <ul class="paging">
						<li class="prev"><a href="#">prev</a></li>
						<li><a href="#">1</a></li>
						<li class="active"><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li class="next"><a href="#">next</a></li>
					</ul> -->
					<!-- <form class="form-sort" action="#">
						<fieldset>
							<div class="row">
								<label for="sort">Sort by :</label>
								<select id="sort">
									<option value="today">오늘의 메뉴</option>
									<option value="chef">셰프 추천 메뉴</option>
									<option value="side">사이드 메뉴<option>
									<option value="dinner">스페셜 디너 메뉴</option>
								</select>
							</div>
						</fieldset>
					</form> -->
				</div>
				<!-- <ul class="item-list">
				<li>
						<div class="item">
							<div class="image">
								<a href="eventboard.jsp"><img src="../images/event1.png"/></a>
								
							</div>
						</div>
						<span class="name">응원의 메시지를 쓰면</span><br>
						<span>2019.01.01 ~</span>
				</li>
				
				</ul> -->
				<hr>
				<table align="center" border="0">
			
				<tr>
					
					<td style="text-align:center;padding:10px;">
					<a href="eventboard.jsp"><img src="../images/event1.png"/ width="500px"></a>
								
					</td>
					<td style="padding:10px;text-align:center;">
					<br>응원의 메시지를 쓰면 개발자가 힘이나요!<br>
						<span>이벤트 기간 : 2019.01.01 ~</span>
						</td>
				</tr>
				
				</table>
				<hr>
				
				<!-- <div class="top-bar top-bar-add">
					<ul class="paging">
						<li class="prev"><a href="#">prev</a></li>
						<li><a href="#">1</a></li>
						<li class="next"><a href="#">next</a></li>
					</ul>
				</div> -->
			</section>
		</div>
		
		</form>
		<footer id="footer">
			<div class="footer-holder">
				<div class="footer-frame">
					<div class="footer-content">
						<div class="col-holder">
							<div class="col">
								<div class="heading">
									<h3>About us</h3>
								</div>
								<p>Vero eos et accusamus et iusto dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti</p>
								<p>Quos dolores et quas molestias excepturi sint occaecati cupiditate.</p>
							</div>
							<div class="col">
								<div class="heading">
									<h3>Contact</h3>
								</div>
								<address>
									<p><strong>Elegantic Inc.</strong></p>
									<p>1041 Madison Ave,</p>
									<p>New York</p>
								</address>
								<address>
									<p>(45) 523 565 242</p>
									<p><a href="mailto:office@elegantic.com">office@elegantic.com</a></p>
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
							<p>Copyright 2014 Elegantic. All rights reserved.</p>
						</div>
					</div>
				</div>
			</div>
		</footer>	
	</div>
	
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="../js/jquery.placeholder.js"></script>
	<script type="text/javascript" src="../js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="../js/fancySelect.js"></script>
	<script type="text/javascript" src="../js/main.js"></script>
</body>
</html>