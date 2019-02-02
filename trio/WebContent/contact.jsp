<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!--[if lte IE 8]> <html class="oldie" lang="en"> <![endif]-->
<!--[if IE 9]> <html class="ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta charset="UTF-8">
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
			<section class="bar">
				<div class="bar-frame">
					<ul class="breadcrumbs">
						<li><a href="index.jsp">Home</a></li>
						<li>contact</li>
					</ul>
				</div>
			</section>
			<section id="main">
				<div class="top-bar">
				<br><br>
				<table>
				<tr>
					<td width=110 style="border-bottom: 2px solid #000;">
					<h3 style="color:#000">오시는 길</h3>
					</td >
					<td width=1100 style="border-bottom: 1px solid #BDBDBD;"></td>
				</tr>
				</table>
				<center>
				<br><br>
				<table cellpadding="0" cellspacing="0" width="402"> <tr> <td style="border:1px solid #cecece;">
				<a href="https://map.naver.com/?searchCoord=0f2971996a373f3860e1cf50c60254b9a27c6671b3be2f6d63ff7dc616d7c0f9&query=6rK96riw64%2BEIOyaqeyduOyLnCDsspjsnbjqtawg7Y%2Bs6rOh7J2NIO2PrOqzoeuhnCAxMTjrsojquLg%3D&tab=1&lng=2a28b05f8cd242d8bd9d77467fe545ea&mapMode=0&mpx=7d58925b9bd544f44b454bd85bb784f6295fd0587d2bfa8b9544711ee245ac33781c33e43426d45df182dedab6843935c03087002e8dd2ea888d35f61b0d72be&lat=8f92562520ebcb0c46cee76e4618822b&dlevel=3&enc=b64&menu=location&rpanel=n-f" target="_blank">
				<img src="http://prt.map.naver.com/mashupmap/print?key=p1547735432842_1095036846" width="400" height="200" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"/></a></td> </tr> 
				</table>
				</center>
				<br><br>
				<hr style="border:0;height:1px;background: #BDBDBD;">
				<table border=0>
				<tr style="text-align:center;">
					<td style="text-align:center;padding:20px;">
					<h4 style="color:#5D5D5D;">영업시간</h4>
					</td>
					<td  style="text-align:center;padding:20px;">
					<h4 style="color:#BDBDBD;">하고 싶을 때</h4>
					</td>
					<td  style="text-align:center;padding:20px;">
					<h4 style="color:#5D5D5D;">00:00 ~ 00:00</h4>
					</td>
				</tr>
				</table>
				
				<hr style="border:0;height:1px;background: #BDBDBD;">
				<table border=0>
				<tr style="text-align:center;">
					<td style="text-align:center;padding:20px;">
					<h4 style="color:#5D5D5D;">전화번호</h4>
					</td>
					<td  style="text-align:center;padding:20px;">
					<h4 style="color:#5D5D5D;">012-3456-7890</h4>
					</td>
				</tr>
				</table>
				<hr style="border:0;height:1px;background: #BDBDBD;">
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
	<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="js/jquery.placeholder.js"></script>
	<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="js/fancySelect.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>